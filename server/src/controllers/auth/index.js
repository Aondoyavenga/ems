import express from "express";
import multer from "multer";
import AUTH from "../../methods/auth.js";
import RequireToken from "../../middleware/RequireToken.js";
import StorageMiddleWare from "../../middleware/storageMiddleware.js";
const router = express.Router();

const upload = multer({ storage: StorageMiddleWare });
let type = upload.single("photo");

router
  .get("/", RequireToken, AUTH.get_AllStaff)
  .get("/active", RequireToken, AUTH.get_Active_User)
  .post("/signature/:id/:name", RequireToken, type, AUTH.upload_Signature)
  .post("/avatar/:id/:name", RequireToken, type, AUTH.upload_Avatar)
  .post("/edit/:userID", RequireToken, AUTH.update_Staff)
  .post("/pwd", RequireToken, AUTH.handle__Pwd_Change)
  .post("/", RequireToken, AUTH.create__Staff)
  .post("/login", AUTH.staff__Login)

const AUTH_ROUTER = {
  router,
};

export default AUTH_ROUTER;
