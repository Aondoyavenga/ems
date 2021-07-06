import bcrypt from 'bcrypt'
import { v4 } from 'uuid'
import db from '../db.js'
import jwt from 'jsonwebtoken'
import jwtkey from '../middleware/index.js'
import createdAt from '../middleware/createdAt.js'
import VARABLES from '../middleware/varables.js'

const d = new Date()
const get_Active_User = (req, res) =>{
    res.status(200).send(req.user)
}
const get_AllStaff = (req, res) =>{
    const query = `SELECT * FROM auth_user`
    db.query(query, (err, staffs) =>{
        if(err) return res.status(404).send(err);
        res.status(200).send(staffs)
    })
}
const create__Staff = (req, res) =>{
    const {id} = req.user;
    const { password, last_login,
        is_superuser, first_name,
        last_name, email, date_joined,
        mobile, md, entries, sales, expense, accountant
    } = req.body
    
    const character = first_name[0]+last_name[0]
    const uuid = character+'@'+d.getMinutes()+d.getSeconds()

    bcrypt.genSalt(10, (err, salt) =>{
        if(err) {
            return next(err)
        }
        bcrypt.hash(password, salt, (err, hash) =>{
            if(err){
                return next(err)
            }
            const query = `INSERT INTO auth_user (uuid, password, is_superuser, username,
                            first_name, last_name, email, mobile, md, entries, sales, 
                            expense, accountant, is_staff, is_active, date_joined, createdBy_FK, createdAt)
                            VALUES ('${v4()}', '${hash}','${is_superuser}', '${uuid}', '${first_name}',
                            '${last_name}','${email}', '${mobile}', '${md}', '${entries}', '${sales}',
                            '${expense}', '${accountant}', '${0}', '${1}', '${date_joined}', '${id}', '${createdAt}')`;
            db.query(query, (err, result) =>{
                if(err) return res.status(404).send(err.message);
                res.status(201).send({message: `${uuid}`})
            })
        })
    })
    	
}

const upload_Signature = (req, res) =>{
    const {id} = req.params
    const url = `${VARABLES.domain}${req.file.path}`
    
    const query = `UPDATE auth_user SET signature=? WHERE id=?`;
    db.query(query, [url, id], (error, result) =>{
        if(error) return console.error(error.message);
        res.status(201).send({message: 'Mandate Uploaded'})
    })

}

const update_Staff= (req, res) =>{
    const edited_By = req.user.username
    const {userID} = req.params
    const {first_name, last_name, password, email,
        mobile, is_active, username, md, entries,
        sales, expense, accountant} = req.body
    const query = `
        UPDATE auth_user SET 
        first_name=?, last_name=?, password=?, email=?,
        mobile=?, is_active=?, username=?, md=?, entries=?,
        sales=?, expense=?, accountant=?, edited_By=? WHERE username=?
    `;
    db.query(query, [first_name, last_name, password, email,
        mobile, is_active, username, md, entries,
        sales, expense, accountant, edited_By, userID], (error, result) =>{
        if(error) return console.error(error.message);
        res.status(201).send({message: `${first_name} ${last_name} Account Updated`})
    })

}

const update_Login_Time = async (user) =>{
    const dateTime = new Date()
    const query = `UPDATE auth_user SET last_login =? WHERE username =?`;

    const log = await db.query(query, [dateTime, user], (error, result) =>{
        if(error) return console.error(error);
        return result
    })
    return log   
}


const staff__Login = (req, res) =>{

    const { username, password } = req.body
    const query = `SELECT * FROM auth_user WHERE username =?`;
    db.query(query, [username], async(err, result) =>{
        if(err) return res.status(404).send(err.message)
      
        if(!result.length >0) {
            return res.status(404).send({message: 'Invalid username or password'})
        }
        const match = await bcrypt.compare(password, result[0].password);
        if(!match) {
            return res.status(404).send({message: 'Invalid username or password'});
        }
        try {
            const token = await jwt.sign({userId: result[0].username}, jwtkey)
            res.status(200).send(token)
            update_Login_Time(username)
        } catch (error) {
            res.status(404).send(error)
        }
    })
}

const AUTH = {
    
    staff__Login,
    create__Staff,
    get_AllStaff,
    update_Staff,
    get_Active_User,
    upload_Signature

}

export default AUTH;

