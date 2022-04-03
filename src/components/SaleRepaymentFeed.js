import Grid from "@material-ui/core/Grid";
import Button from "@material-ui/core/Button";
import Search from "@material-ui/icons/Search";
import Typography from "@material-ui/core/Typography";

import axios from 'axios'
import Currency from 'react-currency-formatter'
import React, {Fragment, useState, useEffect} from 'react'
import { useSelector } from 'react-redux'
import { selectCustomers, selectPaymentHistory, selectPropServices, selectToken } from '../appState/appSlice'
import AppHeader from './global/AppHeader'
import SaleRepayViewTable from './SaleRepayViewTable'
import { Tooltip } from "@material-ui/core";
import SalePaidHistoryView from "./SalePaidHistoryView";


const RenderHead = ({property, setProperty, properties}) =>{
    return (
      <Fragment>
        <th>Poperty</th>
          <th>
          <select
            name="heanding"
            value={property}
            placeholder="Account"
            style={{ border: "none" }}
            onChange={e => setProperty(e.target.value)}
          >
            <option value=""></option>
            {properties &&
              properties.map((exps, index) => {
                const { id, name } = exps;
                return (
                  <Fragment key={index}>
                    <option
                      value={id}
                      key={index}
                    >{`${name}`}</option>
                  </Fragment>
                );
              })}
          </select>
          </th>
      </Fragment>
    )
}

const renderTotalQty = (data) =>{
    const total = data?.reduce((a,b) =>a+b.qty, 0)
    return total
}

const renderTotalSoldAmount = (data) =>{
    const total = data?.reduce((a, b) =>a+b.amount, 0);
    return <Currency currency='NGN' quantity={total} />
}

const RenderPropReport = ({ reports }) =>{
    return (
        <Fragment>
            <table className="table-sm table-hover"
                style={{
                    width: '100%'
                }}
            >
                <thead>
                    <th style={{border: '1px solid #F7F7F7F7'}}>S/N</th>
                    <th style={{border: '1px solid #F7F7F7F7'}}>Customer</th>
                    <th style={{border: '1px solid #F7F7F7F7'}}>Build Category</th>
                    <th style={{border: '1px solid #F7F7F7F7'}}>Plot Number</th>
                    <th style={{border: '1px solid #F7F7F7F7'}}>Amount(<s>N</s>)</th>
                </thead>
                <tbody>
                    {
                        reports?.result?.length > 0 && 
                        reports.result.map((report, index) =>{
                            const {customer_name, buildCategory, 
                                plot_number, qty, quantity, amount} = report
                            return (
                                <Fragment key={index}>
                                    <tr>
                                        <td
                                            style={{
                                                textAlign: 'center', color: '#20c997'
                                            }}
                                        >
                                            <Typography
                                                style={{
                                                    color: '#20c997'
                                                }}
                                            >
                                            {index+1}
                                            </Typography>
                                        </td>
                                        <td
                                            style={{
                                                textAlign: 'left'
                                            }}
                                        >{customer_name}</td>
                                        <td
                                            style={{
                                                textAlign: 'left'
                                            }}
                                        >{buildCategory}</td>
                                        <td
                                            style={{
                                                textAlign: 'left'
                                            }}
                                        >
                                            <Typography
                                                style={{
                                                    color: '#20c997'
                                                }}
                                            >
                                            {plot_number}
                                            </Typography>
                                        </td>
                                       
                                        <td
                                            style={{
                                                textAlign: 'left'
                                            }}
                                        >
                                            <Typography color='error'>
                                            {amount.toLocaleString()}
                                            </Typography>
                                        </td>
                                        
                                    </tr>
                                </Fragment>
                            )
                        })
                    }
                    { reports?.result?.length > 0 && (
                        <tr>                        
                            <td colSpan={5}>
                            <div style={{
                                display: 'flex',
                                alignItems: 'center',
                                justifyContent: 'center'
                            }}>
                            <section style={{
                                padding: '5px',
                                width: '80%',
                                margin: 'auto',
                                display: 'flex',
                               
                                alignItems: 'center',
                                borderRadius: '10px',
                                flexDirection: 'column',
                                boxShadow: '0px 3px 5px #ccc',
                                justifyContent: 'space-between'
                            }}>
                                    <div style={{
                                        padding: 5,
                                        width: '100%',
                                        display: 'flex',
                                        justifyContent: 'space-between'
                                    }}>
                                        <h5 className="font-bold text-center">Total Qty</h5>
                                        <h5 className="text-center font-bold"> {reports?.result[0]?.quantity} </h5>
                                    </div>
                                    
                                    <div style={{
                                        padding: 5,
                                        width: '100%',
                                        display: 'flex',
                                        justifyContent: 'space-between'
                                    }}>
                                        <h5 className="font-bold text-center">Sold Qty</h5>
                                        <h5 className="text-center font-bold"> {
                                            renderTotalQty(reports?.result)
                                        } </h5>
                                    </div>    
                                    <div style={{
                                        padding: 5,
                                        width: '100%',
                                        display: 'flex',
                                        justifyContent: 'space-between'
                                    }}>
                                        <h5 className="font-bold text-center">Sold Amt</h5>
                                        <Typography variant="h5" color="error" className="text-center font-bold text-red"> {
                                        renderTotalSoldAmount(reports?.result)
                                        } </Typography>
                                    </div> 
                                    <div style={{
                                        padding: 5,
                                        width: '100%',
                                        display: 'flex',
                                        justifyContent: 'space-between'
                                    }}>
                                        <h5 className="font-bold text-center">Total Repayment</h5>
                                        <Typography
                                            variant="h5"
                                            style={{
                                                color: '#20c997'
                                            }}
                                            className="text-center font-bold"> {
                                            <Currency 
                                                currency='NGN' 
                                                quantity={reports?.total?.TotalPay}
                                            />
                                        } </Typography>
                                    </div>       
                                </section>
                            </div>
                            </td>
                        </tr>
                    )}
                </tbody>
            </table>
        </Fragment>
    )
}

const SaleRepaymentFeed = ({setUuid, getCustomer_Report}) => {
    const token = useSelector(selectToken)
    const [reports, setReports] = useState()
    const [swap, setSwap] = useState(1)
    const [report, setReport] = useState([])
    const [property, setProperty] = useState()

    const customers = useSelector(selectCustomers)
    const properties = useSelector(selectPropServices);
    const paymentHistorys = useSelector(selectPaymentHistory)
    const [data, setData] = useState({
        start_date: '',
        end_date: ''
    })

    const handleChange = e => {
        const name = e.target.name;
        const value = e.target.value
        setData ({
            ...data,
            [name]: value
        })
    }

    const handle_Get_Report =()=>{
        if(data.start_date && data.end_date)
            return(
                axios.get(`/sale/report/${data.start_date}/${data.end_date}`, {
                    headers: {
                        Authorization: `Bearer ${token}`
                    }
                })
                .then(result =>{
                   setReports(result.data)
                })
                .catch(error =>{
                    if(error){
                        return error
                    }
                })
            )
    }

    const getProp__report = () => {
        axios
          .get(`/prop_service/report/${property}`, {
            headers: {
              Authorization: `Bearer ${token}`,
            },
          })
          .then(result=> {
                setReport(result.data)
                console.log(result.data)
          })
          .catch((error) => {
            return error;
          });
    };
    
    useEffect(() =>{
        return getProp__report()
    }, [property])

    const renderTabs = () =>{
        switch (swap) {
            case 1:
                return (
                    <SaleRepayViewTable
                        data={data}
                        reports={reports}
                        handleChange={handleChange}
                        handle_Get_Report={handle_Get_Report}
                    
                    />
                )
            case 2:
                return (
                    <Fragment>
                         <table
                            style={{
                            top: 0,
                            zIndex: 222,
                            width: "98%",
                            margin: "auto",
                            position: "sticky",
                            }}
                            className="mt-1 table-bordered hide-on-print"
                        >
                            <thead>
                            
                                <RenderHead 
                                    property={property}
                                    setProperty={setProperty}
                                    properties={properties}
                                />
                                <th>
                                    <Button
                                    size="small"
                                    endIcon={<Search />}
                                    onClick={() => handle_Get_Report()}
                                    style={{
                                        background: "#2a3f54",
                                        color: "white",
                                        width: "100%",
                                    }}
                                    >
                                    Search
                                    </Button>
                                </th>
                            </thead>
                        </table>
                        <RenderPropReport reports={report} />
                        {
                            !report?.result?.length >0&&
                            <div className='alert alert-warning'>
                                {`Ops!!! no repayment history`}
                            </div>
                        }
                    </Fragment>
                )
            case 3:
                return(
                    <Fragment>
                         <table
                            style={{
                            top: 0,
                            zIndex: 222,
                            width: "98%",
                            margin: "auto",
                            position: "sticky",
                            }}
                            className="mt-1 table-bordered hide-on-print"
                        >
                            <thead>

                                <th>Select Customer</th>
                                <th>
                                    <input 
                                        list='selectCus'
                                        name='uuid'
                                        
                                        placeholder='Select Applicant'
                                        onChange={(e) =>setUuid(
                                            e.target.value?.split(' ')[0]
                                            )}
                                        style={{
                                            flex: 1,
                                            border: 'none',
                                            outline: 'none',
                                            paddingLeft: 10
                                        }}
                                    />
                                    <datalist id="selectCus">
                                        {customers &&
                                        customers.map((cus, index) => {
                                        return (
                                            <option key={index} value={`${cus.id} ${cus.customer_name}`}>
                                            {cus.customer_name}
                                            </option>
                                        );
                                        })}
                                    </datalist>
                                </th>
                               
                                <th>
                                    <Button
                                    size="small"
                                    endIcon={<Search />}
                                    onClick={() =>getCustomer_Report()}
                                    style={{
                                        background: "#2a3f54",
                                        color: "white",
                                        width: "100%",
                                    }}
                                    >
                                    Search
                                    </Button>
                                </th>
                            </thead>
                        </table>
                        <SalePaidHistoryView 
                            paymentHistorys={paymentHistorys}
                        />
                        {
                            !paymentHistorys?.repayment?.length >0&&
                            <div className='alert alert-warning'>
                                {`Ops!!! no repayment history`}
                            </div>
                        }
                        
                    </Fragment>
                )
            default:
                return (
                    <Fragment>
                        <SaleRepayViewTable
                            data={data}
                            reports={reports}
                            handleChange={handleChange}
                            handle_Get_Report={handle_Get_Report}
                        />
                    </Fragment>
                    
                )
        }
    }

    useEffect(() =>{
        return handle_Get_Report()
    }, [data])
    return (
        <Fragment>
            <div className='app__Feed'>
                <AppHeader title='Sale Repayment Report' />
                <div className='admin__FeedContainer'>
                    <Grid container spacing={2} >
                        <Grid item lg={12} md={12} sm={12}>
                            <div className='admin__Title'>
                                <section>
                                    <Typography variant='h3'>Sales Reports Pool</Typography>
                                </section>
                            </div>
                            <div style={{
                                padding: 5,
                                borderBottom: '1px solid #edededed',
                                boxSizing: 'border-box',
                                boxShadow: '0px 1px 2px gray'
                                }}
                                className='mb-3'
                            >
                            <Tooltip title='Pool Sales Report'>                     
                                <Button
                                style={{
                                    width: 100,
                                    color: swap == 1 ?  '#20C997' : 'white',
                                    boxSizing: 'border-box',
                                    backgroundColor: swap == 1 ?  '#F7F7F7F7' : '#2a3f54',
                                    boxShadow: '0px 2px 2px gray'
                                }}
                                onClick={() =>setSwap(1)}
                                > 
                                    All
                                </Button>
                            </Tooltip>

                            <Tooltip title='Pool Sale Report By Property / Periodic'>                     
                            <Button
                                style={{
                                    width: 'auto',
                                    marginLeft: 10,
                                    color: swap == 2 ?  '#20C997' : 'white',
                                    boxSizing: 'border-box',
                                    backgroundColor: swap == 2 ?  '#F7F7F7F7' : '#2a3f54',
                                    boxShadow: '0px 2px 2px gray'
                                }}
                                onClick={() =>setSwap(2)}
                                > 
                                    Property
                                </Button>
                            </Tooltip>

                            <Tooltip title='Pool Sale Report By Customer'>                     
                            <Button
                                style={{
                                    width: 'auto',
                                    marginLeft: 10,
                                    color: swap == 3 ?  '#20C997' : 'white',
                                    boxSizing: 'border-box',
                                    backgroundColor: swap == 3 ?  '#F7F7F7F7' : '#2a3f54',
                                    boxShadow: '0px 2px 2px gray'
                                }}
                                onClick={() =>setSwap(3)}
                                > 
                                Customer
                                </Button>
                            </Tooltip>
                         
                            </div>
                            <div className='p-1' />
                            {/* Tabs*/}
                            {renderTabs()}                 
                                
                            {
                                reports<=0 &&
                                
                                <div className='alert alert-warning'
                                    style={{width: '98%', margin: 'auto'}}
                                >
                                    {`Ops!!! No Transaction History`}
                                </div>                
                            }
               
                           </Grid>
                    </Grid>
                </div>
            </div> 
        </Fragment>
    )
}

export default SaleRepaymentFeed
