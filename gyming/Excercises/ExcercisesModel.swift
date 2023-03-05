//
//  ExcercisesModel.swift
//  gyming
//
//  Created by gleba on 04.03.2023.
//

import Foundation

//MARK: Структура группы у которой есть имя группы (Full Body), также есть массив упражнений типа Excercise
struct ExcerciseGroup: Equatable, Identifiable{
    
    static func == (lhs: ExcerciseGroup, rhs: ExcerciseGroup) -> Bool {
        if lhs.name != rhs.name{
            return true
        }else{return false}
    }
    private (set) var excercises: [Excercise]
    var name: String
    var imageName: String?
    var id: UUID
    init(nameOfGroup: String, imageName: String = "TRX"){
        self.id = UUID() //Identifiable fix
        self.imageName = imageName
        var idCounter = 0
        self.excercises = []
        if let arrayOfEx = ExcercisesData.exerciseDictionary[nameOfGroup]{
            self.name = nameOfGroup
            arrayOfEx.forEach{
                excercises.append(Excercise(name: $0, id: idCounter))
                idCounter += 1
            }
        }else{self.name = "GroupNameError"}
    }
//    MARK: Структура одного упражнения, есть параметры название упражнения, айди, количество повторений и время на один подход
    struct Excercise: Identifiable{
        let name: String
        let id: Int
//      let timeInSeconds: Int
//      let reps: Int --> depends on difficulty mode. ex: 4,6,8 reps
    }
}
