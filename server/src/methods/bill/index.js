import db from "../../db.js";
import createdAt from "../../middleware/createdAt.js";

const get_All_Bill_Categories = (req, res) =>{
    const query = `SELECT * FROM bill_category`;

    db.query(query, (error, result) =>{
        if(error) return res.status(404).send(error.message);
        res.status(200).send(result)
    })
}


const get_All_Bill_By_User = (req, res) =>{
    const { id } = req.user; 
    const query = `SELECT * FROM bill_model WHERE createdBy_FK =?
        AND status =?
    `;
    db.query(query, [id, 0], (error, result) =>{
        if(error) return res.status(404).send(error.message);
        res.status(200).send(result)
    })
}

const create_Bill_Category = (req, res) =>{
    const VALUES = req.body
    const query = `INSERT INTO bill_category
        (name, vendor_FK, createdBy_FK, createdAt)
        VALUES?
    `;
  
    db.query(query, [VALUES], (error, result) =>{
        if(error) return res.status().send(error.message, error.name);
        res.status(201).send({message: `Created`})
    } )
}

const create_Bill_Items = (VAUES) =>{
   
    let success
    const query =`INSERT INTO bill_itemsmodel (
       bill_FK, amount, description, bill_ID,  createdAt
    )
    VALUES ?`;
    db.query(query, [VAUES], (error, result) =>{
        if (error) return console.error(error.message);
        success = result
    })
    return success
}

const create_Bill = (req, res) =>{
    const { id } = req.user
    const { vendor_FK, bill_date,
    due_date, total, VALUES, uuid, 
        bill_term
    } = req.body;
    console.log(req.body)
    const query = `INSERT INTO bill_model(
                    uuid, vendor_FK, bill_date, due_date, amount, 
                    createdBy_FK, createdAt, bill_term
                    )
                    VALUES ('${uuid}', '${vendor_FK}', '${bill_date}',
                    '${due_date}', '${total}', '${id}', '${createdAt}', '${bill_term}')
     `;
    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);

        create_Bill_Items(VALUES)
       
        res.status(201).send({message: `${uuid} bill Created`})
        
    })
}

const BILL ={
    create_Bill,
    create_Bill_Category,
    get_All_Bill_By_User,
    get_All_Bill_Categories,
}

export default BILL;