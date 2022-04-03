import db from "../../db.js";
import createdAt from "../../middleware/createdAt.js";

const get_All_Sales_Pending = (req, res) => {
  const query = `
    SELECT sales_model.id,
    sales_model.uuid,
    sales_model.property_name,
    sales_model.property,
    sales_model.amount,
    sales_model.amount_paid,
    sales_model.period,
    sales_model.applicant,
    sales_model.build_category,
    sales_model.sale_date,
    sales_model.due_date,
    sales_model.createdAt,
    sales_model.createdBy_FK,
    sales_model.edited_By,
    sales_model.updatedAt,
    sales_model.status,
    sales_model.md_date,
    sales_model.md_status,
    sales_model.md_session,
    customer_customermodel.customer_name AS applicant_name
    FROM sales_model 
    JOIN customer_customermodel
    ON sales_model.applicant = customer_customermodel.id
    WHERE status=0 AND md_status=0 ORDER BY customer_customermodel.customer_name ASC
  `;
  const salesItemquery = `
  SELECT sales_items_model.id, sales_items_model.qty, sales_items_model.amount, sales_items_model.sale_ID, sales_items_model.createdAt, 
  prop_servicemodel.name AS property_name, sales_items_model.property AS property_id, location.name AS location_name, 
  sales_items_model.location AS location_id, building_category.name AS building_name, sales_items_model.building_category AS building_id,
  sales_items_model.plot_number
    FROM sales_items_model
    JOIN prop_servicemodel
    ON sales_items_model.property = prop_servicemodel.id
    JOIN location
    ON sales_items_model.location = location.id
    JOIN building_category
    ON sales_items_model.building_category = building_category.id
  `;
  db.query(query, [0, 0], (error, result) => {
    if (error) return console.error(error.message);
    db.query(salesItemquery, (err, itemResult) =>{
      if(err) return res.send(err.message);

      const sales = result.map(sale =>{
        return {
          	
          id: sale.id,
          uuid: sale.uuid,
          property_name: sale.property_name,
          property: sale.property,
          amount: sale.amount,
          amount_paid: sale.amount_paid,
          period: sale.period,
          applicant: sale.applicant,
          applicant_name: sale.applicant_name,
          build_category: sale.build_category,
          sale_date: sale.sale_date,
          due_date: sale.due_date,
          createdAt: sale.createdAt,
          createdBy_FK: sale.createdBy_FK,
          updatedAt: sale.updatedAt,
          status: sale.status,
          md_date: sale.md_date,
          md_status: sale.d_status,
          md_session: sale.md_session,
          items: itemResult.filter(item =>item.sale_ID == sale.uuid)

        }
      })
      return res.status(200).send(sales)
    })
  });
};

const get_All_Sale_Scheldule = (req, res) => {
  const { uuid } = req.params;
  const query = `SELECT * FROM sales_scheldule_model WHERE sale_uuid=?`;
  db.query(query, [uuid], (error, result) => {
    if (error) return console.error(error.message);
    res.status(200).send(result);
  });
};

const get_Payment_History = (req, res) => {
  const { uuid } = req.params;
    const query = `
      SELECT sales_model.uuid, sales_model.amount, sales_model.applicant_name, sales_model.amount_paid, sales_model.applicant, 
      sales_model.due_date, transactionmodel.ticket_no AS rcpt_no, transactionmodel.account_FK, transactionmodel.amount AS tx_amount, 
      transactionmodel.pay_method, transactionmodel.description, transactionmodel.amount_in_words, transactionmodel.tx_date, 
      customer_customermodel.avatar,customer_customermodel.customer_name, customer_customermodel.phone_no, transactionmodel.paid FROM sales_model
      JOIN customer_customermodel ON(customer_customermodel.id =sales_model.applicant)
      JOIN transactionmodel ON(transactionmodel.rcpt_no=sales_model.uuid)
      WHERE sales_model.status = 0 AND sales_model.applicant =?
    `;

    const queryPropty = `
    SELECT sales_items_model.qty, sales_items_model.amount, sales_items_model.plot_number, sales_items_model.createdAt,
      prop_servicemodel.name AS property, location.name AS location, building_category.name AS buildCategory
      FROM sales_items_model
      JOIN prop_servicemodel ON(prop_servicemodel.id = sales_items_model.property)
      JOIN location ON(location.id = sales_items_model.location)
      JOIN building_category ON(building_category.id = sales_items_model.building_category)
      WHERE sale_ID=?
    `;
    
    
  db.query(query, [uuid], (error, repayment) => {
    if (error) return res.status(404).send(error.message);

      if(repayment.length > 0){
        db.query(queryPropty, [repayment[0].uuid], (error, item) => {
          if (error) return res.status(404).send(error.message);
            
            return  res.status(200).send({repayment, item})
        });
       
      }else {
        return  res.status(200).send({})
      }
     
  });
 
};



const get_All_Paid_On_Pay = (req, res) => {
  const query = `
        SELECT * FROM sales_model ORDER BY updatedAt DESC
    `;
  db.query(query, (error, result) => {
    if (error) return console.error(error.message);
    res.status(200).send(result);
  });
};

const get_All_Sales = (req, res) => {
  const query = `
    SELECT 
    sales_model.id,
    sales_model.uuid,
    sales_model.property,
    sales_model.amount,
    sales_model.amount_paid,
    sales_model.period,
    sales_model.applicant,
    sales_model.applicant_name,
    sales_model.build_category,
    sales_model.sale_date,
    sales_model.due_date,
    sales_model.createdAt,
    sales_model.createdBy_FK,
    sales_items_model.property,
    prop_servicemodel.name AS property_name
    FROM sales_model
    JOIN sales_items_model
    ON sales_model.uuid = sale_ID
    JOIN prop_servicemodel
    ON sales_items_model.property = prop_servicemodel.id ORDER BY sales_model.updatedAt DESC
    `;
  db.query(query, (error, result) => {
    if (error) return res.status(404).send(error.message);
    res.status(200).send(result);
  });
};

const get_Sale_Repayment_Report = (req, res) => {
  const { from, to } = req.params;
  const query = `
        SELECT sales_model.applicant_name, sales_model.amount, sales_model.property_name,
        sales_model.amount_paid, sales_model.due_date, transactionmodel.amount AS tx_amount, 
        transactionmodel.rcpt_no, transactionmodel.account_FK, transactionmodel.pay_method, sales_model.status, transactionmodel.tx_date
        FROM sales_model
        JOIN transactionmodel ON( sales_model.uuid = transactionmodel.rcpt_no)
        WHERE transactionmodel.tx_date BETWEEN ? AND ? ORDER BY sales_model.updatedAt DESC
    `;

  db.query(query, [from, to], (error, result) => {
    if (error) return res.status(404).send(error.message);
    res.status(200).send(result);
  });
};

const post_Sale_Scheldule = (VALUES) => {
  const query = `INSERT INTO sales_scheldule_model
        (
            sale_uuid, applicant_name,
            amount,  period, date, property_name
        )
        VALUES ?
    `;
  db.query(query, [VALUES], (error, result) => {
    if (error) return console.error(error.message);
    return true;
  });
};

const handleApproval = (req, res) => {
  const { username } = req.user;
  const { id } = req.body;
  //    return console.log(username)
  const query = `UPDATE sales_model SET status=?, md_status =?, md_session=?, md_date=? WHERE id=?`;
  db.query(query, [1, 1, username, createdAt, id], (error, result) => {
    if (error) return console.error(error.message);
    res.status(201).send({ message: "Approved" });
  });
};

const handle_Update_Sale_Item = async (data) => {
  
  const query = `INSERT INTO sales_items_model 
      (id, qty, amount, plot_number, sale_ID, property, location, createdAt, building_category)
      VALUES ? ON DUPLICATE KEY UPDATE 
      qty = VALUES(qty),
      amount = VALUES(amount),
      plot_number = VALUES(plot_number),
      sale_ID = VALUES(sale_ID),
      property = VALUES(property),
      location = VALUES(location),
      createdAt = VALUES(createdAt),
      building_category = VALUES(building_category)
  `;
  
  
    db.query(query, [data], (error, result) => {
      if (error) throw error;
      return result;
    });
  return true
 
};

const handle_Sale_Update = (req, res) =>{
  const { id, username } = req.user;
  const {
      uuid,
      total,
      period,
      applicant_name,
      sale_date,
      due_date,
      VALUES,
      applicant,
  } = req.body;

  const querProperty = `SELECT id, quantity, name FROM prop_servicemodel`;
  const updatePropertyQuery =`
      UPDATE prop_servicemodel SET quantity =? WHERE id =?
  `;

  const query = `UPDATE sales_model
    SET amount=?, period=?,
    sale_date=?, due_date=?, edited_By=? WHERE uuid =?
  `;    
         
  const validate = `SELECT applicant FROM sales_model WHERE applicant =? AND status=?`;

  db.query(querProperty, async(err, resp) =>{
      if(err){
          
         return res.status(501).send(err.message)
      }
       
      const property = VALUES.map(item => {
         return resp.find(p => p.id == parseInt(item[5] ))
         
      })
      
      // for (let i = 0; i < VALUES.length; i++) {
      //     const element = property[i];
         
          
      // }
      let ERRORS = []
      VALUES.map((item, index) =>{
        const element = property[index]
        const isMore = element.quantity < parseInt(VALUES[index][1]) ? true: false
        if(!isMore) {
          db.query(updatePropertyQuery, [element.quantity - parseInt(VALUES[index][1]), element.id], (error, update) =>{
              if(error) return res.status(404).send(error.message);
          })
          return ERRORS
        }
        return ERRORS.push({name: element.name, quantity: element.quantity})
        
      }, [])

      if(!ERRORS.length> 0){
        // db.query(validate, [applicant, 0], (error, result) => {
        //   if (error) return res.status(404).send(error.message);
        //   if (result && result.length > 0)
        //   return res
        //       .status(401)
        //       .send({ message: `${applicant_name} purchase still open` });
              
          
        // });
        db.query(query, [`${total}`, `${period}`, `${sale_date}`,`${due_date}`, `${username}`, uuid], (error,  result) => {
          if (error) return res.status(404).send(error.message);
  
          return handle_Update_Sale_Item(VALUES)
              .then((message) => res.status(201).send({ message: `${applicant_name} Purchase Updated` }))
              .catch((error) => res.status(404).send(error));
          });
      }else {
        return res.status(404).send({message:  `${ERRORS[0].name} has ${ERRORS[0].quantity} quantity left for sale`})
      }
  })
}

const handle_Insert_Sale_Item = async (data) => {
  const query = `INSERT INTO sales_items_model (
        qty, amount, plot_number, sale_ID, property,location,createdAt, building_category
    )
    VALUES ?`;
  db.query(query, [data], (error, result) => {
    if (error) return error.message;
    return result;
  });
};

const create_Sale = (req, res) => {
    const { id } = req.user;
    const {
        uuid,
        total,
        period,
        applicant_name,
        sale_date,
        due_date,
        VALUES,
        applicant,
    } = req.body;

    const querProperty = `SELECT id, quantity, name FROM prop_servicemodel`;
    const updatePropertyQuery =`
        UPDATE prop_servicemodel SET quantity =? WHERE id =?
    `;

    const query = `INSERT INTO sales_model
        (
            uuid, amount, period,
            applicant_name, sale_date, due_date, createdAt, createdBy_FK, applicant
        )
        VALUES(
            '${uuid}', '${total}', 
            '${period}', '${applicant_name}', '${sale_date}', 
            '${due_date}', '${createdAt}', '${id}', '${applicant}'
        )
    `;    
           
    const validate = `SELECT applicant FROM sales_model WHERE applicant =? AND status=?`;

    db.query(querProperty, async(err, resp) =>{
        if(err){
            
           return res.status(501).send(err.message)
        }
         
        const property = VALUES.map(item => {
           return resp.find(p => p.id == parseInt(item[4] ))
           
        })
        
        // for (let i = 0; i < VALUES.length; i++) {
        //     const element = property[i];
           
            
        // }
        let ERRORS = []
        VALUES.map((item, index) =>{
          const element = property[index]
          const isMore = element.quantity < parseInt(VALUES[index][0]) ? true: false
          if(!isMore) {
            db.query(updatePropertyQuery, [element.quantity - parseInt(VALUES[index][0]), element.id], (error, update) =>{
                if(error) return res.status(404).send(error.message);
            })
            return ERRORS
          }
          return ERRORS.push({name: element.name, quantity: element.quantity})
          
        }, [])

        if(!ERRORS.length> 0){
          // db.query(validate, [applicant, 0], (error, result) => {
          //   if (error) return res.status(404).send(error.message);
          //   if (result && result.length > 0)
          //   return res
          //       .status(401)
          //       .send({ message: `${applicant_name} purchase still open` });            
          // });
          db.query(query, (error, result) => {
            if (error) return res.status(404).send(error.message);
    
            return handle_Insert_Sale_Item(VALUES)
                .then((message) => res.status(201).send({ message: `${uuid} Created` }))
                .catch((error) => res.status(404).send(error));
            });
        }else {
          return res.status(404).send({message:  `${ERRORS[0].name} has ${ERRORS[0].quantity} quantity left for sale`})
        }
    })

    
};
const SALES = {
  get_All_Sales,
  create_Sale,
  handleApproval,
  get_All_Sales_Pending,
  get_All_Sale_Scheldule,
  get_Payment_History,
  get_All_Paid_On_Pay,
  handle_Sale_Update,
  get_Sale_Repayment_Report,
};

export default SALES;
