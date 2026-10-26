import Foundation

func createSampleBills() -> [UltilityBill] {

    var bills: [UltilityBill] = []

    if let bill1 = ElectricityBill(
        Bill_ID: "B001",
        Customer_Name: "Cong Anh",
        Customer_Address: "HCMC",
        Billing_Month: 10,
        Billing_Year: 2026,
        consumptionKWh: 120
    ) {
        bills.append(bill1)
    }
    if let bill2 = WaterBill(
        Bill_ID: "B002",
        Customer_Name: "Cong Anh",
        Customer_Address: "HCMC",
        Billing_Month: 10,
        Billing_Year: 2026,
        consumption_m3: 15
    ){
        bills.append(bill2)
    }
    if let bill3 = InternetBill(
        Bill_ID: "B003",
        Customer_Name: "Cong Anh",
        Customer_Address: "HCMC",
        Billing_Month: 10,
        Billing_Year: 2026
    ){
        bills.append(bill3)
    }

    return bills
}
