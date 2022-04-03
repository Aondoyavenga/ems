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
import SaleRepaymentReportScreen from './screens/SaleRepaymentReportScreen'
import ExpenseReportScreen from './screens/ExpenseReportScreen'
import EditSaleScreen from './screens/EditSaleScreen'
import SalesListScreen from './screens/SalesListScreen'
import ExpenseListScreen from './screens/ExpenseListScreen'
import PrintCusForm from './screens/PrintCusForm'


const Routes = () => {
    return (
        <Router>
            <Switch>
                <Route exact path='/' component={AuthScreen} />
                <Route exact path='/staffs' component={StaffScreen} />
                <Route exact path='/home' component={HomeScreen} />
                <Route exact path='/coa' component={CoaScreen} />
                <Route exact path='/customers' component={CustomerScreen} />
                <Route exact path='/customers/print' component={PrintCusForm} />
                <Route exact path='/je_entry' component={JournalEntryScreen} />
                <Route exact path='/expense' component={ExpenseScreen} />
                <Route exact path='/expense_list' component={ExpenseListScreen} />
                <Route exact path='/bills' component ={BillScreen } />
                <Route exact path='/invoice' component={InvoiceScreen} />
                <Route exact path='/vendor' component={VendorScreen} />
                <Route exact path='/estimate' component={EstimateScreen} />
                <Route exact path ='/ps' component={PropertyServiceScreen} />
                <Route exact path ='/rpayment' component={ReceivePaymentScreen} />
                <Route exact path ='/sales' component ={SaleScreen} />
                <Route exact path ='/sales_list' component ={SalesListScreen} />
                <Route exact path ='/sales/tx' component={PostingScreen }/>
                <Route exact path ='/sales/:uuid' component ={EditSaleScreen} />
                <Route exact path ='/applications' component={MdApproveScreen} />
                <Route exact path ='/sales/tx/:uuid/:name' component={SalePaymentHistScreen }/>
                <Route exact path ='/coa/:name/:uuid' component={AccountScreen }/>
                <Route exact path='/admin-settings-dashboard/:id' component={AdminScreen} />
                <Route exact path='/:accountant/reports' component={ReportsScreen} />
                <Route exact path='/:staff/sale_repmt_reports' component={SaleRepaymentReportScreen} />
                <Route exact path='/:staff/exp_reports' component={ExpenseReportScreen} />
            </Switch>
        </Router>
    )
}

export default Routes
