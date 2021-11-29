//
//  ContentView.swift
//  FocusApp
//
//  Created by Judy Yu on 2021-11-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            HStack(alignment: .center, spacing: 20) {
                Image(systemName:"timer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
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
                Image(systemName:"bolt.ring.closed")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
