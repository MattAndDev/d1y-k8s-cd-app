const http = require('http');
const server = http.createServer((req, res) => {
  console.log(process.env.PIPELINE_ID);
  res.end(process.env.CI_COMMIT_SHA || 'null');
});
server.listen(3000);