const fs = require('fs');

const image = fs.readdirSync('./').filter(file => file.endsWith('.jpg'));
for (const file of image) {
    var newname = file.replace(' ', '_')
    var newname = file.replace('é', 'e')
    fs.rename(file, newname, function (err) {
        if (err) throw err;
        console.log('File Renamed.' + file);
    });
}