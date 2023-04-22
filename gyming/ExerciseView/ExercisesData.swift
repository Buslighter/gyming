//
//  ExercisesData.swift
//  gyming
//
//  Created by gleba on 04.03.2023.
//

import Foundation

struct ExercisesData{
    static let namesOfGroups: [String] = ["fullBody", "chest", "backExecises", "shoulderExcercises", "armExercises", "legsExercises", "absExercises"]
        static let fullBody: [Exercise] = [
            Exercise(name: "Подъемы ног на перекладине", id: 1, reps: Int.random(in: 1...3) * 2 + 2),
            Exercise(name: "Жим гантелей в наклоне лежа", id: 2, reps: Int.random(in: 1...3) * 2 + 2),
            Exercise(name: "Тяга верхнего блока в тренажере", id: 3, reps: Int.random(in: 1...3) * 2 + 2),
            Exercise(name: "Жим гантелей сидя", id: 4, reps: Int.random(in: 1...3) * 2 + 2),
            Exercise(name: "Сгибания со штангой стоя", id: 5, reps: Int.random(in: 1...3) * 2 + 2),
            Exercise(name: "Французский жим лежа", id: 6, reps: Int.random(in: 1...3) * 2 + 2),
            Exercise(name: "Жим ногами лежа", id: 7, reps: Int.random(in: 1...3) * 2 + 2),
            Exercise(name: "Подъемы на носки сидя", id: 8, reps: Int.random(in: 1...3) * 2 + 2)
            ]
        static let chest: [Exercise] = [
            Exercise(name: "Жим штанги лежа горизонтально", id: 9, reps: Int.random(in: 1...3) * 2 + 2),
            Exercise(name: "Жим штанги лежа в наклоне", id: 10, reps: Int.random(in: 1...3) * 2 + 2),
            Exercise(name: "Жим гантелей лежа в наклоне", id: 11, reps: Int.random(in: 1...3) * 2 + 2),
            Exercise(name: "Отжимания от брусьев", id: 12, reps: Int.random(in: 1...3) * 2 + 2),
            Exercise(name: "Жим в наклоне в Смите", id: 13, reps: Int.random(in: 1...3) * 2 + 2),
            Exercise(name: "Сведения рук в кроссовере", id: 14, reps: Int.random(in: 1...3) * 2 + 2),
            Exercise(name: "Отжимания от пола", id: 15, reps: Int.random(in: 1...3) * 2 + 2)
            ]
        static let backExercises = [
            Exercise(name: "Подтягивания на перекладине широким хватом", id: 16, reps: Int.random(in: 4...8)),
            Exercise(name: "Подтягивания на перекладине обратным хватом", id: 17, reps: Int.random(in: 4...8)),
            Exercise(name: "Тяга верхнего блока широким хватом", id: 18, reps: Int.random(in: 4...8)),
            Exercise(name: "Тяга верхнего блока обратным хватом", id: 19, reps: Int.random(in: 4...8)),
            Exercise(name: "Тяга нижнего блока", id: 20, reps: Int.random(in: 4...8)),
            Exercise(name: "Тяга штанги в наклоне", id: 21, reps: Int.random(in: 4...8)),
            Exercise(name: "Тяга гантели в наклоне", id: 22, reps: Int.random(in: 4...8)),
            Exercise(name: "Пулловер с веревкой", id: 23, reps: Int.random(in: 4...8))
    ]

        static let shoulderExercises = [
            Exercise(name: "Жим гантелей сидя", id: 24, reps: Int.random(in: 4...8)),
            Exercise(name: "Жим гантелей стоя", id: 25, reps: Int.random(in: 4...8)),
            Exercise(name: "Жим штанги стоя", id: 26, reps: Int.random(in: 4...8)),
            Exercise(name: "Жим штанги сидя", id: 27, reps: Int.random(in: 4...8)),
            Exercise(name: "Махи в стороны сидя", id: 28, reps: Int.random(in: 4...8)),
            Exercise(name: "Махи в стороны стоя", id: 29, reps: Int.random(in: 4...8)),
            Exercise(name: "Подъемы гантелей перед собой", id: 30, reps: Int.random(in: 4...8)),
            Exercise(name: "Махи с гантелями в наклоне", id: 31, reps: Int.random(in: 4...8)),
            Exercise(name: "Разведения в тренажере стоя", id: 32, reps: Int.random(in: 4...8))
        ]
        static let armExercises = [
            Exercise(name: "Сгибания со штангой стоя", id: 33, reps: Int.random(in: 4...8)),
            Exercise(name: "Сгибание с гантелями сидя", id: 34, reps: Int.random(in: 4...8)),
            Exercise(name: "Сгибания со штангой на скамье Скотта", id: 35, reps: Int.random(in: 4...8)),
            Exercise(name: "Концентрированное сгибание с гантелей сидя поочередно", id: 36, reps: Int.random(in: 4...8)),
            Exercise(name: "Сгибания с гантелями в стиле молот стоя", id: 37, reps: Int.random(in: 4...8)),
            Exercise(name: "Сгибания со штангой стоя обратным хватом", id: 38, reps: Int.random(in: 4...8)),
            Exercise(name: "Разгибания в тренажере с веревочной рукоятью", id: 39, reps: Int.random(in: 4...8)),
            Exercise(name: "Французский жим лежа с гантелями", id: 40, reps: Int.random(in: 4...8)),
            Exercise(name: "Французский жим лежа со штангой", id: 41, reps: Int.random(in: 4...8)),
            Exercise(name: "Французский жим сидя с гантелью", id: 42, reps: Int.random(in: 4...8)),
            Exercise(name: "Разгибания с гантелью в наклоне «Кик Бэк»", id: 43, reps: Int.random(in: 4...8)),
            Exercise(name: "Тыльные отжимания от скамьи", id: 44, reps: Int.random(in: 4...8))
        ]
        static let legsExercises = [
            Exercise(name: "Разгибания ног в тренажере", id: 45, reps: Int.random(in: 4...8)),
            Exercise(name: "Жим ногами в тренажере", id: 46, reps: Int.random(in: 4...8)),
            Exercise(name: "Сгибания ног в тренажере", id: 47, reps: Int.random(in: 4...8)),
            Exercise(name: "Приседания со штангой", id: 48, reps: Int.random(in: 4...8)),
            Exercise(name: "Приседания в Смите", id: 49, reps: Int.random(in: 4...8)),
            Exercise(name: "Приседания в Гакк машине", id: 50, reps: Int.random(in: 4...8)),
            Exercise(name: "Приседания в широкой постановке с гирей", id: 51, reps: Int.random(in: 4...8)),
            Exercise(name: "Зашагивания на тумбу поочередно", id: 52, reps: Int.random(in: 4...8)),
            Exercise(name: "Сведения ног", id: 53, reps: Int.random(in: 4...8)),
            Exercise(name: "Разведения ног", id: 54, reps: Int.random(in: 4...8)),
            Exercise(name: "Подъемы на носки стоя в Смите", id: 55, reps: Int.random(in: 4...8)),
            Exercise(name: "Подъемы на носки сидя", id: 56, reps: Int.random(in: 4...8))
        ]
        static let absExercises = [
            Exercise(name: "Подъемы ног в перекладине", id: 57, reps: Int.random(in: 4...8)),
            Exercise(name: "Скручивания на мяче", id: 58, reps: Int.random(in: 4...8)),
            Exercise(name: "Скручивания в тренажере с веревочной рукоятью «Молитва»", id: 59, reps: Int.random(in: 4...8))
        ]
}
