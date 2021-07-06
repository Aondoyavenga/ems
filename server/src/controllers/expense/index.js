import express from 'express';
import EXPENSE from '../../methods/expense/index.js';
import RequireToken from '../../middleware/RequireToken.js';

const router = express.Router()

router.get('/', RequireToken, EXPENSE.get_All_Raised_Expense)
router.get('/items', RequireToken, EXPENSE.get_All_Raised_Expense_Items)
router.get('/categories', RequireToken, EXPENSE.get_All_Expense_Categories);
router.get('/user', RequireToken, EXPENSE.get_All_Raised_Expense_User)
router.post('/category', RequireToken, EXPENSE.create_Expense_Category)
router.post('/', RequireToken, EXPENSE.raise_Expense)


const EXPENSE_ROUTER = {
    router
}

export default EXPENSE_ROUTER