//
//  ContentView.swift
//  Ajustes
//
//  Created by Hugo Pinheiro on 08/09/21.
//

import SwiftUI

struct ContentView: View {
     
    var body: some View {
        
        HStack {
            Form {  // Form é tipo uma tableview.
                
                Section {
                    HStack {
                        Image(systemName: "airplane")
                        Text("Modo Avião")
                           // .padding()  // espaço que aceita parâmetro
                        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                        }
                    }
                    HStack {    // elementos na horizontal
                        Image(systemName: "wifi")
                        Text("Wi-Fi")
                        Spacer()    // espaço extremo
                        Text("Uai-Fai")
                            .font(.callout)
                            .foregroundColor(Color.gray)
                    }
                    
                }
                
                HStack{
                    Image(systemName: "folder.fill.badge.plus")
                    Text("Notifications")
                }
                HStack{
                    Image(systemName: "speaker.3.fill")
                    Text("Sounds")
                }
        
            }
           
        }
    }
}














struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
