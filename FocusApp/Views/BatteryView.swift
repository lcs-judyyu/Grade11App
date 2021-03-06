//
//  ContentView.swift
//  FocusApp
//
//  Created by Judy Yu on 2021-11-29.
//

import SwiftUI

struct ContentView: View {
    @State private var batteryState = 50
    
    var body: some View {
        VStack {
            //fixed header
            VStack(alignment: .center) {
                Text("battery".capitalized(with: .current))
                    .bold()
                    .italic()
                    .font(.title2)
            }
            
            ScrollView {
                
                ZStack {
                    
                    //background color
                    Color.orange.opacity(0.3)
                    
                    VStack {
                        //title
                        HStack {
                            VStack(alignment: .leading){
                                Text("charging reminder".capitalized(with: .current))
                                    .bold()
                                    .italic()
                                    .font(.title2)
                                    .padding(.top, 15)
                            }
                            Spacer()
                        }
                        
                        //First form: percentage picker
                        Picker(selection: $batteryState,
                               label: Text("Picker Name"),
                               content: {
                            
                        })
                        .pickerStyle(WheelPickerStyle())
                        
                        //Second form: time picker
                        DatePicker("Notify at:",
                                   selection: .constant(Date()),
                                   displayedComponents: .hourAndMinute)
                        .datePickerStyle(.wheel)
                        
                        //information section
                        HStack {
                            
                            VStack(alignment: .leading){
                                Text("about batteries".capitalized(with: .current))
                                    .bold()
                                    .italic()
                                    .font(.title2)
                            }
                            Spacer()
                        }
                        
                        //first article
                        VStack(alignment: .leading){
                            
                            Image("Battery")
                                .resizable()
                                .scaledToFit()
                            
                            Group {
                                Text("Battery and Performance")
                                    .bold()
                                    .font(.title3)
                                Text("How does your battery work?")
                                    .foregroundColor(Color.gray)
                            }
                            .padding(.leading, 20)
                            
                        }
                        .padding(.bottom, 15)
                        .background(Color.white)
                        .cornerRadius(15)
                        //Source: https://www.appcoda.com/swiftui-card-view/
                        .overlay(
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                        )
                        
                        //second article
                        VStack(alignment: .leading){
                            
                            Image("Charge")
                                .resizable()
                                .scaledToFit()
                            
                            Text("General Performance Tips")
                                .bold()
                                .padding(.leading, 20)
                                .font(.title3)
                            
                        }
                        .padding(.bottom, 15)
                        .background(Color.white)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                        )
                    }
                    .padding(.horizontal, 20)
                }
            }
            
            //fixed footer
            VStack {
                Divider()
                    .padding(.bottom, 10)
                
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
            .background(Color.white.opacity(0.3))
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
