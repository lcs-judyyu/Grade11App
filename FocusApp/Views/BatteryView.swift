//
//  ContentView.swift
//  FocusApp
//
//  Created by Judy Yu on 2021-11-29.
//

import SwiftUI

struct ContentView: View {
    @State private var batteryState = 50
//    func numberAvailable() { ForEach(0 ..< 100) {_ in
//        batteryState % 5 == 0
//            }
//    }
    
    var body: some View {
        VStack {
            
            ScrollView {
                VStack {
                    Picker(selection: $batteryState,
                           label: Text("Picker Name"),
                           content: {


                    })
                        .pickerStyle(WheelPickerStyle())
                    
                    Text("About the battery")
                    VStack {
                    Image("charge")
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                            .padding(10)
                    
                    }
                }
            }
            
            //fixed footer
            VStack {
                Spacer()
                Divider()
                    .padding(.bottom, 10)
                    .frame(height: 10)
                HStack(alignment: .bottom, spacing: 55) {
                    Image(systemName:"timer")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(Color.teal)
                    Image(systemName:"chart.bar.xaxis")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 33, height: 33, alignment: .center)
                        .foregroundColor(Color.teal)
                    Image(systemName:"battery.100.bolt")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 38, height: 35, alignment: .center)
                        .foregroundColor(Color.teal)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
