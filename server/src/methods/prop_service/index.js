import { uuid } from 'uuidv4'
import db from '../../db.js';
import createdAt from '../../middleware/createdAt.js';



const get_All_Prop_Service = (req, res) =>{
    const query =`SELECT * FROM prop_servicemodel`;

    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })
}

const create_Prop_Service = (req, res) =>{
    const { id } = req.user
    const {
        ps_type, name, sku,
        category, quantity, qty_athDate,
        reorder_point, purchase_info, cost, description,
        sale_price, product_class,
        asset_account_FK, createdBy_FK, expense_acc_FK, income_acc_FK, vendor_FK
    } = req.body
    const query = `INSERT INTO prop_servicemodel 
                    (   uuid, ps_type, name, sku,
                        category, quantity, qty_athDate,
                        reorder_point, purchase_info, cost, description,
                        sale_price, createdAt, product_class,
                        asset_account_FK, createdBy_FK, expense_acc_FK, income_acc_FK, vendor_FK
                    )
                    VALUES ('${uuid()}', '${ps_type}', '${name}', '${sku}', '${category}', '${quantity}', 
                    '${qty_athDate}', '${reorder_point}', '${purchase_info}', '${cost}', '${description}', '${sale_price}', 
                    '${createdAt}', '${product_class}', '${asset_account_FK}', '${id}', '${expense_acc_FK}', '${income_acc_FK}', '${vendor_FK}')
    `;

    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);
        res.status(201).send({message: `${name} Added`})
    })

}

const edit_Prop_Service = (req, res) =>{
    const {username} = req.user
    const {
        cost, name, ps_type, category, location,
        quantity, description, sale_price, id
    } = req.body
    const query =`
    UPDATE prop_servicemodel SET
    cost=?, name=?, ps_type=?, category=?, location=?,
    quantity=?, description=?, sale_price=?, edited_By=? WHERE id =?
    `
    db.query(query, [cost, name, ps_type, category, location,
        quantity, description, sale_price, username, id], (error, result) =>{
            if(error) return console.error(error.message);
            res.status(201).send({message: `${name} Edited`})
    })
}

const PROP_SERVICE = {
    get_All_Prop_Service,
    create_Prop_Service,
    edit_Prop_Service
}

export default PROP_SERVICE
