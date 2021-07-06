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

export default ExcelDownload