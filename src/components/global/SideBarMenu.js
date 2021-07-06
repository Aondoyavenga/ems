import { Button, IconButton, Typography } from '@material-ui/core'
import { Fullscreen, Power, Settings } from '@material-ui/icons'
import React, { useEffect } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { Link } from 'react-router-dom'
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min'
import { selectToken, selectUser, setToken } from '../../appState/appSlice'
import SideBarNavigation from './SideBarNavigation'

const SideBarMenu = () => {
    const history = useHistory()
    const dispatch = useDispatch()
    const token = useSelector(selectToken)
    const user = useSelector(selectUser)
    useEffect(() =>{
        if(!token){
            return history.push('/')
        }
    }, [token])
    return (
        <div className='side__BarContainer p-1'>
            <div className='side__BarHeader p-2 hide-on-print' >
               <Typography variant='subtitle1'>EMS</Typography>
               {
                user &&
                <Typography
                    variant='subtitle1'
                    style={{color: '#20c997'}}
                >
                    {`${user.first_name} ${user.username}`}
                </Typography>
                }
            </div>
            <section className='p-3'>
                <Button
                    variant='contained' size='small'
                    style={{background: '#2A3F54', width: '100%', color: 'white'}}
                >
                    System Right
                </Button>
                
            </section>
            
            <section className='side__BarMenuContainer'>
               <SideBarNavigation user={user} />
            </section>
            <div className='side__BarFooter'>
                {
                    user &&
                    <Link>
                        <IconButton>
                            <Settings />
                        </IconButton>
                    </Link>
                }
                <IconButton>
                    <Fullscreen />
                </IconButton>
                <IconButton
                    onClick={() =>dispatch(setToken(''))}
                >
                    <Power />
                </IconButton>
            </div>
        </div>
    )
}

export default SideBarMenu
