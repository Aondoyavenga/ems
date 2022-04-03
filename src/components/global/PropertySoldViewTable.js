import { Typography } from "@material-ui/core";
import React, { Fragment } from "react";

const RenderList = ({
    id, qty, index, amount, plot_number, sale_date,
    building, createdAt, customer_name, amount_paid
}) =>{
    return (
        <Fragment>
            <tr>
                <td
                    style={{textAlign: 'center'}}
                >
                    <Typography
                        style={{
                          
                            color: '#20c997'
                        }}
                    > {index+1} </Typography>
                </td>
                <td
                    style={{textAlign: 'left'}}
                > {customer_name} </td>
                <td> {building} </td>
                <td> {qty} </td>
                <td> {plot_number} </td>
                <td>
                    <Typography color='error'>
                        {amount?.toLocaleString()}
                    </Typography>
                </td>
                <td>
                    <Typography
                        style={{
                          
                            color: '#20c997'
                        }}
                    >
                        {amount_paid?.toLocaleString()}
                    </Typography>
                </td>
                <td> {new Date(sale_date).toLocaleDateString()} </td>
            </tr>
        </Fragment>
    )
}

const PropertySoldViewTable = ({items}) =>{
    return (
        <Fragment>
            <table
                className="table-hover table-bordered"
                style={{ width: "98%", margin: "auto" }}
            >
                <thead>
                <th style={{ border: "1px solid #F7F7F7F7" }}>#</th>
                <th style={{ border: "1px solid #F7F7F7F7" }}>Customer Name</th>
                <th style={{ border: "1px solid #F7F7F7F7" }}>Building Category</th>
                <th style={{ border: "1px solid #F7F7F7F7" }}>Quantity</th>
                <th style={{ border: "1px solid #F7F7F7F7" }}>Plot Number</th>
                <th style={{ border: "1px solid #F7F7F7F7" }}> Cost Amt (<s>N</s>)</th>
                <th style={{ border: "1px solid #F7F7F7F7" }}> Earned Amt (<s>N</s>)</th>
                <th style={{ border: "1px solid #F7F7F7F7" }}>Date Sold</th>
                </thead>
                <tbody>
                    {items?.map((item, index) =>{
                        return (
                            <RenderList
                                {...item}
                                index={index}
                            />
                        )
                    })}
                    
                </tbody>
            </table>
            
        </Fragment>
    )
}

export default PropertySoldViewTable;