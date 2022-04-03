import React from 'react'
import PropServiceForm from './form/PropServiceForm'
import AppWidgetHeader from './global/AppWidgetHeader'

const PropServiceWidget = ({ open, setOpen, isWidget, setIswidget }) => {
    return (
        <div className='app__Widget'>
            <AppWidgetHeader
                isWidget={isWidget}
                setIswidget={setIswidget}
                title='Add Property/ Service' 
            />
            <section className='app__WidgetContainer'>
                <PropServiceForm
                    open={open}
                    setOpen={setOpen}
                />
            </section>
        </div>
    )
}

export default PropServiceWidget
