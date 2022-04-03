import Button from "@material-ui/core/Button";
import Tooltip from "@material-ui/core/Tooltip";
import IconButton from "@material-ui/core/IconButton";

import Undo from "@material-ui/icons/Undo";
import PlusOne from "@material-ui/icons/PlusOne";
import SearchOutlined from "@material-ui/icons/SearchOutlined";
import React, { Fragment } from "react";
import { Link } from "react-router-dom";

const HandleSearch = ({ 
    url, 
    explore, 
    history, 
    isWidget,
    inputType,
    setSearchKey,
    placeHolder
}) =>{
    return (
        <Fragment>
            <div
                style={{
                    gap: 10,
                    width: '100%',
                    display: 'flex',
                    paddingTop: 10,
                    paddingRight: 10,
                    flexDirection: 'row',
                    justifyContent: 'flex-end'
                }}
                className={!isWidget ? 'mt-3' : ''}
            >
                <div
                    id='searchBox'
                    style={{
                        padding: 5,
                        width: isWidget ? '90%' : '30%',
                        display: 'flex',
                        flexDirection: 'row',
                        borderRadius: '50px',
                        boxSizing: 'border-box',
                        backgroundColor: 'white',
                        boxShadow: '0px 2px 2px gray'
                    }}
                >
                    <input 
                        name='searchKy'
                        type={inputType}
                        min={inputType=='number' ? 1: ''}
                        placeholder={placeHolder} 
                        style={{
                            flex: 1,
                            padding: 5,
                            outline: 'none',
                            border: 'none'
                        }}
                        onChange={e => setSearchKey(e.target.value)}
                    />
                    <IconButton
                        size='small'
                    >
                        <SearchOutlined color='action' />
                    </IconButton>
                </div>
                {
                    isWidget ?
                    <Link to={explore}>                       
                        <Button
                            style={{
                                boxSizing: 'border-box',
                                backgroundColor: 'white',
                                boxShadow: '0px 2px 2px gray'
                            }}
                            
                        >
                            Explore
                        </Button>
                    </Link>
                    :
                    <Button
                        color='action'
                        variant='outlined'
                        onClick={() =>history.goBack()}
                        endIcon={
                            <Undo color='action' />
                        }
                        style={{
                            border: 'none',
                            boxSizing: 'border-box',
                            backgroundColor: 'white',
                            boxShadow: '0px 2px 2px gray'
                        }}
                    >
                        Back
                    </Button>
                }
                {
                    !isWidget &&
                    <Link to={url}> 
                    <Tooltip title='Add new sales'>                     
                        <Button
                            style={{
                                width: 100,
                                color: 'white',
                                boxSizing: 'border-box',
                                backgroundColor: '#2a3f54',
                                boxShadow: '0px 2px 2px gray'
                            }}
                            endIcon={
                                <PlusOne />
                            }
                        >
                        New
                        </Button>
                    </Tooltip>
                    </Link>
                }
            </div>
            
        </Fragment>
    )
}

export default HandleSearch;