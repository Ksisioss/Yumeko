var WebSocket = require('ws');
var ws = new WebSocket("wss://node2.adky.net:8080/api/servers/f105e43b-b00f-421c-91cd-5b63fdbee413/ws");
const fetch = (...args) => import('node-fetch').then(({ default: fetch }) => fetch(...args));

const origin = "https://panel.adkynet.com"; // your panel's domain
const api_key = "ptlc_wq0IIgArmGLtLHV2N8oRGEmaNoldsIqr70f65m3X05R"; //the api-key generated
const server_no = "f105e43b"; //the number of the server


async function get_new_login(){
    const response = await fetch(`${origin}/api/client/servers/${server_no}/websocket`, {
        "method": "GET",
        "headers": {
            "Accept": "application/json",
            "Content-Type": "application/json",
            "Authorization": `Bearer ${api_key}`
        }
    }).then((data) => {
        return data.json()
    });
    if ("data" in response) {
        return response.data;
    }
}

ws.on('open', function () {
    get_new_login().then((data) => {
    console.log(`STARTED ${data}`)
    ws.send(`{"event":"auth","args":["${data.token}"]}`);
})
    
});
ws.on('message', function (data, flags) {
    let content = JSON.parse(data.toString())
    if (content.event === "console output") {
        console.log(content.args.toString());
    }
});