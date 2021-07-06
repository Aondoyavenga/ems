import { createSlice } from '@reduxjs/toolkit';

export const appSlice = createSlice({
    name: 'app_state',
    initialState: {
        open: '',
        token: '',
        user: '',
        vendors: '',
        accounts: '',
        customers: '',
        propServices: '',
        appWidget: false,
        assetAccounts: '',
        equityAccounts: '',
        liabilityAccounts: '',
        openEstimate: '',
        userInvoices: '',

        billCategories: '',
        buildCategories: '',
        pendingSales: '',

        txAccounts: '',
        duePayments: '',
        expenseCategories: '',
        userExpenseRaised: '',
        expenseItems: '',

        allStaffs: '',
        paymentHistory: '',
        paidOnpaySales: '',

        journals: '',
        staffPosted_Journals: '',
        accountTxs: '',

        sales: '',
        filterSale: '',
        locations: '',
        transactions: '',
        filterTx: '',
        filterCus: '',
        psSold: '',
    },

    reducers: {
        setOpen: (state, action) =>{
            state.open = action.payload
        },
        setToken: (state, action) =>{
            state.token = action.payload;
        },
        setUser: (state, action) =>{
            state.user = action.payload
        },
        setAppWidget: (state, action) =>{
            state.appWidget = action.payload
        },
        setAssetAccount: (state, action) =>{
            state.assetAccounts = action.payload
        },
        setLiabilityAccount: (state, action) =>{
            state.liabilityAccounts = action.payload
        },
        setEquityAccount: (state, action) =>{
            state.equityAccounts = action.payload
        },
        setCustomers: (state, action) =>{
            state.customers = action.payload
        },
        setAccounts: (state, action) =>{
            state.accounts = action.payload
        },
        setVendors: (state, action) =>{
            state.vendors = action.payload
        },
        setPropServices: (state, action) =>{
            state.propServices = action.payload
        },
        setOpenEstimate: (state, action) =>{
            state.openEstimate = action.payload
        },
        setUserInvoices: (state, action) =>{
            state.userInvoices = action.payload
        },
        setBillCategories: (state, action) =>{
            state.billCategories = action.payload
        },
        setBuildCategories: (state, action) =>{
            state.buildCategories = action.payload
        },
        setpendingSales: (state, action) =>{
            state.pendingSales = action.payload
        },

        setTxAccounts: (state, action ) =>{
            state.txAccounts = action.payload
        },
        setDuePayments: (state, action) =>{
            state.duePayments = action.payload
        },
        setExpenseCategories: (state, action) =>{
            state.expenseCategories = action.payload
        },
        setUserExpenseRaised: (state, action) =>{
            state.userExpenseRaised = action.payload
        },
        setExpenseItems: (state, action) =>{
            state.expenseItems = action.payload
        },
        setAllStaffs: (state, action) =>{
            state.allStaffs = action.payload
        },
        setPaymentHistory: (state, action) =>{
            state.paymentHistory = action.payload
        },
        setPaidOnpaySales: (state, action) =>{
            state.paidOnpaySales = action.payload
        },

        setJournals: (state, action) =>{
            state.journals = action.payload
        },
        setStaffPosted_Journals: (state, action) =>{
            state.staffPosted_Journals = action.payload
        },
        setAccountTxs: (state, action) =>{
            state.accountTxs = action.payload
        },
        setSAles: (state, action) =>{
            state.sales = action.payload
        },
        setFilterSale: (state, action) =>{
            state.filterSale = action.payload
        },
        setLocations: (state, action) =>{
            state.locations = action.payload
        },
        setTransactions: (state, action) =>{
            state.transactions = action.payload
        },
        setfilterTx: (state, action) =>{
            state.filterTx = action.payload
        },
        setFilterCus: (state, action) =>{
            state.filterCus = action.payload
        },

        setPsSold: (state, action) =>{
            state.psSold = action.payload
        }
    }
});

export const {
    setOpen,
    setToken,
    setUser,
    setVendors,
    setAccounts,
    setCustomers,
    setAppWidget,
    setAssetAccount,
    setEquityAccount,
    setLiabilityAccount,

    setPropServices,
    setPsSold,

    setOpenEstimate,
    setUserInvoices,
    setBillCategories,
    setBuildCategories,
    setpendingSales,
    setTxAccounts,
    setDuePayments,
    setExpenseCategories,
    setUserExpenseRaised,
    setExpenseItems,
    setAllStaffs,
    setPaymentHistory,
    setPaidOnpaySales,

    setJournals,
    setStaffPosted_Journals,

    setAccountTxs,
    setSAles,
    setFilterSale,
    setLocations,
    setTransactions,
    setfilterTx,
    setFilterCus,
    
} = appSlice.actions;

export const selectOpen = state => state.app_state.open;

export const selectSales = state => state.app_state.sales;
export const selectFilterSale = state => state.app_state.filterSale;

export const selectToken = state => state.app_state.token;
export const selectUser = state => state.app_state.user;

export const selectVendors = state => state.app_state.vendors;
export const selectAppWidget = state =>state.app_state.appWidget;

export const selectCustomers = state => state.app_state.customers;

export const selectPsSold = state =>state.app_state.psSold;
export const selectPropServices = state => state.app_state.propServices;

export const selectAccounts = state => state.app_state.accounts;
export const selectAssetAccount = state => state.app_state.assetAccounts;
export const selectEquityAccount = state => state.app_state.equityAccounts
export const selectLiabilityAccount = state => state.app_state.liabilityAccounts

export const selectOpenEstimate = state => state.app_state.openEstimate;

export const selectUserInvoices = state => state.app_state.userInvoices;

export const selectBillCategories = state => state.app_state.billCategories;
export const selectBuildCategories = state => state.app_state.buildCategories;

export const selectPendingSales = state => state.app_state.pendingSales;
export const selectPaymentHistory = state => state.app_state.paymentHistory;
export const selectPaidOnpaySales = state => state.app_state.paidOnpaySales;

export const selectTxAccounts = state => state.app_state.txAccounts;
export const selectDuePayments = state => state.app_state.duePayments;

export const selectExpenseCategories = state => state.app_state.expenseCategories;
export const selectUserExpenseRaised = state => state.app_state.userExpenseRaised;
export const selectExpenseItems = state => state.app_state.expenseItems;

export const selectAllStaffs  = state =>state.app_state.allStaffs;

export const selectJournals = state => state.app_state.journals;
export const selectStaffPosted_Journals = state => state.app_state.staffPosted_Journals;

export const selectAccountTxs = state => state.app_state.accountTxs;
export const selectLocations = state => state.app_state.locations;

export const selectTransactions = state => state.app_state.transactions;
export const selectFilterTx = state => state.app_state.filterTx;

export const selectFilterCus = state => state.app_state.filterCus;

export default appSlice.reducer;