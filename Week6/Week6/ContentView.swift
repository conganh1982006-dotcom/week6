//
//  ContentView.swift
//  Week6
//
//  Created by MAY 02 on 26/10/26.
//

import SwiftUI

struct ContentView: View {
    let bills = createSampleBills()
    var body: some View {
        Button("Show Bills") {
            var totals : [String: Double] = [:]
            for bill in bills {
                let name = bill.getCustomerName()
                totals[name, default: 0] += bill.calculateCharge()
                print(totals)
            }
            }
        }
    }


#Preview {
    ContentView()
}
