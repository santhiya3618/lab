mongosh> use studentdb
switched to db studentdb
studentdb> db.student.insertMany(
[
{
 regno:1011,
 name:"Anand",
 age:19,
 department:"IT",
 address:{
 doorno:23,
street:"Nehru Street",
 city:"Coimbatore"
 },
 phoneno:"9565454334"
 },
 {
 regno:1012,
 name:"Bharath",
 age:18,
department:"CS",
address:{
doorno:12,
 street:"RK Street",
 city:"Salem"
 },
 phoneno:"9584434234"
 },
 {
 regno:1013,
 name:"Ramesh",
 age:19,
 department:"IT",
 address:{
 doorno:11,
 street:"First Street",
 city:"Coimbatore"
 },
 phoneno:"95768573534"
 },
 {
regno:1014,
name:"Shahul",
 age:20,
department:"BCA",
address:{
doorno:32,
 street:"Second Street",
 city:"Erode"
 },
 phoneno:"9435545346"
 }
]
 )
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('66b48adec2a903820d228fb5'),
    '1': ObjectId('66b48adec2a903820d228fb6'),
    '2': ObjectId('66b48adec2a903820d228fb7'),
    '3': ObjectId('66b48adec2a903820d228fb8')
  }
}
studentdb> db.student.find()
studentdb> db.student.find({age:19})
studentdb> db.student.findOne({})
studentdb> db.student.findOne({name:"Ramesh"})
studentdb> db.student.findOne({name:"Ramesh"},{ _id:0, name:1, department:1})
studentdb> db.student.findOne({name:"Ramesh"},{ _id:0})
studentdb> db.student.find().sort({age:1})
studentdb> db.student.find().sort({age:-1})
studentdb> db.student.find().sort({age:1,name:-1})
studentdb> db.student.find().limit(2)
studentdb> db.student.find({department:"IT"}).limit(1)
studentdb> db.student.distinct("department")
studentdb> db.student.distinct("address.street")
studentdb> db.student.find({},{name:1,regno:1})
studentdb> db.student.find({},{name:1,_id:0})
studentdb> db.student.find({age:19},{name:1,_id:0})
