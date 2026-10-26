import Foundation
class ElectricityBill: UltilityBill {
    private var consumptionKWh: Double
    init?(                                      //set up init can be fail
        Bill_ID: String,
        Customer_Name: String,
        Customer_Address: String,
        Billing_Month: Int,
        Billing_Year: Int,
        consumptionKWh: Double
    ){
        if consumptionKWh < 0 { 
            return nil                           // not create bill when < 0
        }
        self.consumptionKWh = consumptionKWh
        super.init(
            Bill_ID: Bill_ID,
            Customer_Name: Customer_Name,
            Customer_Address: Customer_Address,
            Billing_Month: Billing_Month,
            Billing_Year: Billing_Year
        )
    }
    override func calculateCharge() -> Double {
        let price_per_kwh: Double = 2500
        return (consumptionKWh * price_per_kwh)
        }
}

