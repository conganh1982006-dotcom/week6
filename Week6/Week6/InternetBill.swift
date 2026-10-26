import Foundation
class InternetBill: UltilityBill {
    override init?(
        Bill_ID: String,
        Customer_Name: String,
        Customer_Address: String,
        Billing_Month: Int,
        Billing_Year: Int,
    ){
        super.init(
            Bill_ID: Bill_ID,
            Customer_Name: Customer_Name,
            Customer_Address: Customer_Address,
            Billing_Month: Billing_Month,
            Billing_Year: Billing_Year,
        )
    }
    override func calculateCharge() -> Double {
        return 200000
    }
}
