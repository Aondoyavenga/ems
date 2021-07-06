import db from "../../db.js";
import createdAt from "../../middleware/createdAt.js";

const get_All_Build_Categories =(req, res) =>{
    const query = 'SELECT * FROM building_category';
    db.query(query, (error, result) =>{
        if(error) return res.status(404).send(error.message);
        res.status(200).send(result)
    })
}

const create_Build_Category = (req, res) =>{
    const {id} = req.user
    const {name} = req.body
    const query = `INSERT INTO building_category
        (name, createdAt, createdBy_FK)
        VALUES('${name}', '${createdAt}', '${id}')
    `
    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);
        res.status(201).send({message: `${name} Created`})
    })
}

const BUILD_CATEGORIES = {
    create_Build_Category,
    get_All_Build_Categories
}

export default BUILD_CATEGORIES