import db from '../../db.js';
import createdAt from '../../middleware/createdAt.js';


const get_Open_Estimate = (req, res) =>{
    const { id } = req.user
    const { cus_FK } = req.params
    const query = `
        SELECT uuid FROM estimate_model 
        WHERE customer_FK =? AND status =? AND createdBy_FK=? LIMIT 1
    `;
    db.query(query, [cus_FK, 0, id], (error, result) =>{
        if(error) return console.error(error.message);
        let data
        if(result.length >0) {
            const {uuid} = result[0]
            const query = `
            SELECT estimate_itemsmodel.item_FK, estimate_itemsmodel.description, 
            estimate_itemsmodel.qty, estimate_itemsmodel.rate,
            estimate_itemsmodel.amount, estimate_itemsmodel.estimate_ID,
            prop_servicemodel.id, prop_servicemodel.name, prop_servicemodel.ps_type,
            prop_servicemodel.sale_price,prop_servicemodel.asset_account_FK
            FROM estimate_itemsmodel
            JOIN prop_servicemodel ON( prop_servicemodel.id =estimate_itemsmodel.item_FK)
            WHERE estimate_itemsmodel.estimate_ID =?
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



const create_Estimate_Items = (VAUES) =>{
   
    let success
    const query =`INSERT INTO estimate_itemsmodel (
       item_FK, description, qty,  estimate_ID, createdAt, rate, amount
    )
    VALUES ?`;
    db.query(query, [VAUES], (error, result) =>{
        if (error) return console.error(error.message);
        success = result
    })
    return success
}

const create_Estimate = (req, res) =>{
    const { id } = req.user
    const { customer_FK, estimate_date,
        exp_date, total, VALUES, uuid
    } = req.body;
    // console.log(req.body)
    const query = `INSERT INTO estimate_model(
                    uuid, customer_FK, estimate_date, exp_date, amount, createdBy_FK, createdAt
                    )
                    VALUES ('${uuid}', '${customer_FK}', '${estimate_date}',
                    '${exp_date}', '${total}', '${id}', '${createdAt}')
     `;
    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);

        create_Estimate_Items(VALUES)
       
        res.status(201).send({message: `${uuid} Estimate Created`})
        
    })
}


const ESTIMATE = {
    create_Estimate,
    get_Open_Estimate
}

export default ESTIMATE;