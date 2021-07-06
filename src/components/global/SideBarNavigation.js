import { Collapse, List, ListItem, ListItemIcon, ListItemText } from '@material-ui/core'
import { CheckCircle, Edit, ExpandLess, ExpandMore, HistoryTwoTone, MonetizationOn, Person, Receipt, ShoppingCart } from '@material-ui/icons';
import React, { useState } from 'react'
import { Fragment } from 'react';
import { useSelector } from 'react-redux';
import { selectUser } from '../../appState/appSlice';
import UserRoles from './UserRoles'

const SideBarNavigation = () => {
    const user = useSelector(selectUser)
    const [collapse, setCollapse] = useState()
    return (
        <div className='list__Box'>
            {
                user&&
                user.entries&&
                <Fragment>
                    <ListItem button onClick={() =>setCollapse(1)} className={collapse==1?'isactive': ''}>
                        <ListItemIcon>
                        <Edit />
                        </ListItemIcon>
                        <ListItemText primary="Entries" />
                        {collapse==1 ? <ExpandLess /> : <ExpandMore />}
                    </ListItem>
                    <Collapse in={collapse==1? true: false} timeout="auto" unmountOnExit className='list__Container'>
                        <List component="div" disablePadding>
                            <UserRoles  entries={user.entries} />
                        </List>
                    </Collapse>
                </Fragment>
            }
            {
                user&&
                user.expense&&
                <Fragment>
                    <ListItem button onClick={() =>setCollapse(2)} className={collapse==2?'isactive': ''}>
                        <ListItemIcon>
                        <MonetizationOn />
                        </ListItemIcon>
                        <ListItemText primary="Expense" />
                        {collapse==2 ? <ExpandLess /> : <ExpandMore />}
                    </ListItem>
                    <Collapse in={collapse ==2?true:false} timeout="auto" unmountOnExit className='list__Container'>
                        <List component="div" disablePadding>
                        {
                            user&&
                            <UserRoles  expense={user.expense} />
                        }
                        </List>
                    </Collapse>
                </Fragment>
            }
            {
                user&&
                user.sales&&
                <Fragment>
                <ListItem button onClick={() =>setCollapse(3)} className={collapse==3?'isactive': ''}>
                    <ListItemIcon>
                    <ShoppingCart />
                    </ListItemIcon>
                    <ListItemText primary="Sales" />
                    {collapse==2 ? <ExpandLess /> : <ExpandMore />}
                </ListItem>
                <Collapse in={collapse==3?true:false} timeout="auto" unmountOnExit className='list__Container'>
                    <List component="div" disablePadding>
                        <UserRoles  sales={user.sales} />
                    </List>
                </Collapse>
                </Fragment>
            }
            {
                user&&
                user.accountant&&
                <Fragment>
                    <ListItem button onClick={() =>setCollapse(4)} className={collapse==4?'isactive': ''}>
                        <ListItemIcon>
                        <HistoryTwoTone />
                        </ListItemIcon>
                        <ListItemText primary="Accounting" />
                        {collapse==4 ? <ExpandLess /> : <ExpandMore />}
                    </ListItem>
                    <Collapse in={collapse==4?true:false} timeout="auto" unmountOnExit className='list__Container'>
                        <List component="div" disablePadding>
                            <UserRoles  accountant={user.accountant}/>
                        </List>
                    </Collapse>
                </Fragment>
            }
            {
                user&&
                user.md&&
                <Fragment>
                    <ListItem button onClick={() =>setCollapse(5)} className={collapse==5?'isactive': ''}>
                        <ListItemIcon>
                        <CheckCircle />
                        </ListItemIcon>
                        <ListItemText primary="Approval" />
                        {collapse==5 ? <ExpandLess /> : <ExpandMore />}
                    </ListItem>
                    <Collapse in={collapse==5?true:false} timeout="auto" unmountOnExit className='list__Container'>
                        <List component="div" disablePadding>
                            <UserRoles  md={user.md} />
                        </List>
                    </Collapse>
                </Fragment>
            }
            {
                user&&
                user.is_superuser&&
                <Fragment>
                    <ListItem button onClick={() =>setCollapse(6)} className={collapse==6?'isactive': ''}>
                        <ListItemIcon>
                        <Person />
                        </ListItemIcon>
                        <ListItemText primary="Adminstrator" />
                        {collapse==6 ? <ExpandLess /> : <ExpandMore />}
                    </ListItem>
                    <Collapse in={collapse==6?true:false} timeout="auto" unmountOnExit className='list__Container'>
                        <List component="div" disablePadding>
                        
                            <UserRoles  admin={user.is_superuser} />
                                
                        </List>
                    </Collapse>
                </Fragment>
            }
        </div>
    )
}

export default SideBarNavigation
