import { ListItem, ListItemIcon, ListItemText, makeStyles } from '@material-ui/core'
import { Group, House, HowToVote, IndeterminateCheckBox, Lock, LockOpen, Person, PersonAdd, RedeemRounded } from '@material-ui/icons'
import React, { Fragment } from 'react'
import FiberManualRecordIcon from '@material-ui/icons/FiberManualRecord';
import { Link } from 'react-router-dom/cjs/react-router-dom.min';
import { useSelector } from 'react-redux';
import { selectUser } from '../../appState/appSlice';
const useStyles = makeStyles((theme) => ({
    root: {
      width: '100%',
      maxWidth: 360,
      backgroundColor: theme.palette.background.paper,
    },
    nested: {
      paddingLeft: theme.spacing(4),
    },
  }));

function UserRoles({ admin, expense, sales, entries, accountant, ico, md }) {
    const classes = useStyles()
    const user = useSelector(selectUser)
    return (
        <Fragment>
          {/* entries */}
          { entries&&
            <Fragment>
              {/* <Link to='/bills'>
                <ListItem button className={classes.nested}>
                  <ListItemIcon>
                    <FiberManualRecordIcon style={{ fontSize: '12px', color: 'gray' }} />
                  </ListItemIcon>
                  <ListItemText secondary="Bills" />
                </ListItem>
              </Link> */}
              {/* <Link to='/invoice'>
                <ListItem button className={classes.nested}>
                  <ListItemIcon>
                    <FiberManualRecordIcon style={{ fontSize: '12px', color: 'gray' }} />
                  </ListItemIcon>
                  <ListItemText secondary="Invoices" />
                </ListItem>
              </Link> */}
              <Link to='/staffs'>
                <ListItem button className={classes.nested}>
                  <ListItemIcon>
                    <FiberManualRecordIcon style={{ fontSize: '12px', color: 'gray' }} />
                  </ListItemIcon>
                  <ListItemText secondary="Staffs" />
                </ListItem>
              </Link>
              <Link to='/customers'>
                <ListItem button className={classes.nested}>
                  <ListItemIcon>
                    <FiberManualRecordIcon style={{ fontSize: '12px', color: 'gray' }} />
                  </ListItemIcon>
                  <ListItemText secondary="Customers" />
                </ListItem>
              </Link>
              {/* <ListItem button className={classes.nested}>
                <ListItemIcon>
                  <AllInbox style={{ fontSize: '12px', color: 'gray' }} />
                </ListItemIcon>
                <ListItemText secondary="Cubicle" />
              </ListItem> */}
            </Fragment>
          }
          {/* Banking officer */}
            { expense &&
              <Fragment>
                <Link to='/expense'>
                  <ListItem button className={classes.nested}>
                    <ListItemIcon>
                      <FiberManualRecordIcon style={{ fontSize: '12px', color: 'gray' }} />
                    </ListItemIcon>
                    <ListItemText secondary="Expense" />
                  </ListItem>
                </Link>
                {/* <Link to='/vendor'>
                  <ListItem button className={classes.nested}>
                    <ListItemIcon>
                      <FiberManualRecordIcon style={{ fontSize: '12px', color: 'gray' }} />
                    </ListItemIcon>
                    <ListItemText secondary="Vendors" />
                  </ListItem>
                </Link> */}
              </Fragment>
            }
              {/* Sales */}
              { sales &&
                <Fragment>
                  
                  <Link to='/sales'>
                    <ListItem button className={classes.nested}>
                      <ListItemIcon>
                        <FiberManualRecordIcon style={{ fontSize: '12px', color: 'gray' }} />
                      </ListItemIcon>
                      <ListItemText secondary="Sales" />
                    </ListItem>
                  </Link>
                  <Link to='/sales/tx'>
                    <ListItem button className={classes.nested}>
                      <ListItemIcon>
                        <FiberManualRecordIcon style={{ fontSize: '12px', color: 'gray' }} />
                      </ListItemIcon>
                      <ListItemText secondary="Posting" />
                    </ListItem>
                  </Link>
                  <Link to='/ps'>
                    <ListItem button className={classes.nested}>
                      <ListItemIcon>
                        <FiberManualRecordIcon style={{ fontSize: '12px', color: 'gray' }} />
                      </ListItemIcon>
                      <ListItemText secondary="Property & Services" />
                    </ListItem>
                  </Link>
                  {/* <Link to='/estimate'>
                    <ListItem button className={classes.nested}>
                      <ListItemIcon>
                        <FiberManualRecordIcon style={{ fontSize: '12px', color: 'gray' }} />
                      </ListItemIcon>
                      <ListItemText secondary="Estimate" />
                    </ListItem>
                  </Link> */}
                  {/* <Link to='/rpayment'>
                    <ListItem button className={classes.nested}>
                      <ListItemIcon>
                        <FiberManualRecordIcon style={{ fontSize: '12px', color: 'gray' }} />
                      </ListItemIcon>
                      <ListItemText secondary="Receive Payment" />
                    </ListItem>
                  </Link> */}
                </Fragment>
              }
              {/* Accounting */}
              {
                accountant&&
                <Fragment>
                  <Link to='/coa'>
                    <ListItem button className={classes.nested}>
                      <ListItemIcon>
                        <FiberManualRecordIcon style={{ fontSize: '12px' }} />
                      </ListItemIcon>
                      <ListItemText secondary="Chart of Accounts" />
                    </ListItem>
                  </Link>
                  <Link to='/je_entry'>
                    <ListItem button className={classes.nested}>
                      <ListItemIcon>
                        <FiberManualRecordIcon style={{ fontSize: '12px' }} />
                      </ListItemIcon>
                      <ListItemText secondary="Journal Entry" />
                    </ListItem>
                  </Link>
                  <Link to={`/${user.username}/reports`}>
                    <ListItem button className={classes.nested}>
                      <ListItemIcon>
                        <FiberManualRecordIcon style={{ fontSize: '12px' }} />
                      </ListItemIcon>
                      <ListItemText secondary="Reports" />
                    </ListItem>
                  </Link>
                </Fragment>
              }

              {/* Ico */}
              {
                ico&&
                <Fragment>
                  <Link to='/inter_control_sme'>
                    <ListItem button className={classes.nested}>
                      <ListItemIcon>
                        <FiberManualRecordIcon style={{ fontSize: '12px' }} />
                      </ListItemIcon>
                      <ListItemText secondary="SME Loans" />
                    </ListItem>
                  </Link>
                  <Link to='/inter_control_micro_credit'>
                    <ListItem button className={classes.nested}>
                      <ListItemIcon>
                        <FiberManualRecordIcon style={{ fontSize: '12px' }} />
                      </ListItemIcon>
                      <ListItemText secondary="Micro-credit Loans" />
                    </ListItem>
                  </Link>
                </Fragment>
              }
              {
                md&&
                <Fragment>
                  <Link to='/applications'>
                    <ListItem button className={classes.nested}>
                      <ListItemIcon>
                        <FiberManualRecordIcon style={{ fontSize: '12px' }} />
                      </ListItemIcon>
                      <ListItemText secondary="Approve" />
                    </ListItem>
                  </Link>
                  
                </Fragment>
              }
          {/* Admin */}
          
          {
            admin &&
            <Link to={`/admin-settings-dashboard/${user.username}`} >
              <ListItem button className={classes.nested}>
                <ListItemIcon>
                <FiberManualRecordIcon style={{ fontSize: '12px', color: 'gray' }} />
                </ListItemIcon>
                <ListItemText secondary="Admin" />
              </ListItem>
            </Link>
          }
        </Fragment>
    )
}

export default UserRoles
