//
//  KanyeHomeView.swift
//  ApiQueries
//
//  Created by Dogu on 28.05.2024.
//

import SwiftUI


struct KanyeHomeView: View {
    @ObservedObject var vm = KanyeViewModel()

    var body: some View {
        NavigationView{
            VStack{

                
                Text(vm.kanyeText).font(.system(size: 32)).background(Color.blue).foregroundColor(.white)
            }.navigationBarItems(leading: CustomView(vm: vm))
        }
    }
}

struct CustomView: View {
    @ObservedObject var vm: KanyeViewModel // Burada KanyeViewModel'ı paylaş

    var body: some View {
        
        HStack{
            Button(action: {
                vm.getKanye()
            }, label: {
                Text("getAlamofire")
            })
            
            Spacer()
            
            Button(action: {
                vm.getKanye()
            }, label: {
                Text("getUrl")
            })
        }

    }
}


#Preview {
    KanyeHomeView()
}
