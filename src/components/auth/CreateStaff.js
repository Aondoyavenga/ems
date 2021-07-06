import { IconButton, Paper, } from '@material-ui/core'
import { ChevronLeft, PlusOne } from '@material-ui/icons'
import React, { useState } from 'react'
import AppBackdrop from '../global/AppBackDrop'
import AppSnackbar from '../global/AppSnackbar'
import LoginForm from './LoginForm'
import UserCreationForm from './UserCreationForm'

const CreateStaff = () => {
    const [Error, setError] = useState()
    const [open, setOpen] = useState(false)
    const [success, setSuccess] = useState(false)
    const [user, setUser] = useState({
        username: '',
        password: ''
    })
    const [swap, setSwap] = useState(false)
    return (
        <div className='auth__FormContainer'>
            <AppBackdrop setOpen={setOpen} open={open} />
            <AppSnackbar message={Error} open={success} setOpen={setSuccess} />
           <form method='post'>
               <div className='row align-items-center justify-content-center d-flex'>
                    <Paper className='col-lg-4 col-md-4 p-4'>
                       {    swap&&
                           <UserCreationForm
                           swap={swap}
                           user={user}
                           setUser={setUser}
                           setSwap={setSwap}
                           />
                       }
                       {!swap&&
                           <LoginForm
                            user={user}
                            open={open}
                            Error={Error}
                            setOpen={setOpen}
                            setUser={setUser}
                            setError={setError}
                            setSuccess={setSuccess}
                           />
                        }
                       <IconButton
                        onClick={() =>setSwap(!swap)}
                       >
                          {
                              swap?
                              <ChevronLeft />
                              :
                              <PlusOne />
                          }
                       </IconButton>
                    </Paper>
                </div>
           </form>
        </div>
    )
}

export default CreateStaff
// password, is_superuser, username,
// first_name, last_name, email, is_staff, is_active, date_joined