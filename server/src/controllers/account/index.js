import express from "express";
const router = express.Router();
import ACCOUNT from "../../methods/account.js";
import RequireToken from "../../middleware/RequireToken.js";

router
  .get("/", RequireToken, ACCOUNT.get_All_Accounts)
  .post("/:id", RequireToken, ACCOUNT.handle_Account_Update)
  .get("/search/:key", RequireToken, ACCOUNT.handle_Search_Accounts)
  .get("/tx/:code", RequireToken, ACCOUNT.get_All_Accounts_Transaction)
  .get("/asset", RequireToken, ACCOUNT.get_All_Asset_Account)
  .get("/liability", RequireToken, ACCOUNT.get_All_Liability_Account)
  .get("/equity", RequireToken, ACCOUNT.get_All_Equity_Account)
  .post("/", RequireToken, ACCOUNT.createAccount)

const ACCOUNT_ROUTER = {
  router,
};

export default ACCOUNT_ROUTER;
