const d = new Date(),
    month = ''+(d.getMonth() +1),
    day = ''+ d.getDate(),
    year = d.getFullYear();

const createdAt = year+ '-'+ month +'-' +day
export default createdAt