async function postContact() {

    let contact = {
        name: "",
        telephone: "",
        email: "",
    };

    contact.name = document.getElementById("inputName").value;
    contact.telephone = document.getElementById("inputTel").value;
    contact.email = document.getElementById("inputEmail").value;

    if (contact.name === "" || contact.telephone === "" || contact.email == ""){
        alert("Please fill in all fields");
        return;
    }

    const request = await fetch('api/contacts', {
        method: 'POST',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(contact)
    });

    window.location.href = "index.html"
}