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
                ZStack {
                    Color.orange.opacity(0.2)
                    VStack {
                        Picker(selection: $batteryState,
                               label: Text("Picker Name"),
                               content: {


                        })
                            .pickerStyle(WheelPickerStyle())
                        
                        //information section
                        HStack {
                            VStack(alignment: .leading){
                                Text("About the battery".capitalized(with: .current))
                                    .bold()
                                    .italic()
                                    .font(.title2)
                                    .padding(.leading, 20)
                            }
                            Spacer()
                        }
                        
                        //first article
                        VStack(alignment: .leading){
                        Image("Battery")
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                .padding(.horizontal, 20)
                        Text("Battery and Performance")
                                .bold()
                                .padding(.leading, 20)
                                .font(.title3)
                        
                        }
                        .padding(.bottom, 15)
                        .background(Color.white)
                        .padding(.bottom, 30)
                        
                        //second article
                        VStack(alignment: .leading){
                        Image("Charge")
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                .padding(.horizontal, 20)
                        Text("General Performance Tips")
                                .bold()
                                .padding(.leading, 20)
                                .font(.title3)
                        
                        }
                        .padding(.bottom, 15)
                        .background(Color.white)
                        .padding(.bottom, 30)
                    }
                }
            }
            
            //fixed footer
            VStack {
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
            .background(Color.yellow.opacity(0.3))
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
