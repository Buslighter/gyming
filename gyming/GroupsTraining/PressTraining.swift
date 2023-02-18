//
//  PressTraining.swift
//  gyming
//
//  Created by Елисей Коновалов on 15.2.23..
//

import SwiftUI

struct PressTraining: View {
    var body: some View {
        VStack {
            Image("TRX5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: screen.width / 1.1, height: screen.width / 1.1)
                .cornerRadius(30)
                .onTapGesture {}
            
            Text("Всё тело")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
    }
}

struct PressTraining_Previews: PreviewProvider {
    static var previews: some View {
        PressTraining()
    }
}
