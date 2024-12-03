//
//  ChildTwo.swift
//  Navigation
//
//  Created by Eduardo Hoyos on 3/12/24.
//

import SwiftUI

struct ChildTwo: View {
    var body: some View {
        VStack {
            Text("Child Two")
            NavigationLink(value: NavigationEnum.childThree(object: SomeObject())) {
                Text("Go to child three")
            }
        }
        
    }
}

#Preview {
    ChildTwo()
}
