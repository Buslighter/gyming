//
//  ABSView.swift
//  gyming
//
//  Created by Елисей Коновалов on 3.2.23..
//

import SwiftUI

struct HandsView: View {
    @State private var isShowedFullBody = false
    var body: some View {
        VStack {
            Image("TRX5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: screen.width / 2, height: screen.width / 2)
                .cornerRadius(30)
                .onTapGesture {
                    isShowedFullBody.toggle()
                }
            
            Text("Моя тренировка")
                .fontWeight(.bold)
        }.sheet(isPresented: $isShowedFullBody) {
            FullBodyTextView()
            Button("Вперед") {
            }.buttonStyle(.bordered)
                .cornerRadius(10)
                .shadow(radius: 10)
        }
    }
}

struct HandsView_Previews: PreviewProvider {
    static var previews: some View {
        HandsView()
    }
}
