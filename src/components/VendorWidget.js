import React from 'react'
import VendorCreationForm from './form/VendorCreationForm'
import AppWidgetHeader from './global/AppWidgetHeader'

const VendorrWidget = ({ open, setOpen, isWidget, setIswidget }) => {
    return (
        <div className='app__Widget'>
            <AppWidgetHeader
                isWidget={isWidget}
                setIswidget={setIswidget}
                title='Create Vendor' 
            />
            <section className='app__WidgetContainer'>
                <VendorCreationForm
                    open={open}
                    setOpen={setOpen}
                />
            </section>
        </div>
    )
}

export default VendorrWidget
