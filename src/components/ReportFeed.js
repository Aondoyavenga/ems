import { Grid } from '@material-ui/core'
import React, { useState } from 'react'
import { Fragment } from 'react'

import AppHeader from './global/AppHeader'
import ReportsPool from './ReportsPool'

const ReportFeed = () => {
    
    return (
        <Fragment>
            <div className='app__Feed'>
                <AppHeader title='Settings' />
                <div className='admin__FeedContainer'>
                    <Grid container spacing={2} >
                        
                        <Grid item lg={12} md={12} sm={12}>
                            <ReportsPool />
                        </Grid>
                    </Grid>
                </div>
            </div> 
        </Fragment>
    )
}

export default ReportFeed
