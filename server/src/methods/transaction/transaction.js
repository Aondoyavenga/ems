import { v4 } from 'uuid'
import db from '../../db.js';
import createdAt from '../../middleware/createdAt.js';

const TX = async (data, postBy_FK) =>{
    const {rcpt_no, tx_type, paid,
        pay_method, amount, description,
        account_FK, signature, amount_in_words} = data
    const query = `
        INSERT INTO transactionmodel
        (
            uuid, rcpt_no, tx_type, paid,
            pay_method, amount, amount_in_words, description,
            account_FK, tx_date, postBy_FK, signature, createdAt
        )
        VALUES (
            '${v4()}', '${rcpt_no}', '${tx_type}', '${paid}', '${pay_method}', '${amount}', '${amount_in_words}',
            '${description}', '${account_FK}', '${createdAt}', '${postBy_FK}', '${signature}', '${createdAt}'
        )
    `;
    await db.query(query, (error, result) =>{
        if(error) return(error.message);
           
       return (`inserted: ${result}`)
    })
    return true
}

export default TX;

