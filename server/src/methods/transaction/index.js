import db from "../../db.js";
import TX from "./transaction.js";
import { uuid } from 'uuidv4'
import createdAt from '../../middleware/createdAt.js';

const get_Running_Sales = (req, res) =>{
    const query = `
        SELECT account_accountmodel.name, account_accountmodel.code, account_accountmodel.cusID, sales_model.uuid, sales_model.amount, sales_model.amount_paid, sales_model.due_date  FROM account_accountmodel
        JOIN sales_model ON(account_accountmodel.cusID = sales_model.applicant)
        WHERE sales_model.status=? AND sales_model.md_status=?
    `;

    db.query(query, [0, 0], (error, result) =>{
        if(error) return res.status(404).send(error.message);
        res.status(200).send(result)
    })
}

const get_All_Repayment_Scheldules = (req, res) =>{
    const y = new Date().getFullYear()
    const m = new Date().getMonth()+1
    const d = new Date().getDate()
    const due_date = y+'-'+(m<=9? '0'+m: m)+'-'+(d<=9? '0'+d: d);
    const query = `
        SELECT sales_model.uuid,sales_model.applicant, sales_model.property_name, sales_model.amount, sales_model.amount_paid, sales_model.applicant_name, sales_model.due_date,
        sales_scheldule_model.date, sales_scheldule_model.amount AS due_amount FROM sales_model
        JOIN sales_scheldule_model ON(sales_model.uuid = sales_scheldule_model.sale_uuid)
        WHERE sales_scheldule_model.date<=? AND sales_scheldule_model.status=?
    `;
    db.query(query, [due_date, 0], (error, result) =>{
        if(error) return res.status(404).send(error.message);
        // console.log(result)
        res.status(200).send(result)
    })
}

const get_All_Transactions_By_User = (req, res) =>{
    const {id} = req.user
    const query = `
        SELECT * FROM transactionmodel WHERE postBy_FK =?
    `;
    db.query(query, [id], (error, result) =>{
        if(error) return res.status(404).send(error.message);
        res.status(200).send(result)
    })
}

const get_All_Transactions = (req, res) =>{
    const {id} = req.user
    const query = `
        SELECT * FROM transactionmodel
    `;
    db.query(query, (error, result) =>{
        if(error) return res.status(404).send(error.message);
        res.status(200).send(result)
    })
}


const upDate_Sales_Model = (amount, uuid) =>{
    const query = `
        UPDATE sales_model SET amount_paid ='${amount}' WHERE uuid ='${uuid}'
    `;
    db.query(query, (error, result) =>{
        if(error) return error.message;
        return result
    })
}

const upDate_Sale_Scheldule = (sale_uuid, date) =>{
    const y = new Date(date).getFullYear()
    const m = new Date(date).getMonth()+1
    const d = new Date(date).getDate()
    const due_date = y+'-'+(m<=9? '0'+m: m)+'-'+(d<=9? '0'+d: d);
    const query = `
        UPDATE sales_scheldule_model SET status =? WHERE sale_uuid =? AND date =?
    `;
    db.query(query, [1, sale_uuid, due_date], (error, result) =>{
        if(error) return error.message;
        return result
    })
}

const handle_Posting = async(req, res) =>{
    const { username } = req.user
    const {data} = req.body;
    const {amount_paid, amount, rcpt_no, due_date} = data
    const updateAmtPaid = parseInt(amount) + parseInt(amount_paid)
    
        TX(data, username)
        .then(result =>{
            // console.log(result)
            upDate_Sales_Model(updateAmtPaid, rcpt_no)
            // upDate_Sale_Scheldule(rcpt_no, due_date)
            res.status(201).send({message: `${rcpt_no} Posted`})
        })
        .catch(error =>{
            res.status(404).send(`error ${error}`)
        })
    
}

const TRANSACTION = {
    get_Running_Sales,
    handle_Posting,
    get_All_Transactions,
    get_All_Transactions_By_User,
    get_All_Repayment_Scheldules
}

export default TRANSACTION;