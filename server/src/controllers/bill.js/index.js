import express, { Router } from 'express';
import BILL from '../../methods/bill/index.js';
import RequireToken from '../../middleware/RequireToken.js';

const router = express.Router()

router.get('/', RequireToken, BILL.get_All_Bill_By_User)
router.get('/category', RequireToken, BILL.get_All_Bill_Categories);
router.post('/', RequireToken, BILL.create_Bill)
router.post('/category', RequireToken, BILL.create_Bill_Category)


const BILL_ROUTER = {
    router
}

export default BILL_ROUTER