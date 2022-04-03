import db from "../../db.js";
import createdAt from "../../middleware/createdAt.js";
import TX from "../transaction/transaction.js";

const get_All_Expense_Categories = (req, res) => {
  const query = `
        SELECT * FROM expense_category ORDER BY name ASC
    `;
  db.query(query, (error, result) => {
    if (error) res.status(404).send(error.message);
    res.status(200).send(result);
  });
};

const get_All_Expense_Headings = (req, res) => {
  const query = `
    SELECT * FROM expense_heading ORDER BY name ASC
    `;
  db.query(query, (error, result) => {
    if (error) res.status(404).send(error.message);
    res.status(200).send(result);
  });
};

const get_All_Raised_By_Heading = (req, res) => {
  const {headid, from, to} = req.params
  if(!headid) return res.status(404).send({message: 'No Heanding Provided'})
  const query = `
      SELECT expense_itemsmodel.id, expense_itemsmodel.expense_ID, expense_model.expense_date, 
      expense_itemsmodel.amount, expense_model.payee_account, expense_model.payment_account,
       expense_model.pay_method, expense_category.name AS expense_FK, expense_itemsmodel.description,
      expense_heading.name AS heading
      FROM expense_itemsmodel
      
      JOIN expense_model ON (expense_model.uuid = expense_itemsmodel.expense_ID)
      JOIN expense_category ON (expense_category.id = expense_itemsmodel.expense_FK)
      
      JOIN expense_heading ON(expense_heading.id =  expense_model.head)
      
      WHERE expense_model.head =? OR expense_model.expense_date BETWEEN ? AND ? ORDER BY expense_category.name ASC
    `;
  db.query(query, [headid, from, to], (error, result) => {
    if (error) res.status(404).send(error.message);
    res.status(200).send(result);
  });
};

const get_All_Raised_Expense_User = (req, res) => {
  const { id } = req.user;
  const start_date = new Date(new Date().getFullYear(), 0, 1);
  const end_date = new Date(new Date().getFullYear(), 11, 1);

  const query = `
    SELECT expense_model.id,
    expense_model.uuid,
    expense_model.expense_date,
    expense_model.amount,
    expense_model.payee_account,
    expense_model.payment_account,
    expense_model.pay_method,
    expense_model.createdBy_FK,
    expense_model.createdAt,
    expense_model.updatedAt,
    auth_user.first_name, auth_user.last_name
    FROM expense_model 
    JOIN auth_user
    ON expense_model.createdBy_FK = auth_user.id
    ORDER BY updatedAt DESC
    `;
  db.query(query, [id, start_date, end_date], (error, result) => {
    if (error) return res.status(404).send(error.message);
    res.status(200).send(result);
  });
};

const get_All_Raised_Expense = (req, res) => {
  const query = `
    SELECT expense_model.id,
    expense_model.uuid,
    expense_model.expense_date,
    expense_model.amount,
    expense_model.payee_account,
    expense_model.payment_account,
    expense_model.pay_method,
    expense_model.createdBy_FK,
    expense_model.createdAt,
    expense_model.updatedAt,
    auth_user.first_name, auth_user.last_name
    FROM expense_model 
    JOIN auth_user
    ON expense_model.createdBy_FK = auth_user.id
    ORDER BY updatedAt DESC
    `;
  db.query(query, (error, result) => {
    if (error) return res.status(404).send(error.message);
    res.status(200).send(result);
  });
};
const get_All_Raised_Expense_Items = (req, res) => {
  const query = `
        SELECT * FROM expense_itemsmodel
    `;
  db.query(query, (error, result) => {
    if (error) return res.status(404).send(error.message);
    res.status(200).send(result);
  });
};

const expense_Items = async (VALUES) => {
  const query = `
        INSERT INTO expense_itemsmodel
        (expense_FK, amount, description, expense_ID, createdAt)
        VALUES ?
    `;
  await db.query(query, [VALUES], (error, result) => {
    if (error) return console.error(error.message);
    return result;
  });

  return true;
};

const get_Expense_Report = (req, res) => {
  const { from, to, headId } = req.params;
  const query = `
      SELECT expense_model.uuid, expense_model.expense_date, expense_model.amount, expense_model.payee_account, expense_model.payment_account,
      expense_model.pay_method, expense_category.name AS expense_FK, expense_itemsmodel.description, expense_itemsmodel.amount AS item_amount

      FROM expense_model
      JOIN expense_itemsmodel ON(expense_model.uuid = expense_itemsmodel.expense_ID)
      JOIN expense_category ON(expense_category.id = expense_itemsmodel.expense_FK)
      WHERE expense_model.expense_date BETWEEN ? AND ? ORDER BY expense_category.name
    `;

  db.query(query, [from, to, headId], (error, result) => {
    if (error) return res.status(404).send(error.message);
    res.status(200).send(result);
  });
};

const get_Expense_Heading_Report = (req, res) => {
  const { headId } = req.params;
  const query = `
    SELECT expense_model.uuid, expense_model.expense_date, expense_model.amount, expense_model.payee_account, expense_model.payment_account,
    expense_model.pay_method, expense_itemsmodel.expense_FK, expense_itemsmodel.description, expense_itemsmodel.amount AS item_amount

    FROM expense_model
    JOIN expense_itemsmodel ON
    expense_model.uuid = expense_itemsmodel.expense_ID
    WHERE expense_itemsmodel.expense_FK=? ORDER BY expense_model.updatedAt DESC
    `;

  db.query(query, [headId], (error, result) => {
    if (error) return res.status(404).send(error.message);
    res.status(200).send(result);
  });

}

const get_Expense_Heading_Periodic_Report = (req, res) => {
  const { headId, from, to } = req.params;
  const query = `
      SELECT expense_model.uuid, expense_model.expense_date, expense_model.amount, expense_model.payee_account, expense_model.payment_account,
      expense_model.pay_method, expense_itemsmodel.expense_FK, expense_itemsmodel.description, expense_itemsmodel.amount AS item_amount

      FROM expense_model
      JOIN expense_itemsmodel ON
      expense_model.uuid = expense_itemsmodel.expense_ID
      WHERE expense_itemsmodel.expense_FK=? OR expense_model.expense_date BETWEEN ? AND ? ORDER BY expense_model.updatedAt DESC
    `;

  db.query(query, [headId, from, to], (error, result) => {
    if (error) return res.status(404).send(error.message);
    res.status(200).send(result);
  });
};


const get_Exp_Analytic_Periodic_Report = (req, res) => {
  const { headId, from, to } = req.params;
  const query = `
      SELECT * FROM expense_itemsmodel WHERE createdAt BETWEEN ? AND ? ORDER BY createdAt  ASC
    `;

  db.query(query, [from, to], (error, result) => {
    if (error) return res.status(404).send(error.message);
    res.status(200).send(result);
  });
};

const raise_Expense = (req, res) => {
  const { id, username } = req.user;
  const {
    uuid,
    expense_date,
    total,
    VALUES,
    head,
    payee_account,
    payment_account,
    pay_method,
    description,
  } = req.body;

  const query = `
        INSERT INTO expense_model
        (
            uuid, expense_date, amount,
            payee_account, payment_account,
            pay_method, createdBy_FK, head, createdAt
        )
        VALUES(
            '${uuid}', '${expense_date}', '${total}','${payee_account}',
            '${payment_account}', '${pay_method}', '${id}', '${head}', '${createdAt}'
        )
    `;
  // DR payment account transaction post data
  const DRdata = {
    rcpt_no: uuid,
    tx_type: "DR",
    paid: 1,
    account_FK: payment_account,
    pay_method: pay_method,
    tx_date: expense_date,
    amount: total,
    description: description,
  };

  //CR payee account transaction post data
  const CRdata = {
    rcpt_no: uuid,
    tx_type: "CR",
    paid: 1,
    account_FK: payee_account,
    pay_method: pay_method,
    tx_date: expense_date,
    amount: total,
    description: description,
  };

  db.query(query, (error, result) => {
    if (error) return res.send(error.message);
    expense_Items(VALUES)
      .then(result)
      .then(TX(DRdata, username))
      .then(TX(CRdata, username))
      .then((result) => {
        res.status(201).send({ message: `${uuid} Posted` });
      })

      .catch((error) => {
        res.status(404).send(error);
      });
  });
};

const create_Expense_Category = (req, res) => {
  const { id } = req.user;
  const { name } = req.body;
  const query = `
        INSERT INTO expense_category
        (name, createdBy_FK, createdAt)
        VALUES ('${name}', '${id}', '${createdAt}')
    `;
  db.query(query, (error, result) => {
    if (error) return console.error(error.message);
    res.status(201).send({ message: `${name} Created` });
  });
};

const create_Expense_Heading = (req, res) => {
  const { id } = req.user;
  const { name } = req.body;
  const query = `
        INSERT INTO expense_heading
        (name, createdBy_FK, createdAt)
        VALUES ('${name}', '${id}', '${createdAt}')
    `;
  db.query(query, (error, result) => {
    if (error) return console.error(error.message);
    res.status(201).send({ message: `${name} Created` });
  });
};

const EXPENSE = {
  raise_Expense,
  get_Expense_Report,
  get_All_Raised_Expense,
  create_Expense_Category,
  create_Expense_Heading,
  get_All_Expense_Headings,
  get_All_Expense_Categories,
  get_All_Raised_Expense_User,
  get_All_Raised_Expense_Items,
  get_Expense_Heading_Report,
  get_All_Raised_By_Heading,
  get_Exp_Analytic_Periodic_Report,
  get_Expense_Heading_Periodic_Report
};

export default EXPENSE;
