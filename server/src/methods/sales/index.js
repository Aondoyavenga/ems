import db from "../../db.js";
import createdAt from "../../middleware/createdAt.js";

const get_All_Sales_Pending = (req, res) =>{
    const query = `SELECT * FROM sales_model WHERE status=? AND md_status=?`;
    db.query(query, [0, 0], (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })
}

const get_All_Sale_Scheldule = (req, res) =>{
    const {uuid} = req.params
    const query =`SELECT * FROM sales_scheldule_model WHERE sale_uuid=?`;
    db.query(query, [uuid], (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })
}

const get_Payment_History =(req, res) =>{
    const {uuid} = req.params
    
    const query = `
        SELECT sales_model.uuid, sales_model.amount, sales_model.applicant_name, sales_model.amount_paid, sales_model.applicant, 
        sales_model.due_date, transactionmodel.rcpt_no, transactionmodel.amount AS tx_amount, 
        transactionmodel.pay_method, transactionmodel.description, transactionmodel.tx_date FROM sales_model
        JOIN transactionmodel ON(transactionmodel.rcpt_no=sales_model.uuid)
        WHERE sales_model.status = 0 AND sales_model.uuid='${uuid}'
    `;
    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })
}

const get_All_Paid_On_Pay = (req, res) =>{
    const query = `
        SELECT * FROM sales_model  WHERE md_status=? AND(status=? OR status=? OR md_status=?)
    `;
    db.query(query, [1,0, 1, 1], (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })
}


const get_All_Sales = (req, res) =>{
    const query = `
        SELECT * FROM sales_model
    `;
    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })
}

const post_Sale_Scheldule = (VALUES) =>{
    const query = `INSERT INTO sales_scheldule_model
        (
            sale_uuid, applicant_name,
            amount,  period, date, property_name
        )
        VALUES ?
    `;
    db.query(query, [VALUES], (error, result) =>{
        if(error) return console.error(error.message);
        return true
    })
} 

const handleApproval = (req, res) =>{
    const { username } = req.user
    const {id} = req.body
//    return console.log(username)
    const query = `UPDATE sales_model SET status=?, md_status =?, md_session=?, md_date=? WHERE id=?`;
    db.query(query, [1, 1, username, createdAt, id], (error, result) =>{
        if(error) return console.error(error.message);
        res.status(201).send({message: 'Approved'})
    })
}

const create_Sale = (req, res) =>{
    const {id} = req.user;
    const {
        uuid, property_name,
        property, amount, period,
        applicant_name, build_category,
        sale_date, due_date, VALUES, applicant
    } = req.body;

    const query = `INSERT INTO sales_model
        (
            uuid, property_name,
            property, amount, period,
            applicant_name, build_category,
            sale_date, due_date, createdAt, createdBy_FK, applicant
        )
        VALUES(
            '${uuid}', '${property_name}', '${property}', '${amount}', 
            '${period}', '${applicant_name}', '${build_category}', '${sale_date}', 
            '${due_date}', '${createdAt}', '${id}', '${applicant}'
        )
    `;
    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);

        post_Sale_Scheldule(VALUES)
        res.status(201).send({message: `${uuid} Created`})
    })
}
const SALES = {
    get_All_Sales,
    create_Sale,
    handleApproval,
    get_All_Sales_Pending,
    get_All_Sale_Scheldule,
    get_Payment_History,
    get_All_Paid_On_Pay,
}

export default SALES
