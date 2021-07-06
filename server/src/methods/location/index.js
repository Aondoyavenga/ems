import db from "../../db.js";
import createdAt from "../../middleware/createdAt.js";

const get_All_Locations =(req, res) =>{
    const query = 'SELECT * FROM location';
    db.query(query, (error, result) =>{
        if(error) return res.status(404).send(error.message);
        res.status(200).send(result)
    })
}

const create_Location = (req, res) =>{
    const {id} = req.user
    const {name} = req.body
    const query = `INSERT INTO location
        (name, createdAt, createdBy_FK)
        VALUES('${name}', '${createdAt}', '${id}')
    `
    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);
        res.status(202).send({message: `${result.insertId} Created`})
    })
}

const LOCATION = {
    create_Location,
    get_All_Locations
}

export default LOCATION