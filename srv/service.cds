using customer.master as master from '../db/schema';

// CustomerService = API service
service CustomerService {
    entity Customers as projection on master.Customers;
}

// Fiori ke liye annotations — yeh batata hai ki
// Fiori UI mein kaunse buttons aur fields dikhne chahiye
annotate CustomerService.Customers with @(
    UI.LineItem: [
        { Value: CustomerID,    Label: 'Customer ID'    },
        { Value: customerName,  Label: 'Customer Name'  },
        { Value: city,          Label: 'City'           },
        { Value: addressNo,     Label: 'Address No.'    },
        { Value: phone,         Label: 'Phone Number'   }
    ],

    UI.FieldGroup #CustomerInfo: {
        Data: [
            { Value: CustomerID,   Label: 'Customer ID'   },
            { Value: customerName, Label: 'Customer Name' },
            { Value: city,         Label: 'City'          },
            { Value: addressNo,    Label: 'Address No.'   },
            { Value: phone,        Label: 'Phone Number'  }
        ]
    },

    UI.Facets: [{
        $Type : 'UI.ReferenceFacet',
        Label : 'Customer Details',
        Target: '@UI.FieldGroup#CustomerInfo'
    }],

    Capabilities.Insertable: true,
    Capabilities.Updatable:  true,
    Capabilities.Deletable:  true,
    UI.CreateHidden: false,
    UI.DeleteHidden: false
);