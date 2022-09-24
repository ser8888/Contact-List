//
//  Person.swift
//  Contact List
//
//  Created by Sergejs Tiselskis on 24/09/2022.
//



struct Person: Identifiable, Hashable {
    
    let id: Int
    
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullname: String {
        "\(firstName) \(lastName)"
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
