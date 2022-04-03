// MUI Stuff
import IconButton from '@material-ui/core/IconButton'
import Typography from '@material-ui/core/Typography'
import MoreVertOutlined from '@material-ui/icons/MoreVertOutlined'

import { Fragment, useState } from 'react'
import { useSelector } from 'react-redux'
import { selectStaffPosted_Journals } from '../appState/appSlice'
import AppWidgetHeader from './global/AppWidgetHeader'
import JournalListTable from './JournalListTable'

const JournalWidget = ({ isWidget, setIswidget }) => {
    const [isView, setIsview] = useState(null)
    const calcuAmt = (data) =>{
        const total = data&& data.reduce((a, v) =>+v.amount+ a, 0)
        return total
    }
    const staffJournals = useSelector(selectStaffPosted_Journals)
    return (
        <Fragment>
            <div className='app__Widget'>
                <AppWidgetHeader
                    isWidget={isWidget}
                    setIswidget={setIswidget}
                    title='Journal List' 
                />
                <>
                <table className='table table-sm table-striped table-hover'>
                    <thead style={{top: '60px', position: 'sticky', background: '#EDEDED'}}>
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
                                const { name, amount, je_date, uuid, je_ID } = sje
                                return (
                                    <Fragment key={index}>
                                        <tr>
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
                                                <IconButton size='small'
                                                    onClick={() =>setIsview(uuid)}
                                                >
                                                    <MoreVertOutlined style={{color: '#20c997'}} />
                                                </IconButton>
                                               
                                                </div>
                                            </td>
                                        </tr>
                                        {/* Component */}
                                        
                                        {
                                        isView === uuid  &&
                                        
                                        <JournalListTable jeID= {je_ID} jeUID={uuid} />
                                        }
                                    </Fragment>
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
                </>
            </div>
        </Fragment>
    )
}

export default JournalWidget
