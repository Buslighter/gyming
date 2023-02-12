//
//  FullBodyView.swift
//  gyming
//
//  Created by Елисей Коновалов on 2.2.23..
//

import SwiftUI

struct FullBodyTextView: View {
    
    var body: some View {
        List {
            Section(header: Text("Chest")) {
                Text("Отжимания в упоре")
                Text("Сведения рук для груди в TRX")
            }
            Section(header: Text("Back")) {
                Text("Тяга к себе в висе")
            }
            Section(header: Text("Shoulders")) {
                Text("Разведение рук в положение Y")
                Text("Разведение рук в положение Т")
            }
            Section(header: Text("Arms")) {
                Text("Сгибания на бицепс в TRX")
                Text("Разгибания на трицепс")
                Text("Выпады назад")
            }
            Section(header: Text("Legs")) {
                Text("Прижки с TRX")
                Text("Выпады назад")
            }
            Section(header: Text("ABS")) {
                Text("Горизонтальный бег «Trx climber»")
                Text("Складка")
                Text("Подемы коленей к животу")
            }
        }.navigationTitle("Программа")
    }
}


struct FullBodyView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FullBodyTextView()
        }
    }
}

struct Custom: View {
  
    var body: some View {
        HStack {
           Image("ABS")
        }
    }
}

