import express from 'express'
import path from 'path'
import db from './src/db.js'
const app = express()
const PORT = process.env.PORT || 5000


import AUTH_ROUTER from './src/controllers/auth/index.js';
import ACCOUNT_ROUTER from './src/controllers/account/index.js'
import CUSTOMER_ROUTER from './src/controllers/customer/index.js'
import VENDOR_ROUTER from './src/controllers/vendor/index.js';
import PROP_SERVICE_ROUTER from './src/controllers/prop_service/index.js';
import ESTIMATE_ROUTER from './src/controllers/estimate/index.js';
import INVOICE_ROUTER from './src/controllers/invoice/index.js';
import BILL_ROUTER from './src/controllers/bill.js/index.js';
import BUILD_CATEGORIES_ROUTER from './src/controllers/buildCategories/index.js';
import SALE_ROUTER from './src/controllers/sales/index.js';
import LOCATION_ROUTER from './src/controllers/location/index.js';
import TRANSACTION_ROUTER from './src/controllers/transaction/index.js';
import EXPENSE_ROUTER from './src/controllers/expense/index.js';
import JOURNAL_ROUTER from './src/controllers/journal/index.js';
const __dirname = path.resolve()
app.use(express.json())
app.use((req, res, next) =>{
    res.header("Access-Allow-Origin", "http://localhost:3000/");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
})
const publicDir = path.join(__dirname +'/public/upload')
app.use(express.static(path.resolve(__dirname, './build')))

app.use('/api/v1.0/bill', BILL_ROUTER.router)
app.use('/api/v1.0/auth', AUTH_ROUTER.router)
app.use('/api/v1.0/vendor', VENDOR_ROUTER.router)
app.use('/api/v1.0/account', ACCOUNT_ROUTER.router)
app.use('/api/v1.0/customer', CUSTOMER_ROUTER.router)
app.use('/api/v1.0/estimate', ESTIMATE_ROUTER.router)
app.use('/api/v1.0/prop_service', PROP_SERVICE_ROUTER.router)
app.use('/api/v1.0/invoice', INVOICE_ROUTER.router)

app.use('/api/v1.0/sale', SALE_ROUTER.router)
app.use('/api/v1.0/location', LOCATION_ROUTER.router)
app.use('/api/v1.0/transaction', TRANSACTION_ROUTER.router)

app.use('/api/v1.0/expense', EXPENSE_ROUTER.router)

app.use('/api/v1.0/build_category', BUILD_CATEGORIES_ROUTER.router)

app.use('/api/v1.0/journal', JOURNAL_ROUTER.router)
app.use('/public/upload', express.static(publicDir));

app.get('*', (req, res) =>{
    res.sendFile(path.resolve(__dirname, './build', 'index.html'))
})

app.listen(PORT, () =>{
    
    db.connect( error =>{
        if(error) throw error;
        console.log(`App Connected on port: ${PORT}`)
    })
})