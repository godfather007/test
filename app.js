const express = require('express')
const app = express()

app.get('/', (req, res) => res.send('Hello World!'));
//var port_number = (process.env.PORT || 3000);

app.listen((process.env.PORT || 3000), () => console.log('Example app listening on port 3000!'))