//
//  ContentView.swift
//  Contact List
//
//  Created by John Doe on 24/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    private var contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            DetailsView()
                .tabItem {
                    Image(systemName: "phone.down.fill")
                    Text("Details")
                }
        }
    }
}
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
