import db from '../../db.js';

const MultiTX = async (data) =>{
    const query = `
        INSERT INTO transactionmodel
        (
            account_FK, tx_type, paid, pay_method, amount,
            description, rcpt_no, tx_date,  postBy_FK, createdAt, uuid
             
        )
        VALUES ?
    `;
    await db.query(query, [data], (error, result) =>{
        if(error) return (error.message);
           
       return (`inserted: ${result}`)
    })
    return true
}

export default MultiTX;

