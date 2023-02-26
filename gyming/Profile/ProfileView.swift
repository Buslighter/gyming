//
//  ProfileView.swift
//  gyming
//
//  Created by gleba on 26.02.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
            VStack{
                UserImageCircleView()
                Text("Супер-Мега-Ладона")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .background(content: {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.secondary)
                            .opacity(0.6)
                    })
                    .opacity(0.9)
                    
                    WholeExcStatsView()
                    UserParametersView()
                Spacer()
            }
            .background(content: {
                Image("gym")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
            })
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

struct UserImageCircleView: View {
    var body: some View {
        Image("user")
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(content: {
                Circle()
                    .stroke(.secondary, lineWidth: 4)
                    .opacity(0.9)
            })
    }
}

struct SmallExcStatsView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 100,height: 80)
                .foregroundColor(.brown)
                .opacity(0.8)
            VStack{
                Text("Кач")
                    .foregroundColor(.black)
                    .opacity(0.95)
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading){
                        Text("40 пов")
                            .foregroundColor(.green)
                        Text("50 кг")
                            .foregroundColor(.red)
                    }.opacity(0.95)
                    VStack{
                        Image(systemName: "arrow.up")
                            .foregroundColor(.green)
                        Image(systemName: "arrow.down")
                            .foregroundColor(.red)
                    }.opacity(0.95)
                }
            }
        }
    }
}

struct WholeExcStatsView: View {
    var body: some View {
        GeometryReader{ metrics in
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 220)
                .foregroundColor(.gray)
                .opacity(0.85)
                .padding()
            VStack{
                Text("Статистика прошлой тренировки")
                    .font(.headline)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .opacity(0.85)
                
//                LazyVGrid(columns: [GridItem(.adaptive(minimum: metrics.size.width/3-40))]){
//                    ForEach(0..<3, content: {_ in
//                        SmallExcStatsView()
//                    })
//                }
                HStack {
                    ForEach(0..<3, content: {_ in
                        SmallExcStatsView()
                    })
                }
                HStack {
                    ForEach(0..<3, content: {_ in
                        SmallExcStatsView()
                    })
                }
            }
        }
        }
    }
}
struct UserParametersView: View {
    var body: some View {
        GeometryReader{ metrics in
        RoundedRectangle(cornerRadius: 20)
                        .frame(height: 220)
                        .foregroundColor(.gray)
                        .opacity(0.85)
                        .padding()
                        .overlay(content: {
                            VStack{
                                HStack {
                                    Spacer()
                                    UserDataRectangleView(w: metrics.size.width/2.35, h: metrics.size.height*0.3/2+35, textTop: "Рост", textBot: "15 см")
                                    UserDataRectangleView(w: metrics.size.width/2.35, h: metrics.size.height*0.3/2+35, textTop: "Вес", textBot: "100 кг")
                                    Spacer()
                                }.frame(height: metrics.size.height*0.30)
                                HStack {
                                    Spacer()
                                    UserDataRectangleView(w: metrics.size.width*0.2, h: metrics.size.height*0.5, textTop: "Возраст", textBot: "100 лет")
                                    UserDataRectangleView(w: metrics.size.width*0.65, h: metrics.size.height*0.5, textTop: "Цель тренировок", textBot: "Стать самым крутым на районе", textAlignment: .center)
                                    Spacer()
                                }.frame(height: metrics.size.height*0.50)
                            }
                                .padding()
                                .foregroundColor(Color(red: 1.018, green: 0.824, blue: 0.828))
                                .opacity(0.9)
                        })
        }
    }
}

struct UserDataRectangleView: View {
    var w: CGFloat
    var h: CGFloat
    var textTop: String
    var textBot: String
    var textAlignment: TextAlignment
    init(w: CGFloat, h: CGFloat, textTop: String, textBot: String, textAlignment: TextAlignment = .center){
        self.w = w
        self.h = h
        self.textTop = textTop
        self.textBot = textBot
        self.textAlignment = textAlignment
    }
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: w,height: h)
                .opacity(0.8)
            VStack{
                Text(textTop)
                    .fontWeight(.light)
                    .multilineTextAlignment(textAlignment)
//                    .frame(width: w-10)
                Text(textBot)
                    .fontWeight(.light)
                    .multilineTextAlignment(textAlignment)
                    .frame(width: w-10)
            }.foregroundColor(.black)
                .font(.title3)
        }
    }
}
