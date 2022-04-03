import express from 'express'
import VENDOR from '../../methods/vendor/index.js'
const router = express.Router()
import RequireToken from '../../middleware/RequireToken.js'

router.get('/', RequireToken, VENDOR.get_All_Vendors)
router.post('/', RequireToken, VENDOR.create_Vendor)


const VENDOR_ROUTER ={
    router
}

export default VENDOR_ROUTER