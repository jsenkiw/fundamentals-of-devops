const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello, World!\n\nDeployed by Packer'); (1)
});

const port = 8080; (2)
server.listen(port,() => {
  console.log(`Listening on port ${port}`);
});
