

function login() {

    const Url='https://allowme.appeligo.com/api/v1/login';
    const Data='{user:"dhecking@gmail.com",password:"ch@PT3r4"}';
    const Config={
        headers:{
            "Content-type": "application/json"
        },
        body:Data,
        method:"POST"
    };
    fetch(Url, Config)
        .then(data => { return data.json() })
        .then(res => { console.log(res) })
        .catch(error => console.log(error));
}

login();