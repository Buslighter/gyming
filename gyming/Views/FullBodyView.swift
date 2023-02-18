//
//  FullBodyView.swift
//  gyming
//
//  Created by Елисей Коновалов on 18.2.23..
//

import SwiftUI

struct FullBodyView: View {
    @State private var isShowedFullBody = false
    
    var body: some View {
        VStack {
            Image("TRX3")
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

struct FullBodyView_Previews: PreviewProvider {
    static var previews: some View {
        FullBodyView()
    }
}
