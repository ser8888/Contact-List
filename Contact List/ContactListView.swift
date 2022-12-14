//
//  ContactListView.swift
//  Contact List
//
//  Created by Sergejs Tiselskis on 24/09/2022.
//

import SwiftUI

struct ContactListView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { person in
                NavigationLink(destination: DetailsView(person: person)) {
                    Text(person.fullname)
//                       .font(.title)
                }
            }
            
            .navigationBarTitle("Contact List")
        }
       .padding()
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getContactList())
    }
}
