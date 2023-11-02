function sleep(ms) {
    return new Promise(resolve=>setTimeout(resolve, ms))
}

async function sleepRandomDuration() {
    const random = Math.floor(Math.random() * 100); // 生成0到99的随机数

    if (random < 20) { // 20%的概率
        const sleepDuration = Math.floor(Math.random() * 100) + 1; // 1ms到100ms的随机数
        await sleep(sleepDuration);
    } else if (random < 80) { // 60%的概率
        const sleepDuration = Math.floor(Math.random() * 901) + 100; // 100ms到1s的随机数
        await sleep(sleepDuration);
    } else { // 20%的概率
        const sleepDuration = Math.floor(Math.random() * 2001) + 1000; // 1s到3s的随机数
        await sleep(sleepDuration);
    }
}

/**
 * @params is a JSON object with optional fields "name" and "place".
 * @return a JSON object containing the message in a field called "msg".
 */
async function main(params) {
  
    // if a value for name is provided, use it else use a default

    if (params.time !== undefined && params.time != null) {
        await sleep(params.time);
    } else {
        await sleepRandomDuration();
    }
    // construct the message using the values for name and place
    return {msg:  'Hello, World'};
}