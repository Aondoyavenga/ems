import jwt from 'jsonwebtoken'
import db from '../db.js';
import jwtkey from './index.js'

const RequireToken = async (req, res, next) =>{
    const { authorization } = req.headers;
    if(!authorization){
        return res.status(401).send({
            error: 'You must be logged in'
        })
    }
    const token = authorization.replace("Bearer ", "");

    try {
        jwt.verify(token, jwtkey, async(err, payLoad) => {
            if(err) {
                return res.status(401).send({error: "Authentication failed"})
            }
            const { userId } = payLoad;
            const query = `SELECT 
                            id,
                            first_name, last_name, username, accountant, sales, 
                            expense, md, entries, signature, is_superuser
                             FROM auth_user WHERE username=?`
            //  const user = await User.findById(userId).populate('profile').exec()
            
           await db.query(query, [userId], (error, user) =>{
                if(error) res.status(404).send(error.message);
                req.user = user[0];
                next()
            })
        })
    } catch (error) {
        res.status(404).send(error)
    }
}

export default RequireToken