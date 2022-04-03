import express from 'express';
import EXPENSE from '../../methods/expense/index.js';
import RequireToken from '../../middleware/RequireToken.js';

const router = express.Router()

router
    .get('/', RequireToken, EXPENSE.get_All_Raised_Expense)
    .get('/heads', RequireToken, EXPENSE.get_All_Expense_Headings)
    .get('/group_head/:headid/:from/:to', RequireToken, EXPENSE.get_All_Raised_By_Heading)
    .get('/headings/:headId', RequireToken, EXPENSE.get_Expense_Heading_Report)
    .get('/head/:headId/:from/:to', RequireToken, EXPENSE.get_Expense_Heading_Periodic_Report)
    .get('/report/:from/:to', RequireToken, EXPENSE.get_Expense_Report)
    .get('/analytic/:from/:to', RequireToken, EXPENSE.get_Exp_Analytic_Periodic_Report)
    .get('/items', RequireToken, EXPENSE.get_All_Raised_Expense_Items)
    .get('/categories', RequireToken, EXPENSE.get_All_Expense_Categories)
    .get('/user', RequireToken, EXPENSE.get_All_Raised_Expense_User)
    .post('/heads', RequireToken, EXPENSE.create_Expense_Heading)
    .post('/category', RequireToken, EXPENSE.create_Expense_Category)
    .post('/', RequireToken, EXPENSE.raise_Expense)


const EXPENSE_ROUTER = {
    router
}

export default EXPENSE_ROUTER