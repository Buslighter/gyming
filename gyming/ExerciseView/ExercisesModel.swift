//
//  ExercisesModel.swift
//  gyming
//
//  Created by gleba on 04.03.2023.
//

import Foundation

//MARK: Структура группы у которой есть имя группы (Full Body), также есть массив упражнений типа Exercise
struct ExerciseGroup: Equatable, Identifiable{
    
    static func == (lhs: ExerciseGroup, rhs: ExerciseGroup) -> Bool {
        if lhs.muscleGroup != rhs.muscleGroup{
            return true
        }else{return false}
    }
    private (set) var exercises: [Exercise]
    private var muscleGroup: MuscleGroup
    var name: String
    var imageName: String?
    var id: UUID
    init(muscleGroup: MuscleGroup){
        self.id = UUID() //Identifiable fix
        self.imageName = "TRX"
        self.muscleGroup = muscleGroup
        self.name = "Пустой"
        self.exercises = []
        self.exercises = getExercises(for: muscleGroup)
    }
//MARK: Функция берет на вход кейс перечисления, после этого заполняет массив в соответствии с кейсом
    private mutating func getExercises(for muscleGroup: MuscleGroup) -> [Exercise] {
        switch muscleGroup {
        case .legs:
            self.name = "Ноги"
            self.imageName = "Legs"
            return ExercisesData.legsExercises
        case .abs:
            self.name = "Пресс"
            self.imageName = "abs"
            return ExercisesData.absExercises
        case .chest:
            self.name = "Грудь"
            self.imageName = "chest"
            return ExercisesData.chest
        case .arms:
            self.name = "Руки"
            self.imageName = "arms"
            return ExercisesData.armExercises
        case .back:
            self.name = "Спина"
            self.imageName = "back"
            return ExercisesData.backExercises
        case .fullbody:
            self.name = "ФуллБоди"
            self.imageName = "fullbody"
            return ExercisesData.fullBody
        case .shoulders:
            self.name = "Плечи"
            self.imageName = "shoulders"
            return ExercisesData.shoulderExercises
        }
    }
//    MARK: Структура одного упражнения, есть параметры название упражнения, айди, количество повторений и время на один подход
}
struct Exercise: Identifiable{
    let name: String
    let id: Int
//      let timeInSeconds: Int
//    let imageName: String
    var reps: Int = 2  //--> depends on difficulty mode. ex: 4,6,8 reps
}
enum MuscleGroup: CaseIterable{
    case fullbody
    case chest
    case abs
    case back
    case shoulders
    case arms
    case legs
}
// #pragma mark:  Нужно выставить порядок кейсов как хочется по порядку чтобы показывались в карусельке
