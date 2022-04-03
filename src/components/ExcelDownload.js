import React from "react";
import ReactExport from "react-data-export";
import { useSelector } from "react-redux";
import { selectAccounts } from "../appState/appSlice";

const ExcelFile = ReactExport.ExcelFile;
const ExcelSheet = ReactExport.ExcelFile.ExcelSheet;
const ExcelColumn = ReactExport.ExcelFile.ExcelColumn;

const ExcelDownload = ({ date, dataSet1}) => {
    const accounts = useSelector(selectAccounts)
    const returncusName = (code) =>{
        const cname = accounts && accounts.find(acc =>acc.code ===code).name
        return cname
    }
    return (
        <ExcelFile
            filename ={`TXS ${date}`}
            element={<button>Export To Excel</button>}
        >
            <ExcelSheet data={dataSet1} name={`TXS ${date}` }>
                <ExcelColumn label="Account Name" value={(col) =>returncusName(col.account_FK)} />
                <ExcelColumn label="Code" value="account_FK"/>
                <ExcelColumn label="Description" value="description"/>
                <ExcelColumn label="Tx Date" 
                    value={(col) => new Date(col.tx_date).toLocaleDateString()}/>
                <ExcelColumn label="CR"
                    value={(col) => col.tx_type ==="CR" ? col.amount : ""}/>
                <ExcelColumn label="DR"
                    value={(col) => col.tx_type ==="DR" ? col.amount : ""}/>
                <ExcelColumn label="Status"
                    value={(col) => col.paid ===1 ? "Posted" : "Post"}/>
                <ExcelColumn label="Pay Method" value="pay_method"/>
                
            </ExcelSheet>
           
        </ExcelFile>
    );
    
}

export const DownloadSaleRepmt = ({ date, dataSet1}) => {
    return (
        <ExcelFile
            filename ={`Sale Rept ${date}`}
            element={<button>Export To Excel</button>}
        >
            <ExcelSheet data={dataSet1} name={`SRPMTR ${date}` }>
                <ExcelColumn label="Name" value="applicant_name" />
                <ExcelColumn label="Property" value="property_name"/>
                <ExcelColumn label="Due Date" 
                    value={(col) => new Date(col.due_date).toLocaleDateString()}/>
                <ExcelColumn label="Cost AMT(N)"
                    value={(col) => parseInt(col.amount).toLocaleString()}/>
                <ExcelColumn label="Aimed AMT(N)"
                    value={(col) => parseInt(col.amount_paid).toLocaleString()}/>
                <ExcelColumn label="RCPT NO." value="rcpt_no"/>
                <ExcelColumn label="Tx Date" 
                    value={(col) => new Date(col.tx_date).toLocaleDateString()}/>
                <ExcelColumn label="LT Paymnt(N)"
                    value={(col) => parseInt(col.tx_amount).toLocaleString()}/>
                <ExcelColumn label="Pay Method" value="pay_method"/>
                <ExcelColumn label="Remark"
                    value={(col) => col.status ===1 ? "Posted" : "Post"}/>
            </ExcelSheet>
           
        </ExcelFile>
    );
    
}

export const DownloadExpenseReport = ({ date, dataSet1, 
    renderExpCategory, renderAccount
}) => {
    return (
        <ExcelFile
            filename ={`Expense ${date}`}
            element={<button>Export To Excel</button>}
        >
            <ExcelSheet data={dataSet1} name={`EXPReport ${date}` }>
                <ExcelColumn label="Item" 
                    value={(col) =>renderExpCategory(col.expense_FK)} />
                <ExcelColumn label="Description" value="description"/>
                <ExcelColumn label="Account Payable" 
                    value={(col) =>renderAccount(col.payment_account)} />
                <ExcelColumn label="Account Receivable"
                    value={(col) => renderAccount(col.payee_account)}/>
                <ExcelColumn label={`Amount (N)`}
                    value={(col) => parseInt(col.amount).toLocaleString()}/>
                <ExcelColumn label="Date" 
                    value={(col) => new Date(col.expense_date).toLocaleDateString()}/>
                
                <ExcelColumn label="Pay Method" value="pay_method"/>
                
            </ExcelSheet>
           
        </ExcelFile>
    );
    
}

export default ExcelDownload