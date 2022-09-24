//
//  ContactSectionView.swift
//  Contact List
//
//  Created by Sergejs Tiselskis on 24/09/2022.
//

import SwiftUI

struct ContactSectionView: View {
    
    let contacts: [Person]
    
    var body: some View {
        //        Text("Contact Section View")
        NavigationStack{
            List {
                ForEach(contacts) { contact in
                    Section(header: Text(contact.fullname).font(.title)) {
                        // ТОЖЕ САМОЕ- надовынести в отдельный файл два Хстека - нет времени
                        HStack {
                            Image(systemName: "phone.down")
                            Text(contact.phone)
                        }
                        HStack {
                            Image(systemName: "envelope")
                            Text(contact.email)
                            
                        }
                    }
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}
    


struct ContactSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ContactSectionView(contacts: Person.getContactList())
    }
}
