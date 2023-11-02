function sleep(ms, callback) {
    setTimeout(callback, ms);
}

function sleepRandomDuration(callback) {
    const random = Math.floor(Math.random() * 100); // 生成0到99的随机数

    if (random < 20) { // 20%的概率
        const sleepDuration = Math.floor(Math.random() * 100) + 1; // 1ms到100ms的随机数
        sleep(sleepDuration, callback);
    } else if (random < 80) { // 60%的概率
        const sleepDuration = Math.floor(Math.random() * 901) + 100; // 100ms到1s的随机数
        sleep(sleepDuration, callback);
    } else { // 20%的概率
        const sleepDuration = Math.floor(Math.random() * 2001) + 1000; // 1s到3s的随机数
        sleep(sleepDuration, callback);
    }
}

/**
 * @params is a JSON object with optional fields "name" and "place".
 * @return a JSON object containing the message in a field called "msg".
 */
 function main(params) {
  
    // if a value for name is provided, use it else use a default

    if (params.time !== undefined && params.time != null) {
        sleep(params.time, () => {
            console.log("OK");
        });
    } else {
        sleepRandomDuration(() => {
            // log the parameters to stdout
            console.log('params:', params);
        });
    }
    // construct the message using the values for name and place
    return {msg:  'Hello, World'};
  }