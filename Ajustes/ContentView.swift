//
//  ContentView.swift
//  Ajustes
//
//  Created by Hugo Pinheiro on 08/09/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var previewIndex = 0
    
    var body: some View {
        NavigationView {
            
            
                Form {  // Form é tipo uma tableview.
                    
                    Section {
                        HStack{
                            Image(systemName: "person.circle.fill")
                                .font(.system(size: 75))
                                .foregroundColor(.gray)
                            VStack(alignment:.leading){
                                Button("Apple Lab"){
                                }.font(.callout)
                                Text("Apple ID, icloud, media and more")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            
                        }
                    }
                    
                    Section {
                        
                        HStack {
                            Image(systemName: "airplane")
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .background(Color.yellow)
                                .clipShape(Circle())
                            Text("Modo Avião")
                               // .padding()  // espaço que aceita parâmetro
                            Toggle(isOn: .constant(false)) {
                            }
                        }
                        
                        HStack {    // elementos na horizontal
                            Image(systemName: "wifi")
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .clipShape(Circle())
                            Text("Wi-Fi")
                            Spacer()    // espaço extremo
                            Text("Uai-Fai")
                                .font(.callout)
                                .foregroundColor(Color.gray)
                        }
                        
                        HStack {
                            Image(systemName: "airpods")
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .clipShape(Circle())
                            Text("Bluetooth")
                            Spacer()
                            Text("On")
                                .font(.callout)
                                .foregroundColor(Color.gray)
                    }
                
                        HStack{
                            Image(systemName: "antenna.radiowaves.left.and.right")
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .background(Color.green)
                                .clipShape(Circle())
                            Picker(selection:$previewIndex, label:Text("Cellular")){
                            }
                        }
                        
                        HStack{
                            Image(systemName: "personalhotspot")
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .background(Color.green)
                                .clipShape(Circle())
                            Picker(selection:$previewIndex, label:Text("Personal Hotspot")){
                            }
                        }
                        
                        HStack {
                            Image(systemName: "network")
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .clipShape(Circle())
                            Text("VPN")
                            Toggle(isOn: .constant(false)) {
                            }
                        }
                        
                    }
                    
                }.navigationBarTitle("Ajustes")
      
            }
        }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        }
    }
}
