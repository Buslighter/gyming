//
//  ContentView.swift
//  gyming
//
//  Created by gleba on 01.02.2023.
//

import SwiftUI

let screen = UIScreen.main.bounds

//struct Box {
//    var id: Int
//    let title, imageUrl: String
//}

struct ContentView: View {
//    let boxes: [Box] = [
//        Box(id: 0, title: "Go Training!", imageUrl: "TRX"),
//        Box(id: 1, title: "Tech Stuff", imageUrl: "1"),
//        Box(id: 2, title: "Code Stuff", imageUrl: "2"),
//        Box(id: 3, title: "Photo Stuff", imageUrl: "3"),
//        Box(id: 4, title: "SwiftUI Stuff", imageUrl: "0"),
//    ]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 12) {
                    BoxView()
                    BoxView1()
                    BoxView2()
                    BoxView3()
                    BoxView4()
                }.navigationTitle("Go Training!")
            }
        }.padding()
    }
}

struct BoxView: View {
    @State private var isShowedFullBody = false
    
    var body: some View {
        VStack {
            Image("TRX5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: screen.width / 1.1, height: screen.width / 1.1)
                .cornerRadius(30)
                .onTapGesture {
                    isShowedFullBody.toggle()
                }
            
            Text("Full Body")
                .font(.largeTitle)
                .fontWeight(.bold)
        }.sheet(isPresented: $isShowedFullBody) {
            FullBodyView()
        }
    }
}

struct BoxView1: View {
    @State private var isShowedChest = false

    var body: some View {
        VStack {
            Image("TRXChest")
                .resizable()
                .frame(width: screen.width / 1.1, height: screen.width / 1.1)
                .cornerRadius(30)
                .onTapGesture {
                    isShowedChest.toggle()
                }
            Text("Chest")
                .font(.largeTitle)
                .fontWeight(.bold)
        }.sheet(isPresented: $isShowedChest) {
            ChestView()
        }
    }
}

struct BoxView2: View {
    @State private var isShowedABS = false

    var body: some View {
        VStack {
            Image("TRXABS")
                .resizable()
                .frame(width: screen.width / 1.1, height: screen.width / 1.1)
                .cornerRadius(30)
                .onTapGesture {
                    isShowedABS.toggle()
                }
            Text("ABS")
                .font(.largeTitle)
                .fontWeight(.bold)
        }.sheet(isPresented: $isShowedABS) {
            ABSView()
        }
    }
}

struct BoxView3: View {
    @State private var isShowedLegs = false

    var body: some View {
        VStack {
            Image("TRXLegs")
                .resizable()
                .frame(width: screen.width / 1.1, height: screen.width / 1.1)
                .cornerRadius(30)
                .onTapGesture {
                    isShowedLegs.toggle()
                }
            Text("Legs")
                .font(.largeTitle)
                .fontWeight(.bold)
        }.sheet(isPresented: $isShowedLegs) {
            LegsView()
        }
    }
}

struct BoxView4: View {
    @State private var isShowedBack = false

    var body: some View {
        VStack {
            Image("TRXBack")
                .resizable()
                .frame(width: screen.width / 1.1, height: screen.width / 1.1)
                .cornerRadius(30)
                .onTapGesture {
                    isShowedBack.toggle()
                }
            Text("Back")
                .font(.largeTitle)
                .fontWeight(.bold)
        }.sheet(isPresented: $isShowedBack) {
            BackView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
