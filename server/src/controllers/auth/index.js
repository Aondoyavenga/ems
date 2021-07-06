import express from 'express'
import multer from 'multer'
import AUTH from '../../methods/auth.js'
import RequireToken from '../../middleware/RequireToken.js'
import StorageMiddleWare from '../../middleware/storageMiddleware.js';
const router = express.Router()


const upload = multer({storage: StorageMiddleWare});
let type = upload.single('photo');

router.get('/', RequireToken, AUTH.get_AllStaff)
router.get('/active', RequireToken, AUTH.get_Active_User)
router.post('/signature/:id', RequireToken, type, AUTH.upload_Signature)
router.post('/edit/:userID', RequireToken, AUTH.update_Staff)
router.post('/', RequireToken, AUTH.create__Staff)
router.post('/login', AUTH.staff__Login)

const AUTH_ROUTER = {
    router
}

export default AUTH_ROUTER