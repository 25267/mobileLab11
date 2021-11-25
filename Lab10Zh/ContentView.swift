//
//  ContentView.swift
//  Lab10Zh
//
//  Created by Zhanibek on 18.11.2021.
//

import SwiftUI

struct ContentView: View {
    @State var historyObjects = objects
    var body: some View {
        NavigationView {
            List {
                ForEach(historyObjects) { object in
                    NavigationLink {
                        DetailedView(object: object)
                    } label: {
                        ItemView(object: object)
                    }

                }
            }
            .listStyle(.plain)
            .navigationBarTitle("История")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
