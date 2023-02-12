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
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    FullBodyView()
                    ChestView()
                    ABSView()
                    BackView()
                    LegsView()
                        .navigationBarItems(trailing:
                                                Button("User") {
                        }
                    )
                }.navigationTitle("Вперед!")
            }
        }.padding()
    }
}

struct FullBodyView: View {
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
            
            Text("Моя тренировка")
                .font(.largeTitle)
                .fontWeight(.bold)
        }.sheet(isPresented: $isShowedFullBody) {
            FullBodyTextView()
            Button("Start") {
            }.buttonStyle(.bordered)
                .cornerRadius(12)
        }
    }
}

struct ChestView: View {
    @State private var isShowedChest = false
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Image("TRXChest")
                    .resizable()
                    .frame(width: screen.width / 1.1, height: screen.width / 1.1)
                    .cornerRadius(30)
                    .onTapGesture {
                        isShowedChest.toggle()
                    }
                Text("Грудь")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }.sheet(isPresented: $isShowedChest) {
                ChestTextView()
            }
        }
    }
}
struct ABSView: View {
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
            Text("Пресс")
                .font(.largeTitle)
                .fontWeight(.bold)
        }.sheet(isPresented: $isShowedABS) {
            ABSTextView()
        }
    }
}

struct LegsView: View {
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
            Text("Ноги")
                .font(.largeTitle)
                .fontWeight(.bold)
        }.sheet(isPresented: $isShowedLegs) {
            LegsTextView()
        }
    }
}

struct BackView: View {
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
            Text("Спина")
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
