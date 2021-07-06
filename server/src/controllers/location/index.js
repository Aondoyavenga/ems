import express from 'express'
import LOCATION from '../../methods/location/index.js'
import RequireToken from '../../middleware/RequireToken.js'
const router = express.Router()


router.get('/', RequireToken, LOCATION.get_All_Locations);
router.post('/', RequireToken, LOCATION.create_Location);

const LOCATION_ROUTER = {
    router
}

export default LOCATION_ROUTER;