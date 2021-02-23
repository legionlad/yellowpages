const postal = new Vue({
    el: '#postal',
    data: {
        errors: [],
        postalLongitude: null,
        postalLatitude: null,
        postalCode: null,
        areaName: null
    },

    methods:{
        postalValidation: function(e) {
            if(!this.postalLongitude || this.postalLongitude < 9){
                this.errors.push('Enter Longitude in proper format.');
            }

            if(!this.postalLatitude || this.postalLatitude < 9) {
                this.errors.push('Enter Latitude in proper format.');
            }
            if(!this.postalCode || !this.postalCode.length < 5){
                this.errors.push('Enter postal code in proper format.');
            }

            if(!this.areaName){
                this.errors.push('Areaname in postal code is required');
            }

            if(!this.errors.length)
            { return true;
            }
            e.preventDefault();
        }
    }
});

const street = new Vue({
    el : '#street',
    data : {
        streetError: [],
        streetLatitude: null,
        streetLongitude: null
    },
    methods: {
        streetValidation(e) {

            if (!this.streetLongitude || this.postalLongitude < 9) {
                this.streetError.push('Enter Street Longitude in proper format.');
            }
            if (!this.streetLatitude || this.streetLatitude < 9) {
                this.streetError.push('Enter Street Latitude in proper format.');
            }
            if (!this.streetError.length) {
                return true;
            }
            e.preventDefault();
        }
    }
});
