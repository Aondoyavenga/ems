import express from 'express';
const router = express.Router();

import SALES from '../../methods/sales/index.js';
import RequireToken from '../../middleware/RequireToken.js';

router.get('/', RequireToken, SALES.get_All_Sales_Pending);
router.get('/all', RequireToken, SALES.get_All_Sales)
router.get('/scheldule/:uuid', RequireToken, SALES.get_All_Sale_Scheldule);
router.get('/payment_history/:uuid', RequireToken, SALES.get_Payment_History);
router.get('/paid_onpay', RequireToken, SALES.get_All_Paid_On_Pay);
router.post('/', RequireToken, SALES.create_Sale);
router.post('/update', RequireToken, SALES.handleApproval);


const SALE_ROUTER = {
    router
}

export default SALE_ROUTER;