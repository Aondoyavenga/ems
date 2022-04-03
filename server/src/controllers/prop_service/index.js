import express from 'express'
import PROP_SERVICE from '../../methods/prop_service/index.js'
import RequireToken from '../../middleware/RequireToken.js'
const router = express.Router()

router
    .get('/', RequireToken, PROP_SERVICE.get_All_Prop_Service)
    .get('/:id', RequireToken, PROP_SERVICE.get_Sold_Propties)
    .post('/:id', RequireToken, PROP_SERVICE.edit_Prop_Service)
    .get('/report/:id', RequireToken, PROP_SERVICE.get_Property_Report)
    .post('/', RequireToken, PROP_SERVICE.create_Prop_Service)

const PROP_SERVICE_ROUTER = {
    router
}

export default PROP_SERVICE_ROUTER