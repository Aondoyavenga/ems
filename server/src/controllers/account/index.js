import express from 'express'
const router = express.Router()
import ACCOUNT from '../../methods/account.js'
import RequireToken from '../../middleware/RequireToken.js'

router.get('/', RequireToken, ACCOUNT.get_All_Accounts)
router.get('/tx/:code', RequireToken, ACCOUNT.get_All_Accounts_Transaction)
router.get('/asset', RequireToken, ACCOUNT.get_All_Asset_Account)
router.get('/liability', RequireToken, ACCOUNT.get_All_Liability_Account)
router.get('/equity', RequireToken, ACCOUNT.get_All_Equity_Account)
router.post('/', RequireToken, ACCOUNT.createAccount)


const ACCOUNT_ROUTER = {
    router
}

export default ACCOUNT_ROUTER