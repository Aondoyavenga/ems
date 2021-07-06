import { Grid } from '@material-ui/core'
import React, { useState } from 'react'
import { Fragment } from 'react'
import AdminAccountSetting from './AdminAccountSetting'
import AdminCustomerSetting from './AdminCustomerSetting'
import AdminExpenseSetting from './AdminExpenseSetting'
import AdminPostingSetting from './AdminPosting'
import AdminPsSetting from './AdminPsSetting'
import AdminSaleSetting from './AdminSaleSetting'
import AdminStaffSetting from './AdminStaffSetting'
import AdminSideMenu from './charts/AdminSideMenu'
import AppHeader from './global/AppHeader'

const AdminFeed = () => {
    const [isActive, setIsActive] = useState()

    const renderAdminMenu = (active) =>{
        switch (active) {
            case 'staff':
            return <AdminStaffSetting />

            case 'customer':
            return <AdminCustomerSetting />

            case 'expense':
            return <AdminExpenseSetting />

            case 'sale':
            return <AdminSaleSetting />

            case  'posting':
            return <AdminPostingSetting />

            case 'ps':
                return <AdminPsSetting />
            
            case 'account':
                return <AdminAccountSetting />
        
            default:
                return <AdminStaffSetting />
                
        }
    }

    
    
    return (
        <Fragment>
            <div className='app__Feed'>
                <AppHeader title='Settings' />
                <div className='admin__FeedContainer'>
                    <Grid container spacing={2} >
                        <Grid item lg={2} md={2} className='admin__Menu'>
                            <AdminSideMenu
                                isActive={isActive}
                                setIsActive={setIsActive}
                            />
                        </Grid>
                        <Grid item lg={10} md={10}>
                            {
                               renderAdminMenu(isActive)
                            }
                        </Grid>
                    </Grid>
                </div>
            </div> 
        </Fragment>
    )
}

export default AdminFeed
