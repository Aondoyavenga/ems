import { Button, Grid, IconButton, } from '@material-ui/core'
import { Close, } from '@material-ui/icons'
import { MDBModal, MDBModalBody, MDBModalFooter, MDBModalHeader } from 'mdbreact'
import React from 'react'
import Receipt from './Receipt'

const CashReceipt = ({ rows, isOpen, setIsOpen}) => {
    return (
        <div>
            <MDBModal isOpen={isOpen} size='lg'  centered
            >
                <MDBModalHeader
                    style={{ top: '0', position: 'sticky', zIndex: 222,
                    background: '#2A3F54', color: 'white'
                 }}
                >Receipts <sup style={{color: '#20c997'}}> {rows && rows.length} </sup> </MDBModalHeader>
                <MDBModalBody>
                    <Grid container>
                        
                        {
                            rows&&
                            rows.map((row, index) =>{
                                return (
                                    <Receipt key={index} {...row} />
                                )
                            })
                        }
                       
                    </Grid>
                </MDBModalBody>
                <MDBModalFooter>
                    
                    <Button
                        variant='contained'
                        
                        style={{background: '#2A3F54', 
                        color: 'white', marginRight: '25px'}}
                    >
                        Save
                    </Button>
                    <IconButton color='secondary'
                        onClick={() =>setIsOpen(!isOpen)}
                    >
                        <Close color='action' />
                    </IconButton>
                </MDBModalFooter>
            </MDBModal>
        </div>
    )
}

export default CashReceipt
