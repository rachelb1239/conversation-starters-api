const express = require('express');

const router = express.Router();

// 
router.get('/', (req, res) => res.send('Hello World!'));

// Get Question
router.get('/question/:id', (req, res) => res.send('get question!'));

// Post Question
router.post('/question', (req, res) => res.send('post question!'));

// Update Question
router.put('/question/:id', (req, res) => res.send('update question!'));

// Delete Question
router.delete('/question/:id', (req, res) => res.send('delete question!'));

module.exports = router;