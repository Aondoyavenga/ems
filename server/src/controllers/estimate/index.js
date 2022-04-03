import express from 'express'
import ESTIMATE from '../../methods/estimate/index.js';
import RequireToken from '../../middleware/RequireToken.js';
const router = express.Router()

router.get('/:cus_FK', RequireToken, ESTIMATE.get_Open_Estimate)
router.post('/', RequireToken, ESTIMATE.create_Estimate)

const ESTIMATE_ROUTER = {
    router
}

export default ESTIMATE_ROUTER;