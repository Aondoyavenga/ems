import { IconButton, Typography } from '@material-ui/core'
import { Dashboard, MoreVert, Search, Settings } from '@material-ui/icons'
import React from 'react'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import './appHeader.css'

const AppHeader = ({ title }) => {
    const history = useHistory()
    return (
        <div className='app__HeaderContainer hide-on-print'>
            <div className='app__HeaderLeft'>
                {
                    title&&
                    <Typography variant='subtitle1' className='ml-2'>
                        {title}
                    </Typography>
                }
            </div>
            <aside className='app__HeaderRight'>
                <IconButton
                    onClick={() =>history.push('/')}
                >
                    <Dashboard />
                </IconButton>
                <IconButton>
                    <Settings />
                </IconButton>
                <IconButton>
                    <MoreVert />
                </IconButton>
            </aside>
        </div>
    )
}

export default AppHeader
