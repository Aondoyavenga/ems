import express from 'express'
import INVOICE from '../../methods/invoice/index.js'
import RequireToken from '../../middleware/RequireToken.js'
const router = express.Router()

router.get('/', RequireToken, INVOICE.get_All_Invoice_By_User)
router.get('/:uuid', RequireToken, INVOICE.get_ALL_Invoice_Items)
router.get('/open_invoice/:cus_FK', RequireToken, INVOICE.get_Customer_Open_Invoice)
router.post('/', RequireToken, INVOICE.create_Invoice)


const INVOICE_ROUTER = {
    router
}

export default INVOICE_ROUTER