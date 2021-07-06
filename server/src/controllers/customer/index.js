import express from 'express'
import multer from 'multer'
const router = express.Router()
import CUSTOMER from '../../methods/customer.js'
import RequireToken from '../../middleware/RequireToken.js'
import StorageMiddleWare from '../../middleware/storageMiddleware.js';


const upload = multer({storage: StorageMiddleWare});
let type = upload.single('photo');

router.get('/', RequireToken, CUSTOMER.get_All_Customers)
router.post('/avatar/:id', RequireToken, type, CUSTOMER.avatar_Upload)
router.post('/:id', RequireToken, CUSTOMER.update_Customer)
router.post('/', RequireToken, CUSTOMER.create_Customer)

const CUSTOMER_ROUTER = {
    router
}

export default CUSTOMER_ROUTER