//
//  ExercisesView.swift
//  gyming
//
//  Created by gleba on 04.03.2023.
//

import SwiftUI

struct ExercisesView: View {
    @State private var isShowed = false
    @ObservedObject var ExerciseVM: ExercisesViewModel
    private (set) var typeOfSize: DrawingConstraints.TypeOfSize
    var body: some View {
        VStack {
            Image(ExerciseVM.model.imageName ?? "TRX")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: DrawingConstraints.frame(typeOfSize).width, height: DrawingConstraints.frame(typeOfSize).height)
                .cornerRadius(DrawingConstraints.cornerRadius)
            //Если маленькая картинка происходит какой-то экшен
                .onTapGesture {
                    switch typeOfSize{
                    case .Small:
                        isShowed.toggle()
                    default:
                        break
                    }
                }
            Text(ExerciseVM.model.name)
                .font(DrawingConstraints.font(typeOfSize))
                
        }.sheet(isPresented: $isShowed) {
            FullBodyTextView()
        }
    }
    //Структура для отрисовки, в зависимости от размера шаблона(группы мышц - .Big, тренировки на них - .Small)
    struct DrawingConstraints{
        static let cornerRadius: CGFloat = 30
        static func font(_ typeOfSize: TypeOfSize)->Font{
            switch typeOfSize {
            case .Big:
                return Font.largeTitle.bold()
            case .Small:
                return Font.bold(.body)()
            }
        }
        static func frame(_ typeOfSize: TypeOfSize) -> CGSize{
           switch typeOfSize{
           case .Big:
               return CGSize(width: screen.width / 1.1, height: screen.width / 1.1)
           case .Small:
               return CGSize(width: screen.width / 2, height: screen.width / 2)
               }
           }
        enum TypeOfSize{
            case Big
            case Small
        }
       }
}

struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        let Exercise = ExercisesViewModel(ExerciseGroup: ExerciseGroup(muscleGroup: .fullbody))
        ExercisesView(ExerciseVM: Exercise, typeOfSize: .Big)
    }
}
