import db from '../db.js'
import createdAt from '../middleware/createdAt.js'
import { uuid } from 'uuidv4'
import VARABLES from '../middleware/varables.js';

const get_All_Customers =(req, res) =>{
    const query =`
    SELECT customer_customermodel.id, customer_customermodel.uuid,
    customer_customermodel.customer_name, customer_customermodel.address_1,
    customer_customermodel.phone_no, customer_customermodel.customer_email,
    customer_customermodel.customer_sex, customer_customermodel.customer_marital,
    customer_customermodel.country,customer_customermodel.customer_state,
    customer_customermodel.customer_address, customer_customermodel.postal_address,
    customer_customermodel.occupation, customer_customermodel.place_work,
    customer_customermodel.business_employer_name, customer_customermodel.avatar,
    customer_customermodel.next_kin_name, customer_customermodel.next_kin_addrss,
    customer_customermodel.next_kin_relate, customer_customermodel.active,
    customer_customermodel.hidden, customer_customermodel.createdAt,
    customer_customermodel.updatedAt, customer_customermodel.rm, customer_customermodel.createdBy_FK,
    account_accountmodel.code
    FROM customer_customermodel
    JOIN account_accountmodel ON(customer_customermodel.id = account_accountmodel.cusID)
    `;
    db.query(query, (error, result) =>{
        if(error) return  console.log(error.message);
        res.status(200).send(result)
    })
}

const createAccount = (name, cusID, id) =>{
    
    const d = new Date()
    const acc_type = 'lia_cl_acc_pay';
    const code = d.getSeconds().toLocaleString() + d.getMinutes().toLocaleString()+d.getMilliseconds()
    const query = `INSERT INTO account_accountmodel 
                    (uuid,name, code, active, locked, acc_type, balance_type, createdAt, createdBy_FK, cusID) 
                    VALUES('${uuid()}', '${name}', '${code}', '0', '0', '${acc_type}', 
                    'CR', '${createdAt}', '${id}', '${cusID}')`;
    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);
       return true
    })
}

const avatar_Upload = (req, res) => {
    const {id} = req.params
    const url = `${VARABLES.domain}${req.file.path}`

    const query = `UPDATE customer_customermodel SET avatar=? WHERE id=?`;
    db.query(query, [url, id], (error, result) =>{
        if(error) return console.error(error.message);
        res.status(201).send({message: 'Mandate Uploaded'})
    })
}

const create_Customer = (req, res) =>{
    const {id} = req.user
    const { customer_name, address_1, phone_no,
            customer_email, customer_sex, customer_marital,
            country, customer_state, customer_address, postal_address,
            occupation, place_work, business_employer_name, next_kin_name,
            next_kin_addrss, next_kin_relate, rm
        } = req.body
        // return console.log(req.body)
    const query = `INSERT INTO customer_customermodel
                (uuid, customer_name, address_1, phone_no,
                customer_email, customer_sex, customer_marital,
                country, customer_state, customer_address, postal_address,
                occupation, place_work, business_employer_name, next_kin_name,
                next_kin_addrss, next_kin_relate, createdAt, rm, createdBy_FK)
                
                VALUES('${uuid()}','${customer_name}', '${address_1}', '${phone_no}', '${customer_email}', 
                    '${customer_sex}', '${customer_marital}','${country}', '${customer_state}','${customer_address}', 
                    '${postal_address}','${occupation}', '${place_work}','${business_employer_name}', '${next_kin_name}',
                    '${next_kin_addrss}', '${next_kin_relate}', '${createdAt}', '${rm}', '${id}')`;
    db.query(query, (error, result) =>{
        if(error) return res.status(404).send(error.message);
        createAccount(customer_name, result.insertId, id)
        res.status(201).send({message: `${customer_name} Created`})
    })
}

const update_Customer = (req, res) =>{
    const {username} = req.user
    const {id} = req.params
    const {
        customer_name, address_1, phone_no,
        customer_email, customer_sex, customer_marital,
        country, customer_state, customer_address, postal_address,
        occupation, place_work, business_employer_name, next_kin_name,
        next_kin_addrss, next_kin_relate, rm
    } =req.body
    const query = `UPDATE customer_customermodel SET
        customer_name=?, address_1=?, phone_no=?,
        customer_email=?, customer_sex=?, customer_marital=?,
        country=?, customer_state=?, customer_address=?, postal_address=?,
        occupation=?, place_work=?, business_employer_name=?, next_kin_name=?,
        next_kin_addrss=?, next_kin_relate=?, rm=?, edited_By=? WHERE id=?
    `;

    db.query(query, [customer_name, address_1, phone_no,
        customer_email, customer_sex, customer_marital,
        country, customer_state, customer_address, postal_address,
        occupation, place_work, business_employer_name, next_kin_name,
        next_kin_addrss, next_kin_relate, rm, username, id], (error, result) =>{
            if(error) return console.error(error);
            res.status(201).send({message: `${customer_name} edited`})
        })
}

const CUSTOMER = {
    avatar_Upload,
    create_Customer,
    update_Customer,
    get_All_Customers
}

export default CUSTOMER

