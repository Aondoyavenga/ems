import db from '../../db.js';
import createdAt from '../../middleware/createdAt.js';

const get_All_Invoice_By_User = (req, res) =>{
    const { id } = req.user; 
    const query = `SELECT * FROM invoice_model WHERE createdBy_FK =?
        AND status =?
    `;
    db.query(query, [id, 0], (error, result) =>{
        if(error) return res.status(404).send(error.message);
        res.status(200).send(result)
    })
}

const get_Customer_Open_Invoice = (req, res) =>{
    const { cus_FK } = req.params
    const query = `
        SELECT customer_customermodel.uuid, customer_customermodel.customer_name, customer_customermodel.phone_no, customer_customermodel.customer_email,
        invoice_model.uuid, invoice_model.amount, invoice_model.amount_paid, invoice_model.due_date
        FROM customer_customermodel
        JOIN invoice_model ON(customer_customermodel.id =invoice_model.id)
        WHERE customer_customermodel.id =? AND invoice_model.status =?
    `;
    db.query(query, [cus_FK, 0], (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })

} 

const get_ALL_Invoice_Items = (req, res) =>{
    const { id } = req.user
    const { uuid } = req.params
    const query = `
        SELECT uuid FROM invoice_model 
        WHERE uuid =? AND status =? AND createdBy_FK=? LIMIT 1
    `;
    db.query(query, [uuid, 0, id], (error, result) =>{
        if(error) return console.error(error.message);
        
        if(result.length >0) {
            const {uuid} = result[0]
            const query = `
            SELECT invoice_itemsmodel.item_FK, invoice_itemsmodel.description, 
            invoice_itemsmodel.qty, invoice_itemsmodel.rate,
            invoice_itemsmodel.amount, invoice_itemsmodel.invoice_ID,
            prop_servicemodel.id, prop_servicemodel.name, prop_servicemodel.ps_type,
            prop_servicemodel.sale_price,prop_servicemodel.asset_account_FK
            FROM invoice_itemsmodel
            JOIN prop_servicemodel ON( prop_servicemodel.id =invoice_itemsmodel.item_FK)
            WHERE invoice_itemsmodel.invoice_ID =?
            `;
            db.query(query, [uuid], (error, result) =>{
                if(error) return console.error(error.message);
                return res.status(200).send(result)
            })
           return
        }
       res.status(404).send({massage: 'not found'})
        
    })
}

const create_Invoice_Items = (VAUES) =>{
   
    let success
    const query =`INSERT INTO invoice_itemsmodel (
       item_FK, description, qty,  invoice_ID,  rate, amount, createdAt
    )
    VALUES ?`;
    db.query(query, [VAUES], (error, result) =>{
        if (error) return console.error(error.message);
        success = result
    })
    return success
}

const create_Invoice = (req, res) =>{
    const { id } = req.user
    const { customer_FK, invoice_date,
    due_date, total, VALUES, uuid, estimate_ID, 
        invoice_term, asset_account_FK
    } = req.body;
    console.log(req.body)
    const query = `INSERT INTO invoice_model(
                    uuid, customer_FK, invoice_date, due_date, amount, 
                    createdBy_FK, estimate_ID, asset_account_FK, createdAt, invoice_term
                    )
                    VALUES ('${uuid}', '${customer_FK}', '${invoice_date}',
                    '${due_date}', '${total}', '${id}', '${estimate_ID}', 
                    '${asset_account_FK}', '${createdAt}', '${invoice_term}')
     `;
    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);

        create_Invoice_Items(VALUES)
       
        res.status(201).send({message: `${uuid} Invoice Created`})
        
    })
}


const INVOICE = {
    create_Invoice,
    get_ALL_Invoice_Items,
    get_All_Invoice_By_User,
    get_Customer_Open_Invoice
}

export default INVOICE

