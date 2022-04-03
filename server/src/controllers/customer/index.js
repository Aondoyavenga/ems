import express from "express";
import multer from "multer";
const router = express.Router();
import CUSTOMER from "../../methods/customer.js";
import RequireToken from "../../middleware/RequireToken.js";
import StorageMiddleWare from "../../middleware/storageMiddleware.js";

const upload = multer({ storage: StorageMiddleWare });
let type = upload.single("photo");

router
  .get("/", RequireToken, CUSTOMER.get_All_Customers)
  .get("/:id", RequireToken, CUSTOMER.get_Customer_By_Id)
  .post("/avatar/:id/:name", RequireToken, type, CUSTOMER.avatar_Upload)
  .post("/:id", RequireToken, CUSTOMER.update_Customer)
  .get("/search/:key", RequireToken, CUSTOMER.handle_Search_Customers)
  .post("/", RequireToken, CUSTOMER.create_Customer)

const CUSTOMER_ROUTER = {
  router,
};

export default CUSTOMER_ROUTER;
