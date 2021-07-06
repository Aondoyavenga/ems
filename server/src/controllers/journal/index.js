import express from 'express'
const router = express.Router()
import JOURNAL from '../../methods/journal/index.js'
import RequireToken from '../../middleware/RequireToken.js'


router.get('/', RequireToken, JOURNAL.get_Posted_Journal)
router.get('/user', RequireToken, JOURNAL.get_Posted_Journal_ByUser)
router.post('/', RequireToken, JOURNAL.post_Journal)

const JOURNAL_ROUTER = {
    router
}

export default JOURNAL_ROUTER;