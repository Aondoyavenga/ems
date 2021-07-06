import db from "../../db.js";
import createdAt from "../../middleware/createdAt.js";
import TX from "../transaction/transaction.js";

const get_All_Expense_Categories = (req, res) =>{
    const query = `
        SELECT * FROM expense_category
    `;
    db.query(query, (error, result) =>{
        if(error) res.status(404).send(error.message);
        res.status(200).send(result)
    })
}

const get_All_Raised_Expense_User = (req, res) =>{
    const {id} = req.user;
    const query = `
        SELECT * FROM expense_model WHERE createdBy_FK =?
    `;
    db.query(query, [id], (error, result) =>{
        if(error) return res.status(404).send(error.message);
        res.status(200).send(result)
    })
}

const get_All_Raised_Expense = (req, res) =>{
    const query = `
        SELECT * FROM expense_model
    `;
    db.query(query, (error, result) =>{
        if(error) return res.status(404).send(error.message);
        res.status(200).send(result)
    })
}
const get_All_Raised_Expense_Items = (req, res) =>{
    const query = `
        SELECT * FROM expense_itemsmodel
    `;
    db.query(query, (error, result) =>{
        if(error) return res.status(404).send(error.message);
        res.status(200).send(result)
    })
}

const expense_Items = async(VALUES) =>{
    const query = `
        INSERT INTO expense_itemsmodel
        (expense_FK, amount, description, expense_ID, createdAt)
        VALUES ?
    `;
    await db.query(query, [VALUES], (error, result) =>{
        if(error) return console.error(error.message);
        return result
    })

    return true
}


const raise_Expense = (req, res) =>{
    const { id, username } = req.user;
    const {
        uuid, expense_date, total, VALUES,
        payee_account, payment_account, pay_method, description
    } = req.body;

    const query =`
        INSERT INTO expense_model
        (
            uuid, expense_date, amount,
            payee_account, payment_account,
            pay_method, createdBy_FK, createdAt
        )
        VALUES(
            '${uuid}', '${expense_date}', '${total}','${payee_account}',
            '${payment_account}', '${pay_method}', '${id}', '${createdAt}'
        )
    `;
    // DR payment account transaction post data
    const DRdata = {
        rcpt_no: uuid, tx_type: 'DR', paid: 1, account_FK: payment_account,
        pay_method: pay_method, amount: total, description: description,
        
    }

     //CR payee account transaction post data
     const CRdata = {
        rcpt_no: uuid, tx_type: 'CR', paid: 1, account_FK: payee_account,
        pay_method: pay_method, amount: total, description: description,
        
    }

    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);
        expense_Items(VALUES)
        .then(result)
        .then( TX(DRdata, username))
        .then( TX(CRdata, username))
        .then(result =>{
            res.status(201).send({message: `${uuid} Posted`})
        })
        
        .catch(error =>{
            res.status(404).send(error)
        })
    })
}

const create_Expense_Category = (req, res) =>{
    const { id } = req.user;
    const { name } = req.body;
    const query = `
        INSERT INTO expense_category
        (name, createdBy_FK, createdAt)
        VALUES ('${name}', '${id}', '${createdAt}')
    `;
    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);
        res.status(201).send({message: `${name} Created`})
    })
}


const EXPENSE = {
    raise_Expense,
    get_All_Raised_Expense,
    create_Expense_Category,
    get_All_Expense_Categories,
    get_All_Raised_Expense_User,
    get_All_Raised_Expense_Items 
}

export default EXPENSE;

// uuid, expense_date, amount,
// payee_account, payment_account,
// pay_method, createdBy_FK, createdAt