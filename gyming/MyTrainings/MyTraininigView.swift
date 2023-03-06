//
//  MyTraininigView.swift
//  gyming
//
//  Created by Елисей Коновалов on 18.2.23..
//

import SwiftUI

struct Exercises: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}

struct MyTrainingView: View {
    
    @State var Exercises = [
        
    ]
    
    var body: some View {
        List {
            HStack() {
                Image("TRX")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(radius: 10)
                Spacer()
                Text("Моя любимая треня")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 0.0)
                Spacer()
            }
            
            HStack {
                Image("TRX")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(radius: 10)
                Spacer()
                Text("Тренировка на грудь")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 0.0)
                    
                Spacer()
            }
            HStack {
                Image("Legs")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(radius: 10)
                Spacer()
                Text("Треня на ноги")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 0.0)
                    
                    
                Spacer()
            }
            HStack {
                Image("TRX5")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(radius: 10)
                Spacer()
                Text("норм для понедельника")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 0.0)
                Spacer()
            }
            HStack {
                Image("TRXBack")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(radius: 10)
                Spacer()
                Text("Руки")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                    
                Spacer()
            }
            HStack() {
                Image("Triceps")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(radius: 10)
                Spacer()
                Text("Треня спина")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            HStack {
                Image("Legs")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(radius: 10)
                Spacer()
                Text("Жим ногами ")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            HStack {
                Image("TRXABS")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(radius: 10)
                Spacer()
                Text("Просто крутая треня")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            HStack {
                Image("TRX5")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(radius: 10)
                Spacer()
                Text("норм для среды")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 0.0)
                Spacer()
            }
        }.navigationTitle("Мои тренировки")
    }
}


struct MyTrainingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MyTrainingView()
                .padding(.top, 20)
        }
    }
}
