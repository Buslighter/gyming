//
//  FullBodyView.swift
//  gyming
//
//  Created by Елисей Коновалов on 2.2.23..
//

import SwiftUI

struct FullBodyTextView: View {
    
    @State var extercises = [
        
    ]
    
    var body: some View {
        VStack {
            List {
                ExerciseCardCellView()
                
                HStack {
                    Image("TRX")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipped()
                        .cornerRadius(10)
                        .shadow(radius: 10)
                
                    Text("Жим гантелей в наклоне 3*15")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 0.0)
                        
                    Spacer()
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40.0, height: 40.0)
                }
                HStack {
                    Image("TRXChest")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipped()
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    
                    Text("Тяга верх блока 3*15")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 0.0)
                        
                        
                    Spacer()
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40.0, height: 40.0)
                }
                HStack {
                    Image("TRX5")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipped()
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    
                    Text("Жим гантелей сидя 3*12")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 0.0)
                    Spacer()
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40.0, height: 40.0)
                }
                HStack {
                    Image("TRXBack")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipped()
                        .cornerRadius(10)
                        .shadow(radius: 10)
                
                    Text("Сгибания со штангой стоя 3*12")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        
                    Spacer()
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40.0, height: 40.0)
                }
                HStack() {
                    Image("Triceps")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipped()
                        .cornerRadius(10)
                        .shadow(radius: 10)
                   
                    Text("Французский жим лежа 3*15")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40.0, height: 40.0)
                }
                HStack {
                    Image("Legs")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipped()
                        .cornerRadius(10)
                        .shadow(radius: 10)
                   
                    Text("Жим ногами 4*20")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40.0, height: 40.0)
                }
                HStack {
                    Image("TRXABS")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipped()
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    
                    Text("Подъемы на носки сидя 3*25")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        
                    Spacer()
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40.0, height: 40.0)
                }
            }.navigationTitle("Все тело")
            Button("Вперед"){}
                .buttonStyle(.bordered)
                .cornerRadius(10)
                .shadow(radius: 10)
        }
        
    }
}


struct FullBodyTextView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FullBodyTextView()
                .padding(.top, 20)
        }
    }
}

struct ExerciseCardCellView: View {
    var body: some View {
        HStack{
            Image("TRX")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60.0, height: 60.0)
                .clipped()
                .cornerRadius(10)
                .shadow(radius: 10)
            Text("Подъемы ног в висе 3*15")
                .font(.title2)
                .multilineTextAlignment(.leading)
                .padding(.leading, 0.0)
            
            Spacer()
            Image(systemName: "checkmark")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30.0, height: 30.0)
        }
    }
}
