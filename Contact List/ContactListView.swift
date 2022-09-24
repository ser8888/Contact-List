//
//  ContactListView.swift
//  Contact List
//
//  Created by John Doe on 24/09/2022.
//

import SwiftUI

struct ContactListView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            ForEach(contacts, id: \.self) { contact in
                Text("\(contacts)")
            }
//            List(contacts) { person in
//
//            }
        }
    
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getContactList())
    }
}
