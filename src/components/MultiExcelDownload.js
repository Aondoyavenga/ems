import React, {Fragment, useEffect, useState} from "react";
import ReactExport from "react-data-export";
import { useSelector } from "react-redux";
import { selectExpenseCategories } from "../appState/appSlice";

const ExcelFile = ReactExport.ExcelFile;
const ExcelSheet = ReactExport.ExcelFile.ExcelSheet;
const ExcelColumn = ReactExport.ExcelFile.ExcelColumn;

export const MultiExcelDownload = ({data}) =>{
    const [exports, setExports] = useState('')
    const expCategories = useSelector(selectExpenseCategories);
    
    const renderExpCategory = (id) => {
        const expCat =
          expCategories && expCategories.find((category) => category.id == id);
        return expCat ? (expCat.name ? expCat.name : null) : null;
      };

    useEffect(() =>{
        const Datasets = []
        expCategories?.forEach(element => {
            const filterData = data?.filter(catData =>catData.expense_FK == element.id)
                if(filterData.length > 0){
                    return Datasets.push({
                        head: element.name,
                        [element.name]: filterData
                    })
                }
        });
        return setExports(Datasets)
    }, [data])
    return (
        <ExcelFile>
           
                {
                    exports && exports.map((e, index) =>{
                        return (
                            <ExcelSheet data={e[e.head]} name={e.head.slice(0, 9)} key={index}>
                                    <ExcelColumn label="Heanding" value={ index == 0 ? e.head.slice(0, 9) : ''} />
                                    <ExcelColumn label="Description" value="description"/>
                                    <ExcelColumn label="Amount" value="amount"/>
                                    <ExcelColumn label="Date" 
                                        value={(col) => new Date(col.createdAt).toLocaleDateString()}/>
                            </ExcelSheet>
                        )
                    })
                }
           
            
        </ExcelFile>
    );
}