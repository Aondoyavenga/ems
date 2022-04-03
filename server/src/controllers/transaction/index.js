import express from 'express'
import TRANSACTION from '../../methods/transaction/index.js';
import RequireToken from '../../middleware/RequireToken.js';
const router = express.Router()

router
    .get('/', RequireToken, TRANSACTION.get_All_Transactions)
    .get('/accounts', RequireToken, TRANSACTION.get_Running_Sales)
    .get('/user', RequireToken, TRANSACTION.get_All_Transactions_By_User)
    .get('/today', RequireToken, TRANSACTION.get_Todays_Transactions_By_User)
    .get('/scheldules', RequireToken, TRANSACTION.get_All_Repayment_Scheldules)
    .post('/', RequireToken, TRANSACTION.handle_Posting)

const TRANSACTION_ROUTER = {
    router
}

export default TRANSACTION_ROUTER;