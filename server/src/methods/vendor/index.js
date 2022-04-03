
import { uuid } from 'uuidv4'
import db from '../../db.js';
import createdAt from '../../middleware/createdAt.js';


const get_All_Vendors = (req, res) =>{
    const query = `SELECT * FROM vendormodel`;
    db.query(query, (error, result) =>{
        if(error) return res.status(404).send(error.message);
        res.status(202).send(result)
    })
}

const create_Vendor = (req, res) =>{
    const {id} = req.user
    // return console.log(req.body)
    const {
        vendor_name, address_1, address_2,
        city, state, zip_code, country, email,
        website, phone, exp_account_FK
    } = req.body
    const query = `INSERT INTO vendormodel
                (uuid,
                    vendor_name, address_1, address_2,
                    city, state, zip_code, country, email,
                    website, phone, createdAt, createdBy_FK, exp_account_FK) 
                VALUES('${uuid()}', '${vendor_name}', '${address_1}', '${address_2}',
                        '${city}', '${state}', '${zip_code}', '${country}', '${email}',
                        '${website}', '${phone}', '${createdAt}', '${id}', '${exp_account_FK}')`;
    db.query(query, (error, result) =>{
        if(error) return res.status(404).send(error.message);
        res.status(201).send({message: `${vendor_name} Created`})
    })
}




const VENDOR = {
    get_All_Vendors,
    create_Vendor
}

export default VENDOR