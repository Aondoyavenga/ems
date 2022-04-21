import { Button, IconButton, Tooltip, Typography } from '@material-ui/core'
import { Edit, MoreHoriz, PlusOne, SearchOutlined, Undo } from '@material-ui/icons'
import React, {useState, useEffect} from 'react'
import { Fragment } from 'react'
import { Link } from 'react-router-dom'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import AppHeader from './global/AppHeader'
import AppWidgetHeader from './global/AppWidgetHeader'
import HandleSearch from './global/HandleSearch'
import SalesItemsModal from './global/SalesItemsModal'

const RenderList = ({ sale, index, applicant_name, uuid, sale_date,
    amount_paid, due_date, amount, isWidget, handleClick }) =>{
    return (
        <Fragment key={index}>
            <tr>
                <td style={{textAlign: 'center'}}>
                    <Typography
                        style={{
                            paddingRight: 2,
                            color: '#20c997'
                        }}
                    > {index+1} </Typography>
                </td>
                <td style={{textAlign: 'left'}} >
                    {applicant_name}
                </td>
                {
                    !isWidget &&
                <td> <strong
                        style={{color: '#20c997'}}
                    >{new Date(sale_date).toLocaleDateString()}</strong> </td>
                }
                <td> {new Date(due_date).toLocaleDateString()} </td>
                <td> <strong
                    style={{color: '#F00'}}
                >{amount.toLocaleString()}</strong> </td>
                {
                    !isWidget &&
                <td> <strong
                        style={{color: '#20c997'}}
                    >{amount_paid.toLocaleString()}</strong> </td>
                }
                <td style={{display: 'flex', alignItems: 'center', justifyContent: 'center'}}>
                    <div>
                    <IconButton size='small'
                        onClick={() =>handleClick(sale.items)}
                    >
                        <MoreHoriz style={{color: '#20c997'}} />
                    </IconButton>
                    </div>
                </td>
                <td>
                    
                <div
                    style={{
                        display: 'flex',
                        flexDirection: 'row',
                        alignItems: 'center',
                        justifyContent: 'center'
                    }} 
                >
                    <Link to={`/sales/${uuid}`} >
                        <Edit
                            style={{
                                color: '#2a3f54'
                            }} 
                        />
                    </Link>
                </div>
                    
                </td>
            </tr>
        </Fragment>
    )
}

const SaleWidget = ({ sales, isReport, isWidget, setIswidget }) => {
    const history = useHistory()
    const [open, setOpen] = useState(false)
    const [items, setItems] = useState([])
    const [searchKey, setSearchKey] = useState('');

    const handleClick = (item) => {
        setItems(item)
        setOpen(true)
    }
    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }
    const calcuEarnedAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount_paid + a, 0)
        return total
    }
   

    return (
        <div className={!isWidget ? '': 'app__Widget'}
           
        >
            {!isReport && <Fragment>
                {
                    isWidget ?
                    <AppWidgetHeader
                        isWidget={isWidget}
                        setIswidget={setIswidget}
                        title='Sales List' 
                    />
                    :
                    <AppHeader title='Sales List' />
                }
            </Fragment>}
            <SalesItemsModal open={open} setOpen={setOpen} items={items} />
            {/* handle search */}
            <HandleSearch 
                url='/sales'
                history={history}
                isWidget={isWidget}
                explore='/sales_list'
                inputType='text'
                setSearchKey={setSearchKey}
                placeHolder='Search (Customer name, amount & date) ...'
            />
            <table className='mt-2 table-hover'
                style={{width: '98%', margin: 'auto'}}
            >
                <thead>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>#</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Customer</th>
                    {
                    !isWidget && 
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Sold On</th>
                    }
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Due Date</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Cost Amt (<s>N</s>)</th>
                    {
                    !isWidget && 
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Earned Amnt (<s>N</s>)</th>
                    }
                    <th style={{ border: '1px solid #F7F7F7F7' }}>Voucher</th>
                    <th style={{ border: '1px solid #F7F7F7F7' }}> Action</th>
                </thead>
                <tbody>
                    {
                        
                        sales?.length > 0 &&
                        sales.filter(item => {
                            if(searchKey == '') {
                                return item
                            }else if (item.applicant_name?.toLowerCase()?.includes(searchKey?.toLowerCase())){
                                return item
                            }else if(item.amount?.toString().includes(parseInt(searchKey))){
                                return item
                            } else if(item.sale_date?.includes(searchKey)) return item
                        })
                        .map((sale, index) =>{
                            return(
                            <RenderList 
                                {...sale} 
                                key={index} 
                                sale={sale} 
                                index={index} 
                                isWidget={isWidget}
                                handleClick={handleClick} 
                            />
                            )
                        })
                    }
                    {
                    sales&&
                    <tr
                    style={{background: '#2A3F54', color: 'white'}} 
                    >
                        <td colSpan={!isWidget ? 4 : 3}>
                            <Typography variant='subtitle1'
                            style={{color: 'white'}}
                            >
                                <b>Total:</b>
                            </Typography>
                        </td>
                        <td colSpan={2}>
                            <Typography variant='subtitle1'
                            style={{color: 'white'}}
                            >
                            <b> <strike>N</strike>: {' '}
                            {
                                calcuAmt(sales).toLocaleString()
                            }</b>
                            </Typography>
                        </td>
                        {
                            !isWidget &&
                            <td>
                                <Typography variant='subtitle1'
                                style={{color: '#20c997'}}
                                >
                                <b> <strike>N</strike>: {' '}
                                {
                                    calcuEarnedAmt(sales).toLocaleString()
                                }</b>
                                </Typography>
                            </td>
                        }
                        <td colSpan={2}></td>
                    </tr>
                }
                </tbody>
            </table>
        </div>
    )
}

export default SaleWidget
