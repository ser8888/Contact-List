//
//  DetailsView.swift
//  Contact List
//
//  Created by John Doe on 24/09/2022.
//

import SwiftUI

struct DetailsView: View {
    
    let person: Person
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Image(systemName: "person")
                .resizable()
                .frame(width: 100, height: 100)
            
            
  // тут наверняка надо вынести в отдельную структура с отдельнвс файлом 2 HStack - но уже нет времени на эту оптимизацию
            
            HStack {
                Image(systemName: "phone.down")
                Text(person.phone)
            }
            HStack {
                Image(systemName: "envelope")
                Text(person.email)
            }
            Spacer()
        }
        
 
//        }
        .navigationBarTitle(person.fullname)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: Person.getContactList().first!)
    }
}
