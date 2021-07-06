import { Paper } from '@material-ui/core'
import React from 'react'
import AppWidgetHeader from './global/AppWidgetHeader'

const ReceivePaymentWidget = ({ open, setOpen, isWidget, setIswidget }) => {
    return (
        <div className='app__Widget'>
            <AppWidgetHeader
                isWidget={isWidget}
                setIswidget={setIswidget}
                title='Received Payment' 
            />
            <section className='app__WidgetContainer'>
                {/* <AccountCreationForm
                    open={open}
                    setOpen={setOpen}
                /> */}
            </section>
        </div>
    )
}

export default ReceivePaymentWidget
