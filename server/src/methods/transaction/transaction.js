import { v4 } from "uuid";
import db from "../../db.js";
import createdAt from "../../middleware/createdAt.js";

const TX = async (data, postBy_FK) => {
  const {
    rcpt_no,
    ticket_no,
    tx_type,
    paid,
    bank,
    pay_method,
    amount,
    description,
    account_FK,
    tx_date,
    property_FK,
    signature,
    amount_in_words,
  } = data;
  const query = `
        INSERT INTO transactionmodel
        (
            uuid, rcpt_no, ticket_no, tx_type, paid,
            pay_method, amount, amount_in_words, description,
            account_FK, bank, tx_date, postBy_FK, signature, property_FK, createdAt
        )
        VALUES (
            '${v4()}', '${rcpt_no}', '${ticket_no}', '${tx_type}', '${paid}', '${pay_method}', '${amount}', '${amount_in_words}',
            '${description}', '${account_FK}', '${bank}', '${tx_date}', '${postBy_FK}', '${signature}', '${property_FK}', '${createdAt}'
        )
    `;
    db.query(query, (error, result) => {
    if (error) return error.message;

    return `inserted: ${result}`;
  });
  return true;
};

export default TX;
