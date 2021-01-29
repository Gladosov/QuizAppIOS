//
//  QuestionBank.swift
//  FunWithFlags
//
//  Created by Victor on 2017-12-16.
//  Copyright © 2017 Victor. All rights reserved.
//

import Foundation

class QuestionBank{
    var list = [Question]()
    
    init() {
        list.append(Question(questionText: "К какому жанру аниме относится «Наруто»?", choiceA: "A. Сенен", choiceB: "B. Ужасы", choiceC: "C. Мистика", choiceD: "D. Детектив", answer: 1))
        
        list.append(Question(questionText: "Назовите самое продолжительное аниме в жанре махо-сёдзё?", choiceA: "A. Сакура — собирательница карт", choiceB: "B. Маг целитель: Новый старт", choiceC: "C. Боевая Академия Астерисск", choiceD: "Демоны старшей Школы", answer: 1))
        
        list.append(Question(questionText: "Как зовут кота с крыльями главного героя Нацу из аниме «Хвост Феи»?", choiceA: "A. Хэппи", choiceB: "B. Чоппер", choiceC: "C. Пакун", choiceD: "D. Бэд", answer: 1))
        
        list.append(Question( questionText: "Как называется королевство, где находится штаб гильдии «Хвост Феи»?", choiceA: "A. Фиор", choiceB: "B. Лионес", choiceC: "C. Бишамон", choiceD: "D. Альбатрос", answer: 1))
        
        list.append(Question(questionText: "Как зовут ученика Сайтамы из аниме «Ванпанчмен»?", choiceA: "A. Генос" , choiceB: "B. Нацвали" , choiceC: "C. Соник" , choiceD: "D. Гомозек", answer: 1))
        
        list.append(Question(questionText: "В каком из аниме демон – родная сестра главного героя?", choiceA: "A. Клинок рассекающий демонов" , choiceB: "B. Выживший среди демонов" , choiceC: "C. Король Демонов" , choiceD: "D. Унизительная жизнь Демона", answer: 1))
        
        list.append(Question(questionText: "Как зовут сына Наруто?", choiceA: "A. Боруто" , choiceB: "B. Соруто" , choiceC: "C. Хоруто" , choiceD: "D. Варуто", answer: 1))
        
        list.append(Question(questionText: "Как называется аниме, в котором главный герой 15-летний мальчик Окумура Рин?", choiceA: "A. Синий Экзорцист" , choiceB: "B. Наруто" , choiceC: "C. Король Демонов" , choiceD: "D. Блеск Фей", answer: 1))
        
        list.append(Question(questionText: "Как зовут быстрого и дешевого Бога по вызову из аниме «Бездомный Бог» на самом деле? ", choiceA: "A. Ябоку" , choiceB: "B. Ято" , choiceC: "C. Хью" , choiceD: "D. Итзуми", answer: 1))
        
        list.append(Question(questionText: "Настоящее имя детектива L из «Тетради смерти»? ", choiceA: "A. Эл Лоулайт" , choiceB: "B. Ягами Лайт" , choiceC: "C. Михаэль Кей" , choiceD: "D. Нейт Ривер", answer: 1))

    }
}
