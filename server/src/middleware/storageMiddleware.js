import multer from "multer";

const StorageMiddleWare = multer.diskStorage({
  destination(req, file, callBack) {
    //console.log(req.params);
    callBack(null, `public/upload`);
  },
  filename(req, file, callBack) {
    const { id, name } = req.params;
    callBack(
      null,
      `${file.fieldname}_${Date.now()}_${id}_${name}_${file.originalname}`
    );
  },
});

export default StorageMiddleWare;
