
const d = new Date(),
  month = ''+(d.getMonth() +1),
  day = ''+ d.getDate(),
  year = d.getFullYear();

const createdAt = year+ '-'+ month +'-' +day
const VARABLES = {
  createdAt,
  domain: "http://127.0.0.1:5000/",
};
export default VARABLES;
