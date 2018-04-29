const express = require('express')
const app = express()

app.get('/', (req, res) => res.send('Hello Sashi!'));
var port_number = (process.env.PORT || 5000);
console.log(port_number);

app.listen((process.env.PORT || 5000), () => console.log('Example app listening on port!'+(process.env.PORT || 5000)))
