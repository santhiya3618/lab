var fs = require('fs')
var oldPath = "D:/New folder/Sample.docx"
var newPath = "D:/New folder 1/Sample.docx"

fs.rename(oldPath, newPath, function (err) {
  if (err) {
    console.log("Error - File not moved")
  } else {
  console.log("Successfully moved the file")
  }
})
