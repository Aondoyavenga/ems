import { IconButton, Typography } from '@material-ui/core'
import { Close, } from '@material-ui/icons'
import React from 'react'
import { useDispatch } from 'react-redux'

const AppWidgetHeader = ({ title, isWidget, setIswidget }) => {
    const dispatch = useDispatch()
    return (
        <div className='app__HeaderContainer'>
            <div className='app__HeaderLeft'>
                <IconButton
                    onClick={() =>setIswidget(!isWidget)}
                >
                    <Close />
                </IconButton>
            </div>
            <aside className='app__HeaderRight'>
                <Typography variant='subtitle1' className='mr-2'>
                    {title}
                </Typography>
            </aside>
        </div>
    )
}

export default AppWidgetHeader
