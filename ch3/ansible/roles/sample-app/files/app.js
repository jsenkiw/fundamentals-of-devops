const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello, World!\n\nFundamentals of DevOps!\n\nChapter3: Deployed by Ansible'); (1)
});

const port = 8080; (2)
server.listen(port,() => {
  console.log(`Listening on port ${port}`);
});
