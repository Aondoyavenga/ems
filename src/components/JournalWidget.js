import { IconButton, Typography } from '@material-ui/core'
import { MoreVertOutlined } from '@material-ui/icons'
import React from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectStaffPosted_Journals } from '../appState/appSlice'
import AppWidgetHeader from './global/AppWidgetHeader'

const JournalWidget = ({ isWidget, setIswidget }) => {
    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }
    const staffJournals = useSelector(selectStaffPosted_Journals)
    return (
        <div className='app__Widget'>
            <AppWidgetHeader
                isWidget={isWidget}
                setIswidget={setIswidget}
                title='Journal List' 
            />
            <section className='app__WidgetContainer mt-3'>
               <table className='table table-sm table-striped table-hover'>
                   <thead>
                       <th style={{ border: '1px solid #F7F7F7F7' }}>#</th>
                       <th style={{ border: '1px solid #F7F7F7F7' }}>Name or Description</th>
                       <th style={{ border: '1px solid #F7F7F7F7' }}>Amount (<s>N</s>)</th>
                       <th style={{ border: '1px solid #F7F7F7F7' }}>Date</th>
                       <th style={{ border: '1px solid #F7F7F7F7' }}>Action</th>
                   </thead>
                   <tbody>
                       {
                           staffJournals&&
                           staffJournals.map((sje, index) =>{
                               const { name, amount, je_date } = sje
                               return (
                                   <tr key={index}>
                                       <td> {index+1} </td>
                                       <td> 
                                           <Typography variant='p'
                                            style={{color: '#20C997', cursor: 'pointer'}}
                                           >
                                           {`${name}`}
                                           </Typography>
                                       </td>
                                       <td> {amount} </td>
                                       <td> {new Date(je_date).toLocaleDateString()} </td>
                                       <td
                                        style={{display: 'flex', alignItems: 'center', justifyContent: 'center'}}
                                       >
                                           <div>
                                           <IconButton size='small'>
                                               <MoreVertOutlined style={{color: '#20c997'}} />
                                           </IconButton>
                                           </div>
                                       </td>
                                   </tr>
                                   
                               )
                           })
                           
                       }
                       {
                           staffJournals&&
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
                                    <b>
                                        <s>N</s>: {' '}
                                        {
                                       calcuAmt(staffJournals)
                                        }
                                    </b>
                                   </Typography>
                               </td>
                               <td colSpan={2}></td>
                           </tr>
                       }
                   </tbody>
               </table>
            </section>
        </div>
    )
}

export default JournalWidget
