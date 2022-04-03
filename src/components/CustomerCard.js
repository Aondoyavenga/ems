import React from 'react'
import { Avatar, IconButton, ListItem,
     ListItemAvatar, ListItemText, Paper, Typography } from '@material-ui/core'
import { ChevronRight, HistoryTwoTone } from '@material-ui/icons'
import { Fragment } from 'react'
import { Link } from 'react-router-dom'
import { useSelector } from 'react-redux'
import { selectCustomers } from '../appState/appSlice'
const CustomerCard = ({post, id, name, cusID, code, amount_paid, avatar, handle_Set_Ticket}) => {
    const customers = useSelector(selectCustomers)
    const get_Avatar = (ID) =>{
        const avatar = customers && customers.filter(cus =>cus.id ==ID)[0].avatar
        return avatar
    }
    return (
       <Fragment>
            <Paper className='mb-2' 
                style={{
                    background: '#F7F7F7F7', 
                }}
            >
                <ListItem button
                    onClick={() => handle_Set_Ticket? handle_Set_Ticket(cusID, code, amount_paid): {}}
                >
                    <ListItemAvatar>
                        <Avatar 
                            alt={name}
                            src={get_Avatar(cusID)}
                        />
                    </ListItemAvatar>
                    <ListItemText
                        primary={
                            
                            <Typography variant='caption' > {name} </Typography>
                        }
                    />
                    <Link to={`/sales/tx/${id}/${name}`}>
                        <IconButton size='small'>
                            <HistoryTwoTone 
                                style={{color: '#20c997'}}
                            />
                        </IconButton>
                    </Link>
                    {
                        post&&
                        <IconButton size='small'>
                            <ChevronRight />
                        </IconButton>
                    }
                </ListItem>
            </Paper>
        </Fragment>
)
}

export default CustomerCard
