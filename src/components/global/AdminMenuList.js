import { IconButton, ListItem, ListItemText } from '@material-ui/core'
import { More } from '@material-ui/icons'
import React from 'react'
import { Fragment } from 'react'

const AdminMenuList = ({setIsActive}) => {
    return (
        <Fragment>
            <ListItem draggable divider button
                onClick={() =>setIsActive('staff')}
            >
                <ListItemText
                    primary='Staff'
                />
                <More style={{color: '#20c997', fontSize: 20}} />
            </ListItem>
            <ListItem draggable divider button
                onClick={() =>setIsActive('customer')}
            >
                <ListItemText
                    primary='Customer'
                />
                <More style={{color: '#20c997', fontSize: 20}} />
            </ListItem>
            {/* <ListItem draggable divider button
                onClick={() =>setIsActive('expense')}
            >
                <ListItemText
                    primary='Expense'
                />
                <More style={{color: '#20c997', fontSize: 20}} />
            </ListItem>
            <ListItem draggable divider button
                onClick={() =>setIsActive('sale')}
            >
                <ListItemText
                    primary='Sale'
                />
                <More style={{color: '#20c997', fontSize: 20}} />
            </ListItem> */}
            {/* <ListItem draggable divider button
                onClick={() =>setIsActive('posting')}
            >
                <ListItemText
                    primary='Posting'
                />
                <More style={{color: '#20c997', fontSize: 20}} />
            </ListItem> */}
            <ListItem draggable divider button
                onClick={() =>setIsActive('ps')}
            >
                <ListItemText
                    primary='Property/Service'
                />
                <More style={{color: '#20c997', fontSize: 20}} />
            </ListItem>
            <ListItem draggable divider button
                onClick={() =>setIsActive('account')}
            >
                <ListItemText
                    primary='Account'
                />
                <More style={{color: '#20c997', fontSize: 20}} />
            </ListItem>
            {/* <ListItem draggable divider button
                onClick={() =>setIsActive('journal')}
            >
                <ListItemText
                    primary='Journal'
                />
                <More style={{color: '#20c997', fontSize: 20}} />
            </ListItem> */}
            <ListItem draggable divider button
                onClick={() =>setIsActive('security')}
            >
                <ListItemText
                    primary='Security'
                />
                <More style={{color: '#20c997', fontSize: 20}} />
            </ListItem>
        </Fragment>
    )
}

export default AdminMenuList
