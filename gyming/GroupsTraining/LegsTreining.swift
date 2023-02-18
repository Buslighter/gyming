//
//  LegsTreining.swift
//  gyming
//
//  Created by Елисей Коновалов on 13.2.23..
//

import SwiftUI

struct LegsTreining: View {
    var body: some View {
        VStack {
            Image("TRXLegs")
                .resizable()
                .frame(width: screen.width / 1.1, height: screen.width / 1.1)
                .cornerRadius(30)
                .onTapGesture {
                }
            Text("Ноги")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
    }
}

struct LegsTreining_Previews: PreviewProvider {
    static var previews: some View {
        LegsTreining()
    }
}
