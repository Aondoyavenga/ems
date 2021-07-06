import { Button, IconButton } from '@material-ui/core'
import { Close } from '@material-ui/icons'
import { MDBModal, MDBModalBody, MDBModalFooter, MDBModalHeader } from 'mdbreact'
import React from 'react'
import { Fragment } from 'react'
import { useSelector } from 'react-redux'
import { selectToken } from '../appState/appSlice'
import AvatarUpload from './UploadAvatar'

const Mandate = ({ url, mandate, setMandate, setOpen }) => {
    const token = useSelector(selectToken)
    return (
        <Fragment>
            <MDBModal isOpen={mandate} backdrop={false} 
            position='right' fullHeight={true}
            >
                <Button variant='contained'
                    className='p-2'
                    style={{background: '#2A3F54', color: 'white'}}
                > 
                    Upload {mandate && mandate.split(' ')[1]} Mandate
                </Button>
                <MDBModalBody>
                    {/* imported component */}
                    <AvatarUpload setOpen={setOpen} 
                        mandate={mandate} token={token}
                        url={url}
                    />
                </MDBModalBody>
                <MDBModalFooter>                    
                    <IconButton color='secondary'
                        onClick={() =>setMandate(!mandate)}
                    >
                        <Close color='action' />
                    </IconButton>
                </MDBModalFooter>
            </MDBModal>
        </Fragment>
    )
}

export default Mandate
