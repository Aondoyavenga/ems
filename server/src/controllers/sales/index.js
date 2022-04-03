import express from 'express';
const router = express.Router();

import SALES from '../../methods/sales/index.js';
import RequireToken from '../../middleware/RequireToken.js';

router
    .get('/', RequireToken, SALES.get_All_Sales_Pending)
    .get('/all', RequireToken, SALES.get_All_Sales)
    .get('/scheldule/:uuid', RequireToken, SALES.get_All_Sale_Scheldule)
    .get('/payment_history/:uuid', RequireToken, SALES.get_Payment_History)
    .get('/report/:from/:to', RequireToken, SALES.get_Sale_Repayment_Report)
    .get('/paid_onpay', RequireToken, SALES.get_All_Paid_On_Pay)
    .post('/', RequireToken, SALES.create_Sale)
    .post('/edit', RequireToken, SALES.handle_Sale_Update)
    .post('/update', RequireToken, SALES.handleApproval)


const SALE_ROUTER = {
    router
}

export default SALE_ROUTER;