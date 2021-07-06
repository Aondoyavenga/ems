import { Paper } from '@material-ui/core'
import React from 'react'
import AccountCreationForm from './form/AccountCreationForm'
import AppWidgetHeader from './global/AppWidgetHeader'

const CoaWidget = ({ open, setOpen, isWidget, setIswidget }) => {
    return (
        <div className='app__Widget'>
            <AppWidgetHeader
                isWidget={isWidget}
                setIswidget={setIswidget}
                title='Create Account' 
            />
            <section className='app__WidgetContainer'>
                <AccountCreationForm
                    open={open}
                    setOpen={setOpen}
                />
            </section>
        </div>
    )
}

export default CoaWidget
