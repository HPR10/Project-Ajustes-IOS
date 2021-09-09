//
//  ContentView.swift
//  Ajustes
//
//  Created by Hugo Pinheiro on 08/09/21.
//

import SwiftUI

struct ContentView: View {
     
    var body: some View {
        
        
        NavigationView {
            HStack {
                Form {  // Form é tipo uma tableview.
                    
                    Section(header: Text("Display"),
                            footer: Text("Configurações de rede")) {
                        
                        HStack {
                            Image(systemName: "airplane")
                            Text("Modo Avião")
                               // .padding()  // espaço que aceita parâmetro
                            Toggle(isOn: .constant(true)) {
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
                    Section(footer: Text("Redes sociais")) {
                        Label("Me siga no twitter @hp", systemImage: "link")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 16, weight: .heavy))
                    }
            
                }
                .navigationTitle("Ajustes")
               
            }
            
        }
      
    }
}





// https://www.youtube.com/watch?v=fktqZRRQgyU













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
