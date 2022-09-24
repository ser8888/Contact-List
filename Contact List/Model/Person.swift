//
//  Person.swift
//  Contact List
//
//  Created by Sergejs Tiselskis on 24/09/2022.
//



struct Person: Identifiable {
    
    let id: Int
    
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullname: String {
        "\(firstName) + \(lastName)"
    }
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emais.shuffled()
        
        for index in 0..<firstNames.count {
            let person = Person(
                id: index + 1,
                firstName: firstNames[index],
                lastName: lastNames[index],
                phone: phones[index],
                email: emails[index]
                
            )
            
            persons.append(person)
        }
        return persons
    }
  
}

class DataManager {
    
    static let shared = DataManager()
    private init() {}
    
    let firstNames = ["Uldis", "Sandis", "Janis", "Viesturs", "Ivars", "Krists", "Kaspars", "Ellijs"]
    let lastNames = ["Ozols", "Ozolins", "Berzins", "Kolnzols", "Karins", "Zvirbulis", "Jansons", "Liepins"]
    let emais = [ "alus@inbox.lv", "vins@inbox.lv", "janisrozes@inbox.lv", "purvis@inbox.lv", "sakta@inbox.lv", "lidosta@inbox.lv", "centrs@inbox.lv", "valoda@inbox.lv" ]
    let phones = ["29231234","12928364","19203846", "91028365", "29401183", "23981045", "23090765", "22310485"]
}

