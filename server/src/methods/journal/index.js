import db from '../../db.js';
import { v4 } from 'uuid';
import createdAt from "../../middleware/createdAt.js";
import MultiTX from '../transaction/multiTransaction.js';

const get_Posted_Journal_ByUser = (req, res) => {
    const {username} = req.user
    const query = `
        SELECT * FROM journal_model WHERE postedBy =?
    `;
    db.query(query, [username], (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })
}


const get_Posted_Journal = (req, res) => {
    const {username} = req.user
    const query = `
        SELECT * FROM journal_model WHERE
    `;
    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);
        res.status(200).send(result)
    })
}

const post_Journal = (req, res) =>{
    const {username} = req.user
    const { je_ID,name, total ,je_date, VALUES } =req.body
    const query = `
        INSERT INTO journal_model (
            uuid,je_ID,name, amount, je_date,postedBy, createdAt
        )
        VALUES ('${v4()}', '${je_ID}', '${name}', '${total}', '${je_date}', '${username}',
            '${createdAt}'
         )
    `;
    db.query(query, (error, result) =>{
        if(error) return console.error(error.message);
        MultiTX(VALUES)
        .then(result =>{
            res.status(201).send({message: `${je_ID} Posted`})
        })
        .catch(error =>{
            res.status(404).send(error)
        })
    })
}


const JOURNAL = {
    post_Journal,
    get_Posted_Journal,
    get_Posted_Journal_ByUser
}

export default JOURNAL;