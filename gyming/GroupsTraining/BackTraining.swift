//
//  BackTraining.swift
//  gyming
//
//  Created by Елисей Коновалов on 13.2.23..
//

import SwiftUI

struct BackTraining: View {
    var body: some View {
        VStack {
            Image("TRXBack")
                .resizable()
                .frame(width: screen.width / 1.1, height: screen.width / 1.1)
                .cornerRadius(30)
                .onTapGesture {
                }
            Text("Спина")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
    }
}
struct BackTraining_Previews: PreviewProvider {
    static var previews: some View {
        BackTraining()
    }
}
