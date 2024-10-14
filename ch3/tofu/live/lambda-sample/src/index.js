exports.handler = (event, context, callback) => {
  callback(null, {statusCode: 200, body: "Hello, World!\nProduced by Lambda Function!\n"});
};
