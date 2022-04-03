import Button from '@material-ui/core/Button';
import Search from '@material-ui/icons/Search';
import React, { Fragment } from 'react'

const RenderPeriodicTable = ({ data, setData, handleChange, handleSearch, containerSyle }) =>{
    return (
        <Fragment>
             <table
                style={{
                    top: 0,
                    zIndex: 222,
                    width: "90%",
                    margin: "auto",
                    position: "sticky",
                    ...containerSyle
                }}
                className="mt-1 table-bordered hide-on-print"
                >
                <thead>
                    <th>From</th>
                    <th>
                    <input
                    type='date'
                    value={data.start_date}
                    onChange={(e) =>
                        setData({
                        ...data,
                        start_date: e.target.value,
                        })
                    }
                    style={{
                        width: "100%",
                        outline: "none",
                        border: "none",
                        height: "30px",
                    }}
                    />
                    </th>
                    <th>To</th>
                    <th>
                    <input
                        name="end_date"
                        type="date"
                        value={data.end_date}
                        onChange={(e) => handleChange(e)}
                    />
                    </th>
                    <th>
                    <Button
                        size="small"
                        style={{
                        color: "white",
                        width: "100%",
                        background: "#2a3f54",
                        }}
                        endIcon={<Search />}
                        onClick={() => handleSearch()}

                    >
                        Search
                    </Button>
                    </th>
                </thead>
            </table>
        </Fragment>
    )
}

export default RenderPeriodicTable;