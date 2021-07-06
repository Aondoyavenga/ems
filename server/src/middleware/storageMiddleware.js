import multer from 'multer'

const StorageMiddleWare = multer.diskStorage({
    destination(req, file, callBack) {
        callBack(null, 'public/upload')
    },
    filename(req, file, callBack) {
        callBack(null, `${file.fieldname}_${Date.now()}_${file.originalname}`)
    },
})

export default StorageMiddleWare;