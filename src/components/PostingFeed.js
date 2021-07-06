import { Grid,  IconButton,  Paper } from '@material-ui/core'
import { Search } from '@material-ui/icons'
import axios from 'axios'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { selectDuePayments, selectToken, selectTxAccounts, selectUser, setDuePayments,} from '../appState/appSlice'
import CustomerCard from './CustomerCard'
import AppHeader from './global/AppHeader'
import AppSnackbar from './global/AppSnackbar'
import PostingTicket from './PostingTicket'

const PostingFeed = ({ setOpen, }) => {
    const user = useSelector(selectUser)
    const token = useSelector(selectToken)
    const [success, setSuccess] = useState(false)
    const [message, setMessage] = useState()
    const [searchKey, setSearchKey] = useState()
    const [txSearch, setTxSearch] = useState() 
    const txAccounts = useSelector(selectTxAccounts)

    const [data, setData] = useState({
        rcpt_no: '', 
        tx_type: 'CR',
        pay_method: '', 
        amount: '', 
        description: '',
        account_FK: '', 
        postBy_FK: '', 
        applicant_name:'',
        property_name: '',
        due_date: '',
        amount_in_words: '',
        amount_paid: '',
        amount_in_words: '',
        signature: ''
    })

    //  func
    const handleChange =e=>{
        const name = e.target.name;
        const value = e.target.value;

        setData({
            ...data,
            [name]: value
        })
    }
    const handle_Set_Ticket = (applicant, code, paid) =>{
        const filterduepay = txAccounts &&
        txAccounts.filter(due =>due.cusID == applicant )
       
        if(filterduepay.length >0){
            return setData({
                ...data,
                account_FK: code,
                signature: user && user.signature,
                rcpt_no: filterduepay[0].uuid,
                applicant_name: filterduepay[0].name,
                property_name: filterduepay[0].property_name,
                amount_paid: parseInt(paid),
                description: 'Bein payment for '
            })
            
        }
       
    }

  
    // handle post
    const handlePost = e =>{
        e.preventDefault()
        setOpen(true)
        const body = {
            data
        }
        axios.post('/transaction', body, {
            headers: {
                Authorization: `Bearer ${token}`
            }
        })
        .then(result =>{
            setOpen(false)
            setSuccess(true)
            setMessage(result.data.message)
            
        })
        .catch(error =>{
            setOpen(false)
            if(error){
                console.log(error.response)
            }
        })
        
    } 

    const handleClear = () =>{
        setMessage('')
        setData({
                rcpt_no: '', 
                tx_type: '',
                pay_method: '', 
                amount: '', 
                description: '',
                account_FK: '', 
                tx_date: '', 
                postBy_FK: '',
                amount_in_words: ''
            })
    }

    // handle search
    useEffect(() =>{
        const filterTxAccounts = txAccounts && 
        txAccounts.filter(txacc => txacc.name.includes(searchKey))
        return setTxSearch(filterTxAccounts)
    }, [searchKey])

    return (
        <div className='app__Feed'>
            <AppSnackbar open={success} setOpen={setSuccess} message={message} />
            <AppHeader title='Posting' />
            <div className='m-3'>
                {/* search component */}
                <section className='search__Container'>
                    <div>
                        <input
                            name='search'
                            value={searchKey}
                            placeholder='Search...'
                            onChange={e =>setSearchKey(e.target.value)}
                        />
                        <IconButton size='small'>
                            <Search style={{color: 'GrayText'}} />
                        </IconButton>
                    </div>
                </section>
                <Grid container spacing={2}>
                <Grid item lg={3} md={3} className='hide-on-print'>
                   {
                        txSearch?
                        txSearch.map((txacc, index) => {
                            return (
                             <CustomerCard
                                 post
                                 key={index} {...txacc} 
                                 handle_Set_Ticket={handle_Set_Ticket}
                             />
                            )
                        })
                        :
                       txAccounts&& 
                       txAccounts.map((txacc, index) => {
                           return (
                            <CustomerCard
                                post
                                key={index} {...txacc} 
                                handle_Set_Ticket={handle_Set_Ticket}
                            />
                           )
                       })
                   }
                    
                </Grid>
                    <Grid item lg={9} md={9} style={{marginTop: -40}} >
                        <PostingTicket
                            message={message}
                            setMessage={handleClear}
                            handlePost={handlePost}
                            handleChange={handleChange}
                            data={data} setData={setData}
                        />
                    </Grid>
                </Grid>
            </div>
        </div>     
    )
}

export default PostingFeed
