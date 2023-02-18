//
//  BreastTraining.swift
//  gyming
//
//  Created by Елисей Коновалов on 13.2.23..
//

import SwiftUI

struct BreastTraining: View {
    var body: some View {
        VStack {
            Image("TRXChest")
                .resizable()
                .frame(width: screen.width / 1.1, height: screen.width / 1.1)
                .cornerRadius(30)
                .onTapGesture {
                }
            Text("Грудь")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
    }
}

struct BreastTraining_Previews: PreviewProvider {
    static var previews: some View {
        BreastTraining()
    }
}
