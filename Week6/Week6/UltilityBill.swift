import Foundation
class UltilityBill {
    private var Bill_ID: String
    private var Customer_Name: String
    private var Customer_Address: String
    private var Billing_Month: Int
    private var Billing_Year: Int
    private var isPaid: Bool = false
    init?(Bill_ID: String, Customer_Name: String, Customer_Address: String, Billing_Month: Int, Billing_Year: Int) {
        self.Bill_ID = Bill_ID
        self.Customer_Name = Customer_Name
        self.Customer_Address = Customer_Address
        if Billing_Month < 1 || Billing_Month > 12 {
            return nil                                  //  not accept bill with invalid month
        }
        self.Billing_Month = Billing_Month
        self.Billing_Year = Billing_Year
    }
    func getBillID() -> String {
        return Bill_ID
    }
    func getCustomerName() -> String {
        return Customer_Name
    }
    func getCustomerAddress() -> String {
        return Customer_Address
    }
    func getBillingmonth() -> Int {
        return Billing_Month
    }
    func getBillingYear() -> Int {
        return Billing_Year
    }
    func getPaid() -> Bool {
        return isPaid
    }
    func setCustomerName(_ newName: String) {
        if !newName.isEmpty {
            Customer_Name = newName
        }
    }
    func setCustomerAddress(_ newAddress: String) {
        if !newAddress.isEmpty {
            Customer_Address = newAddress
        }
    }
    func setPaid(_ newPaid: Bool) {
        isPaid = newPaid
    }
    func calculateCharge() -> Double {
        return 0.0
    }
}
