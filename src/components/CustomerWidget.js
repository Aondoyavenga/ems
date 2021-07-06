import React from 'react'
import CustomerCreationForm from './form/CustomerCreationForm'
import AppWidgetHeader from './global/AppWidgetHeader'

const CustomerWidget = ({ open, setOpen, isWidget, setIswidget }) => {
    return (
        <div className='app__Widget'
           
        >
            <AppWidgetHeader
                isWidget={isWidget}
                setIswidget={setIswidget}
                title='Create Customer' 
            />
           
                <CustomerCreationForm
                    open={open}
                    setOpen={setOpen}
                />
           
        </div>
    )
}

export default CustomerWidget
