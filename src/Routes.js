import React from 'react'
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'
import AccountScreen from './screens/AccountScreen'
import AdminScreen from './screens/AdminScreen'
import ReportsScreen from './screens/ReportScreen'
import { AuthScreen } from './screens/AuthScreen'
import BillScreen from './screens/BillScreen'
import CoaScreen from './screens/CoaScreen'
import CustomerScreen from './screens/CustomerScreen'
import EstimateScreen from './screens/EstimateScreen'
import ExpenseScreen from './screens/ExpenseScreen'
import HomeScreen from './screens/HomeScreen'
import InvoiceScreen from './screens/InvoiceScreen'
import JournalEntryScreen from './screens/JournalEntryScreen'
import MdApproveScreen from './screens/MdApproveScreen'
import PostingScreen from './screens/PostingScreen'
import PropertyServiceScreen from './screens/PropertyServiceScreen'
import ReceivePaymentScreen from './screens/RceivePaymentScreen'
import SalePaymentHistScreen from './screens/SalePaymentHistScreen'
import SaleScreen from './screens/SaleScreen'
import StaffScreen from './screens/StaffScreen'
import VendorScreen from './screens/VendorScreen'


const Routes = () => {
    return (
        <Router>
            <Switch>
                <Route exact path='/' component={AuthScreen} />
                <Route exact path='/staffs' component={StaffScreen} />
                <Route exact path='/home' component={HomeScreen} />
                <Route exact path='/coa' component={CoaScreen} />
                <Route exact path='/customers' component={CustomerScreen} />
                <Route exact path='/je_entry' component={JournalEntryScreen} />
                <Route exact path='/expense' component={ExpenseScreen} />
                <Route exact path='/bills' component ={BillScreen } />
                <Route exact path='/invoice' component={InvoiceScreen} />
                <Route exact path='/vendor' component={VendorScreen} />
                <Route exact path='/estimate' component={EstimateScreen} />
                <Route exact path ='/ps' component={PropertyServiceScreen} />
                <Route exact path ='/rpayment' component={ReceivePaymentScreen} />
                <Route exact path ='/sales' component ={SaleScreen} />
                <Route exact path ='/applications' component={MdApproveScreen} />
                <Route exact path ='/sales/tx' component={PostingScreen }/>
                <Route exact path ='/sales/tx/:uuid/:name' component={SalePaymentHistScreen }/>
                <Route exact path ='/coa/:name/:uuid' component={AccountScreen }/>
                <Route exact path='/admin-settings-dashboard/:id' component={AdminScreen} />
                <Route exact path='/:accountant/reports' component={ReportsScreen} />
            </Switch>
        </Router>
    )
}

export default Routes
