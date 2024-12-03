//
//  MainView.swift
//  Navigation
//
//  Created by Eduardo Hoyos on 3/12/24.
//

import SwiftUI

struct MainView: View {
    @State var mainPath = NavigationPath()
    var body: some View {
        NavigationStack(path: $mainPath) {
            VStack {
                Text("Main View")
                NavigationLink(value: NavigationEnum.childOne) {
                    Text("Go to child one")
                }
                NavigationLink(value: NavigationEnum.childTwo) {
                    Text("Go to child two")
                }
                NavigationLink(value: NavigationEnum.childThree(object: SomeObject())) {
                    Text("Go to child three")
                }
            }
            .padding()
            .navigationDestination(for: NavigationEnum.self) { nav in
                switch nav {
                case .childOne:
                    ChildOne()
                case .childTwo:
                    ChildTwo()
                case .childThree(let object):
                    ChildThree()
                }
            }
        }
    }
}

#Preview {
    MainView()
}
