const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/health', (req, res) => {
  res.status(200).json({ status: 'UP', timestamp: new Date() });
});

app.get('/', (req, res) => {
  res.json({ message: 'Hello from the Automated DevOps Pipeline app!' });
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
