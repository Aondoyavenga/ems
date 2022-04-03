import { v4 } from 'uuid'
import db from '../../db.js';
import createdAt from '../../middleware/createdAt.js';

const get_Property_Report = (req, res) =>{
    const {id} = req.params
    const query =`
        SELECT sales_items_model.id, sales_items_model.qty, sales_items_model.amount, sales_items_model.plot_number, 
        location.name AS location, building_category.name AS buildCategory, sales_items_model.createdAt,
        prop_servicemodel.name, prop_servicemodel.quantity, customer_customermodel.customer_name
        FROM sales_items_model
        JOIN sales_model ON(sales_model.uuid = sales_items_model.sale_ID)
        JOIN prop_servicemodel ON(prop_servicemodel.id = sales_items_model.property)
        JOIN location on(location.id = sales_items_model.location)
        JOIN building_category ON(building_category.id = sales_items_model.building_category)
        JOIN customer_customermodel ON(customer_customermodel.id = sales_model.applicant)
        WHERE sales_items_model.property = ? ORDER BY customer_customermodel.customer_name ASC
    `;

    const queryTotalPay = `
        SELECT SUM(transactionmodel.amount) AS TotalPay

        FROM sales_items_model
        JOIN transactionmodel ON(transactionmodel.rcpt_no = sales_items_model.sale_ID)
        WHERE sales_items_model.property = ?
    `;
    db.query(query, [id], (error, result) =>{
        if(error) return res.status(404).send(error.message);
            db.query(queryTotalPay, [id], (err, total) =>{
                if(err) return res.status(404).send(err.message);
                res.status(200).send({result, total:total[0]})
            })
    })
}

const get_Sold_Propties = (req, res) =>{
    const { id } = req.params
    const query =`
    SELECT
    sales_items_model.id, sales_items_model.qty, sales_items_model.amount, 
    sales_items_model.plot_number, sales_model.sale_date, building_category.name AS building,
    sales_items_model.createdAt, customer_customermodel.customer_name,  sales_model.amount_paid  
    FROM sales_items_model
    JOIN sales_model
    ON sales_items_model.sale_ID = sales_model.uuid
    JOIN customer_customermodel
    ON sales_model.applicant = customer_customermodel.id
    JOIN building_category
    ON sales_items_model.building_category = building_category.id    
    WHERE sales_items_model.property =?
    `;

    db.query(query, [id], (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })
}

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
        sale_price, product_class, location,
        asset_account_FK, expense_acc_FK, income_acc_FK, vendor_FK
    } = req.body
    const query = `INSERT INTO prop_servicemodel 
                    (   uuid, ps_type, name, sku,
                        category, quantity, qty_athDate,
                        reorder_point, purchase_info, cost, description,
                        sale_price, createdAt, product_class, location,
                        asset_account_FK, createdBy_FK, expense_acc_FK, income_acc_FK, vendor_FK
                    )
                    VALUES ('${v4()}', '${ps_type}', '${name}', '${sku}', '${category}', '${quantity}', 
                    '${qty_athDate}', '${reorder_point}', '${purchase_info}', '${cost}', '${description}', '${sale_price}', 
                    '${createdAt}', '${product_class}', '${location}', '${asset_account_FK}', '${id}', '${expense_acc_FK}', '${income_acc_FK}', '${vendor_FK}')
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
            if(error) return res.status(404).send(error.message);
            res.status(201).send({message: `${name} Edited`})
    })
}

const PROP_SERVICE = {
    get_All_Prop_Service,
    create_Prop_Service,
    edit_Prop_Service,
    get_Sold_Propties,
    get_Property_Report,
}

export default PROP_SERVICE
