import Foundation
class WaterBill: UltilityBill {
    private var consumption_m3: Double
    init?(
        Bill_ID: String,
        Customer_Name: String,
        Customer_Address: String,
        Billing_Month: Int,
        Billing_Year: Int,
        consumption_m3: Double
    ) 
    {
        if consumption_m3 < 0 {
            return nil
        }
        self.consumption_m3 = consumption_m3
        super.init(
            Bill_ID: Bill_ID, Customer_Name: Customer_Name, Customer_Address: Customer_Address, Billing_Month: Billing_Month, Billing_Year: Billing_Year
        )
    }
    override func calculateCharge()->Double {
        let price_per_m3: Double = 10000
        return (consumption_m3 * price_per_m3)
    }
    
}

