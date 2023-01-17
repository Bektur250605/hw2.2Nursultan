//
//  main.swift
//  hw2.2Nursultan
//
//  Created by Бектур Каримов on 13/1/23.
//

import Foundation
//
//1)Придумать пример с наследованием с тройной иерархией. То есть 1 родитель, от него наследуется 2 наследника, от 2 наследников наследуются еще по 1 классу. Придумать общие параметры. В main вызвать по 1 объекту каждого класса.
//
//2) Создайте класс Student (Студент), который будет наследоваться от класса User с параметрами имя и фамилия и функцией getFullName() с помощью которого можно вывести одновременно имя и фамилию пользователя.
//Класс Студент имеет параметр year (год поступления в вуз). и функцию getCourse(), который будет выводить текущий курс студента (от 1 до 5). Курс вычисляется так: нужно от текущего года отнять год поступления в вуз. Текущий год получите самостоятельно. Создать объекты студентов в main и вызовите у них 2 функции getFullName() и getCourse()



class Phone{
    var name: String
    init(name: String) {
        self.name = name
       }
}

class Iphone: Phone{
    var company: String
    var camera: Int
    var mark: String
    init(name: String, camera: Int, mark: String, company: String) {
        self.company = company
        self.camera = camera
        self.mark = mark
        super.init(name: name)
    }
    func showInfoIOS(){
        print("company: \(company)\nname: \(name)\nmark: \(mark)\ncamera \(camera)k")
    }
}

class Sumsung: Phone{
    var company: String
    var camera: Int
    var mark: String
    init( mark: String, camera: Int, name: String, company: String) {
        self.company = company
        self.mark = mark
        self.camera = camera
        super.init(name: name)
    }
    func showInfoSumsung(){
        print("\ncompany: \(company)\nname: \(name)\nmark: \(mark)\ncamera \(camera)k")
    }
}

class Android: Sumsung{
    var apps: String
    init(apps: String,mark: String, camera: Int, name: String, company: String) {
        self.apps = apps
        super.init(mark: mark, camera: camera, name: name, company: company)
    }
    override func showInfoSumsung() {
        print("\ncompany: \(company)\nname: \(name)\nmark: \(mark)\ncamera \(camera)k\napp for download: \(apps)")
    }
}


class IOS: Iphone{
    var apps: String
    init(apps: String, mark: String, camera: Int, name: String, company: String) {
        self.apps = apps
        super.init(name: name , camera: camera, mark: mark , company: company)
    }
    override func showInfoIOS() {
        print("\ncompany: \(company)\nname: \(name)\nmark: \(mark)\ncamera \(camera)k\napp for download: \(apps)")
    }
}



var iphone = Iphone(name: "Iphone", camera: 4080, mark: "13 pro", company: "Apple")
iphone.showInfoIOS()
var sumsung = Sumsung(mark: "S22 Ultra", camera: 2080, name: "Sumsung", company: "Sumsung")
sumsung.showInfoSumsung()
var ios = IOS(apps: "AppSore", mark: "13", camera: 4080, name: "Iphon", company: "Apple")
ios.showInfoIOS()
var android = Android(apps: "Play Market", mark: "S22", camera: 4080, name: "Sumsung", company: "Sumsung")
android.showInfoSumsung()



//2) Создайте класс Student (Студент), который будет наследоваться от класса User с параметрами имя и фамилия и функцией getFullName() с помощью которого можно вывести одновременно имя и фамилию пользователя.
//Класс Студент имеет параметр year (год поступления в вуз). и функцию getCourse(), который будет выводить текущий курс студента (от 1 до 5). Курс вычисляется так: нужно от текущего года отнять год поступления в вуз. Текущий год получите самостоятельно. Создать объекты студентов в main и вызовите у них 2 функции getFullName() и getCourse()

class User{
    var name: String
    var surname: String
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
    func getFullNAme(){
        print("\(name) \(surname)")
    }
}


class Student: User{
    var year: Int
    init(year: Int, name: String, surname: String) {
        self.year = year
        super.init(name: name, surname: surname)
    }
    func getCourse(currentYear: Int) {
//        let currentYear = Calendar.current.component(.year, from: Date())
//        https://stackoverflow.com/questions/48670169/set-a-variable-with-current-year-in-swift
        
        let currentCourse = currentYear - year
        print("Текущий курс: \(currentCourse)")
        
    }
}

let student = Student(year: 2019, name: "ian", surname: "baika")
student.getCourse(currentYear: 2023)

















