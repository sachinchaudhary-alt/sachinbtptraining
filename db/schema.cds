// Yeh file Customer Master ka database design hai
// SAP CAP is file ko padhkar automatically table banata hai

namespace customer.master;

// Customer entity = database mein ek table
// Isme har customer ki information store hogi
entity Customers {
    key CustomerID   : Integer;      // Primary Key — har customer ka unique number
        customerName : String(100);  // Customer ka poora naam
        city         : String(50);   // Customer jis shehar mein rehta hai
        addressNo    : String(50);   // Address number — ghar/office ka number
        phone        : String(15);   // Phone number
}