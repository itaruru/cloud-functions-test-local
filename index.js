exports.http = (req, res) => {
    const mydata = req.body;
    res.send('Welcome to the local http function. user_id:' + mydata.user_id);
};

exports.background = (data, context, callback) => {
    const mydata = JSON.parse(Buffer.from(data.data, 'base64').toString());
    console.log('Welcome to the local background function. user_id:' + mydata.user_id);
    callback();
}
