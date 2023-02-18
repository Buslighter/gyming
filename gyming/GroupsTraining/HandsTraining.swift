//
//  HandsTraining.swift
//  gyming
//
//  Created by Елисей Коновалов on 13.2.23..
//

import SwiftUI

struct HandsTraining: View {
    var body: some View {
        VStack {
            Image("TRXABS")
                .resizable()
                .frame(width: screen.width / 1.1, height: screen.width / 1.1)
                .cornerRadius(30)
                .onTapGesture {
                }
            Text("Руки")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
    }
}

struct HandsTraining_Previews: PreviewProvider {
    static var previews: some View {
        HandsTraining()
    }
}
