import React, { useEffect, useState } from 'react'
import { Fragment } from 'react'
import { IconButton, Typography } from '@material-ui/core'
import { More } from '@material-ui/icons'
import ExpenseItemsView from './global/ExpenseItemsView'
import HandleSearch from './global/HandleSearch'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectAccounts } from '../appState/appSlice'
import { useSelector } from 'react-redux'

const RenderList = ({index, open, isWidget, renderAccount, setOpen,
    uuid, amount, expense_date, payee_account, 
    payment_account, first_name, last_name, }) =>{
    return (
        <Fragment key={index} >
            <tr
                onClick={() =>setOpen(uuid)}
            >
                <td style={{textAlign: 'center'}}>
                <td>
                    <Typography
                        style={{
                            paddingRight: 2,
                            color: '#20c997'
                        }}
                    > {index+1} </Typography>
                </td>
                </td>
                <td style={{textAlign: 'left'}}> 
                    <Typography
                        style={{color: '#20C997', cursor: 'pointer'}}
                    >
                    {`Expense #${uuid}`}
                    </Typography>
                </td>
                {   !isWidget &&
                    <td> {renderAccount(payment_account)} </td>
                }
                {   !isWidget &&
                    <td> {renderAccount(payee_account)} </td>
                }
                {   !isWidget &&
                    <td> {`${first_name} ${last_name}`} </td>
                }
                <td>
                    <Typography color='error'>
                    {amount.toLocaleString()} 
                    </Typography>
                </td>
                <td> {new Date(expense_date).toLocaleDateString()} </td>
            
                <td style={{display: 'flex', alignItems: 'center', justifyContent: 'center'}}>
                    <div>
                    <IconButton size='small'
                    >
                        <More style={{color: '#20c997'}} />
                    </IconButton>
                    </div>
                </td>
            </tr>
            {/* imported component  */}
            {
                open ==uuid &&
                <ExpenseItemsView 
                    open={open}
                    expID={uuid} 
                    setOpen={setOpen}
                />
            }
        </Fragment>
    
    )
}

const ExpenseViewTable = ({ 
    isWidget, 
    headerColor,  
    userExpneses, 
    calcuAmt
}) => {
    const history = useHistory()
    const [open, setOpen] = useState(false)
    const [searchKey, setSearchKey] = useState();
    const [expSearch, setExpSearch] = useState();
    const accounts = useSelector(selectAccounts);

    const renderAccount = (code) => {
        const acc = accounts && accounts.find((acc) => acc.code == code);
        return acc?.name;
      };

    useEffect(() => {
        const filterExpense =
        userExpneses &&
        userExpneses.filter((exp) => exp.uuid.includes(searchKey));
        if(filterExpense) {
            return setExpSearch(filterExpense);
        }
           
         return setExpSearch('');
        
    }, [searchKey]);

    useEffect(() =>{
        return setExpSearch('');
    }, [])


    return (
        <Fragment>
             <HandleSearch
                url='/expense'
                inputType='number'
                history={history}
                isWidget={isWidget}
                explore='/expense_list'
                placeHolder='Search (By Expense code 283938) ...'
                setSearchKey={setSearchKey}
            />
            <table className='mt-2 table-hover'
                style={{width: '98%', margin: 'auto'}}
            >
                <thead style={{top: '60px', position: 'sticky', background:  headerColor? headerColor : '#EDEDED',
                    color: headerColor? 'white': null
                }}>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>#</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Expense</th>
                    {
                        !isWidget &&
                        <th style={{ border: '1px solid #F7F7F7F7' }}>Acc. Payable</th>
                    }
                    {
                        !isWidget &&
                        <th style={{ border: '1px solid #F7F7F7F7' }}>Acc. Receivable</th>
                    }
                     {
                        !isWidget &&
                        <th style={{ border: '1px solid #F7F7F7F7' }}>Raised By</th>
                    }
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Amount (<s>N</s>)</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Date</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}></th>
                </thead>
                <tbody>
                    {
                        expSearch ?
                        expSearch.map((exp, index) =>{
                            return (
                                <Fragment key={index}>
                                    <RenderList 
                                        {...exp}
                                        open={open}
                                        index={index}
                                        setOpen={setOpen}
                                        isWidget={isWidget}
                                        renderAccount={renderAccount}
                                    />
                                </Fragment>
                            )
                        })
                        :
                        userExpneses &&
                        userExpneses.map((exps, index) =>{
                            return (
                                <RenderList 
                                    {...exps}
                                    open={open}
                                    index={index}
                                    setOpen={setOpen}
                                    isWidget={isWidget}
                                    renderAccount={renderAccount}
                                />
                            )
                        })
                        
                    }
                    {
                        userExpneses &&
                        <tr
                        style={{background: '#2A3F54', color: 'white'}} 
                        >
                            <td colSpan={2}>
                                <Typography variant='subtitle1'
                                style={{color: 'white'}}
                                >
                                    <b>Total:</b>
                                </Typography>
                            </td>
                            <td>
                                <Typography variant='subtitle1'
                                style={{color: 'white'}}
                                >
                                <b>{
                                    calcuAmt(userExpneses).toLocaleString()
                                }</b>
                                </Typography>
                            </td>
                            <td colSpan={2}></td>
                        </tr>
                    }
                </tbody>
            </table>
        </Fragment>
    )
}

export default ExpenseViewTable
