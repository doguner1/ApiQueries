//
//  JokesHomeView.swift
//  ApiQueries
//
//  Created by Dogu on 28.05.2024.
//

import SwiftUI

struct JokesHomeView: View {
    @ObservedObject var vm = JokesViewModel()
    
    var body: some View {
        NavigationView{
            List(vm.jokes) { element in
                Text(element.joke)
            }
            .toolbar{
                Button(action: addJoke) {
                    Text("Button")
                }
            }
            .navigationTitle("Jokes App")
        }
    }
    
    func addJoke() {
        vm.getJokes()
    }
}

#Preview {
    JokesHomeView()
}
