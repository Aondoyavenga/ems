import { configureStore } from '@reduxjs/toolkit'
import appReducer from '../appState/appSlice'

export default configureStore({
    reducer: {
        app_state: appReducer,
    },
})