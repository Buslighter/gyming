//
//  ContentView.swift
//  gyming
//
//  Created by gleba on 01.02.2023.
//

import SwiftUI

let screen = UIScreen.main.bounds

struct ContentView: View {
    var body: some View {
        VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        FullBodyTraining()
                        BreastTraining()
                        HandsTraining()
                        LegsTreining()
                        BackTraining()
                    }
                }.padding()
            Spacer()
            
            NavigationView {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        FullBodyView()
                        BreastView()
                        HandsView()
                        LegsView()
                        BackView()
                    }
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
