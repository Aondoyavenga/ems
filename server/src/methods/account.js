import db from "../db.js";
import createdAt from "../middleware/createdAt.js";
import { v4 } from "uuid";

const get_All_Accounts_Transaction = (req, res) => {
  const { code } = req.params;
  const query = `
        SELECT account_accountmodel.name, account_accountmodel.balance_type,
        transactionmodel.description, transactionmodel.tx_type,transactionmodel.account_FK,
        transactionmodel.pay_method, transactionmodel.amount, transactionmodel.tx_date
        FROM account_accountmodel
        JOIN transactionmodel ON(transactionmodel.account_FK=account_accountmodel.code)
        WHERE transactionmodel.account_FK=? AND account_accountmodel.locked=?
        ORDER BY name ASC
    `;

  db.query(query, [code, 0], (error, result) => {
    if (error) return console.error(error.message);
    res.status(200).send(result);
  });
};

const get_All_Accounts = (req, res) => {
  const query = `SELECT id, cusID, code, name, balance_type, acc_type, locked, active FROM account_accountmodel ORDER BY name ASC`;
  db.query(query, (error, result) => {
    if (error) return console.error(error.message);
    res.status(200).send(result);
  });
};

const handle_Search_Accounts = (req, res) => {
  const { key } = req.params;
  const query = `SELECT id, code, name, balance_type, acc_type, locked, active FROM account_accountmodel
        WHERE name LIKE ? OR code LIKE ? ORDER BY name ASC
    `;
  db.query(query, [`%${key}%`, `%${key}%`], (error, result) => {
    if (error) return console.error(error.message);
    res.status(200).send(result);
  });
};

const get_All_Asset_Account = (req, res) => {
  const query = `SELECT * FROM account_accountmodel WHERE acc_type LIKE ? ORDER BY name ASC`;
  db.query(query, ["%asset_%"], (error, result) => {
    if (error) return console.error(error.message);
    res.status(200).send(result);
  });
};

const get_All_Liability_Account = (req, res) => {
  const query = `SELECT * FROM account_accountmodel WHERE acc_type LIKE ? ORDER BY name ASC`;
  db.query(query, ["%lia_%"], (error, result) => {
    if (error) return console.error(error.message);
    res.status(200).send(result);
  });
};

const get_All_Equity_Account = (req, res) => {
  const query = `SELECT * FROM account_accountmodel WHERE acc_type LIKE ? OR 
                    acc_type LIKE ? OR acc_type LIKE ? OR acc_type LIKE ? ORDER BY name ASC`;
  db.query(query, ["%eq_%", "%in_%", "%exp_%", "%ex_%"], (error, result) => {
    if (error) return console.error(error.message);
    res.status(200).send(result);
  });
};

const handle_Account_Update = (req, res) => {
  const { username } = req.user;
  const { id } = req.params;
  const { name, code, active, locked, acc_type, account, balance_type } =
    req.body;
  if (!id) return res.status(404).send({ message: "Change made" });
  const query = `UPDATE account_accountmodel set name=?,code=?, active=?, locked=?, 
                acc_type=?, balance_type=?, edited_By=? WHERE id=?`;
  db.query(
    query,
    [name, code, active, locked, acc_type, balance_type, username, id],
    (error, result) => {
      if (error) return res.status(404).send(error.message);
      res.status(201).send({ message: `${name} updated` });
    }
  );
};

const createAccount = (req, res) => {
  const { id } = req.user;
  // return console.log(req.body)
  const code =
    new Date().getSeconds().toLocaleString() +
    new Date().getMinutes().toLocaleString() +
    new Date().getMilliseconds();
  const { name, active, locked, acc_type, balance_type } = req.body;
  const query = `INSERT INTO account_accountmodel 
                    (uuid,name, code, active, locked, acc_type, balance_type, createdAt, createdBy_FK) 
                    VALUES('${v4()}', '${name}', '${code}', '${active}', '${locked}', '${acc_type}', 
                    '${balance_type}', '${createdAt}', '${id}')`;
  db.query(query, (error, result) => {
    if (error) return console.error(error.message);
    res.status(201).send({ message: `${name} Created` });
  });
};

const ACCOUNT = {
  createAccount,
  get_All_Accounts,
  get_All_Asset_Account,
  get_All_Equity_Account,
  handle_Search_Accounts,
  handle_Account_Update,
  get_All_Liability_Account,
  get_All_Accounts_Transaction,
};
export default ACCOUNT;
