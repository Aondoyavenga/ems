import React, { useEffect, useState } from "react";
import { MDBContainer } from "mdbreact";
import { useSelector } from "react-redux";
import { selectAccounts, selectAllStaffs, selectCustomers, selectUserExpenseRaised } from "../../appState/appSlice";
import { Fragment } from "react";
import { Button } from "@material-ui/core";
import AdminMenuList from "../global/AdminMenuList";

const AdminSideMenu = ({setIsActive}) => {
  const userExpneses = useSelector(selectUserExpenseRaised)
  const customers = useSelector(selectCustomers)
  const accounts = useSelector(selectAccounts)

    return (
        <Fragment>
            <section className='p-2'>
                <Button 
                    variant='contained' size='small'
                    style={{background: '#2A3F54', width: '100%', color: 'white'}}
                >
                    Admin Menu
                </Button>
                <div className='admin__MenuList mt-2'>
                    <AdminMenuList
                        setIsActive={setIsActive}
                    />
                </div>
            </section>
        </Fragment>
    );
  }

export default AdminSideMenu;