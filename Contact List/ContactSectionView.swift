//
//  ContactSectionView.swift
//  Contact List
//
//  Created by John Doe on 24/09/2022.
//

import SwiftUI

struct ContactSectionView: View {
    
    let contacts: [Person]
    
    var body: some View {
      Text("Cntact Section View")
    }
}

struct ContactSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ContactSectionView(contacts: Person.getContactList())
    }
}
