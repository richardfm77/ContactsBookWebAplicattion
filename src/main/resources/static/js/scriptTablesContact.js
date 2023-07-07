window.addEventListener('DOMContentLoaded', event => {
    new Vue({
        el: '#app',
        vuetify: new Vuetify(),
        data: () => ({
            search: '',
            dialog: false,
            dialogDelete: false,
            headers: [
                {
                    text: 'Name',
                    align: 'start',
                    sortable: true,
                    value: 'name',
                },
                { text: 'Telephone', value: 'telephone' },
                { text: 'Email', value: 'email' },
                { text: 'Actions', value: 'actions', sortable: false },
            ],
            desserts: [],
            editedIndex: -1,
            editedItem: {
                id: null,
                name: '',
                telephone: '',
                email: ''
            },
            defaultItem: {
                id: null,
                name: '',
                telephone: '',
                email: ''
            },
        }),

        computed: {
            formTitle() {
                return this.editedIndex === -1 ? 'New Contact' : 'Edit Contact';
            },
        },

        watch: {
            dialog(val) {
                val || this.close()
            },
            dialogDelete(val) {
                val || this.closeDelete()
            },
        },

        created() {
            this.initialize()
        },

        methods: {
            initialize() {
                getContacts().then(contacts => {
                    this.desserts = contacts;
                });
            },

            editItem(item) {
                this.editedIndex = this.desserts.indexOf(item);
                this.editedItem = Object.assign({}, item);
                this.dialog = true;
            },

            deleteItem(item) {
                this.editedIndex = this.desserts.indexOf(item);
                this.editedItem = Object.assign({}, item);
                this.dialogDelete = true;
            },

            deleteItemConfirm() {
                this.desserts.splice(this.editedIndex, 1);
                deleteContact(this.editedItem.id);
                this.closeDelete();
            },

            close() {
                this.dialog = false
                this.$nextTick(() => {
                    this.editedItem = Object.assign({}, this.defaultItem);
                    this.editedIndex = -1;
                })
            },

            closeDelete() {
                this.dialogDelete = false
                this.$nextTick(() => {
                    this.editedItem = Object.assign({}, this.defaultItem);
                    this.editedIndex = -1;
                })
            },

            save() {
                postContact(
                    this.editedItem.id,
                    this.editedItem.name,
                    this.editedItem.telephone,
                    this.editedItem.email
                );

                this.close();

                location.reload();
            },
        },
    })
});

//-------------------------------
/**
 * Comunication with backend.
 */

async function getContacts() {
    const request = await fetch('api/contacts', {
        method: 'GET',
        headers: getHeaders()
    });

    const contacts = await request.json();

    return contacts;
}

function getHeaders() {
    return {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
    };
}

async function deleteContact(id) {
    const request = await fetch('api/contacts/' + id, {
        method: 'DELETE',
        headers: getHeaders()
    });
}

async function postContact(idValue, nameValue, telephoneValue, emailValue) {

    let contact = {
        id: idValue,
        name: nameValue,
        telephone: telephoneValue,
        email: emailValue,
    };

    if (contact.name === "" || contact.telephone === "" || contact.email == "") {
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
}