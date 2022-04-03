import axios from 'axios'
import React, { Fragment, useEffect, useState } from 'react'
import { useSelector } from 'react-redux'
import { useParams } from 'react-router'
import { selectPendingSales, selectToken } from '../appState/appSlice'
import EditSaleFeed from '../components/EditSaleFeed'
import AppBackdrop from '../components/global/AppBackDrop'
import SideBarMenu from '../components/global/SideBarMenu'

const EditSaleScreen = () => {
    const {uuid} = useParams()
    const token = useSelector(selectToken)
    const [add, setAdd] = useState(false);
    const [open, setOpen] = useState(false)
    const [error, setError] = useState()
    const [success, setSuccess] = useState(false)
    const sales = useSelector(selectPendingSales)
    const [selectedSale, setSelectedSale] = useState()
    const [body, setBody] = useState({
        name: "",
      });
    const [data, setData] = useState({
        uuid: "",
        tx_date: "",
        applicant_name: "",
        due_date: "",
        period: "",
        sale_date: "",
        applicant: "",
        VALUES: [],
        total: "",
    });

    const handleEdit = () =>{
        return
    }

    const add_BuildCategories = (body) => {
        setOpen(true);
        axios
          .post("/build_category", body, {
            headers: {
              Authorization: `Bearer ${token}`,
            },
          })
          .then((categories) => {
            setOpen(false);
          })
          .catch((error) => {
            setOpen(false);
            return error;
          });
      };

      

    useEffect(() =>{
        const saleSelected = sales && sales.find(sale => sale.uuid == uuid)
        return (
            setSelectedSale(saleSelected),
            setData({
                ...data,
                uuid: saleSelected?.uuid,
                tx_date: saleSelected?.sale_date,
                applicant_name: saleSelected?.applicant_name,
                due_date: saleSelected?.due_date,
                period: saleSelected?.period,
                sale_date: saleSelected?.sale_date,
                applicant: saleSelected?.applicant,
                VALUES: [],
                total: saleSelected?.amount,
            })
        )
    }, [uuid])
    return (
        <div className="app">
            <AppBackdrop open={open} />
            <SideBarMenu />
            {/* feed */}
            <EditSaleFeed
                token={token}
                data={data}
                body={body}
                setBody={setBody}
                error={error}
                setError={setError}
                setData={setData}
                setOpen={setOpen}
                success={success}
                sale={selectedSale}
                setSuccess={setSuccess}
                handleEdit={handleEdit}
                add_BuildCategories={add_BuildCategories}
            />
           
        </div>
    )
}

export default EditSaleScreen
