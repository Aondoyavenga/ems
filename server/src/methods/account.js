import db from '../db.js'
import createdAt from '../middleware/createdAt.js'
import { uuid } from 'uuidv4'


const get_All_Accounts_Transaction = (req, res) =>{
    const {username} = req.user
    const {code} = req.params
    console.log(username, code)
    const query = `
        SELECT account_accountmodel.name, account_accountmodel.balance_type,
        transactionmodel.description, transactionmodel.tx_type, 
        transactionmodel.pay_method, transactionmodel.amount, transactionmodel.tx_date
        FROM account_accountmodel
        JOIN transactionmodel ON(transactionmodel.account_FK=account_accountmodel.code)
        WHERE transactionmodel.account_FK=? AND transactionmodel.postBy_FK=? AND account_accountmodel.locked=?
    `;

    db.query(query, [code, username, 0], (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })
}

const get_All_Accounts = (req, res) =>{
    const query = `SELECT id, code, name, balance_type, acc_type, locked, active FROM account_accountmodel`;
    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })
}

const get_All_Asset_Account = (req, res) =>{
    const query = `SELECT * FROM account_accountmodel WHERE acc_type LIKE ?`;
    db.query(query, ['%asset_%'], (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })
}

const get_All_Liability_Account = (req, res) =>{
    const query = `SELECT * FROM account_accountmodel WHERE acc_type LIKE ?`;
    db.query(query, ['%lia_%'], (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })
}

const get_All_Equity_Account = (req, res) =>{
    const query = `SELECT * FROM account_accountmodel WHERE acc_type LIKE ? OR 
                    acc_type LIKE ? OR acc_type LIKE ? OR acc_type LIKE ?`;
    db.query(query, ['%eq_%', '%in_%', '%exp_%', '%ex_%'], (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })
}

const createAccount = (req, res) =>{
    const { id } = req.user
    // return console.log(req.body)
    const code = new Date().getSeconds().toLocaleString() + new Date().getMinutes().toLocaleString()+new Date().getMilliseconds()
    const { name, active, locked, acc_type, balance_type } = req.body
    const query = `INSERT INTO account_accountmodel 
                    (uuid,name, code, active, locked, acc_type, balance_type, createdAt, createdBy_FK) 
                    VALUES('${uuid()}', '${name}', '${code}', '${active}', '${locked}', '${acc_type}', 
                    '${balance_type}', '${createdAt}', '${id}')`;
    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);
        res.status(201).send({message: `${name} Created`})
    })
}



const ACCOUNT ={
    createAccount,
    get_All_Accounts,
    get_All_Asset_Account,
    get_All_Equity_Account,
    get_All_Liability_Account,
    get_All_Accounts_Transaction,
}
export default ACCOUNT

