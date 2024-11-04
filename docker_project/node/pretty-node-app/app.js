const express = require('express');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 3000;

// Set the view engine to EJS
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));
//
// // Serve static files from the public directory
app.use(express.static(path.join(__dirname, 'public')));
//
// // Route for the home page
app.get('/', (req, res) => {
    res.render('index');
     });
//
//     // Start the server and bind to all network interfaces
app.listen(PORT, '0.0.0.0', () => {
    console.log(`Server is running on http://0.0.0.0:${PORT}`);
       });
//
