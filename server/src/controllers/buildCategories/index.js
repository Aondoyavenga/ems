import express from 'express'
import BUILD_CATEGORIES from '../../methods/buildCategories/index.js'
import RequireToken from '../../middleware/RequireToken.js'

const router = express.Router()

router.get('/', RequireToken, BUILD_CATEGORIES.get_All_Build_Categories)
router.post('/', RequireToken, BUILD_CATEGORIES.create_Build_Category)

const BUILD_CATEGORIES_ROUTER = {
    router
}

export default BUILD_CATEGORIES_ROUTER