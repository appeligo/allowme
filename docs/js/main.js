

function login() {

    const endpoint = 'https://allowme.appeligo.com/api/v1/login';
    const config = {
        headers: {
            "content-type": "application/json;charset=UTF-8"
        },
        body: {
            "user": "dhecking@gmail", "password": "ch@PT3r4"
        },
        method: "POST"
    };
    fetch(endpoint, config)
        .then(data => { return data.json() })
        .then(res => { console.log(res) })
        .catch(error => console.log(error));
}

login();