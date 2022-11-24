//
//  Open Classifiche.swift
//  PleaseWorkPodcast
//
//  Created by Maria Asia Monda on 18/11/22.
//

import SwiftUI

struct Open_Classifiche: View {
    var body: some View {
        
        
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    
                    Divider()
                        .padding(.horizontal)
                    
                    HStack {
                        
                        Text("Top programmi")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        Spacer()
                        
                        
                        Button(
                            "Vedi tutto",
                            action: {
                                //some code
                            }
                        )
                        
                        .foregroundColor(.purple)
                        .padding(.trailing)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            
                      
                            
                            Programmi(namePic: "pic1", num: 1, title: "Globo", subTitle: "Il Post")
                            
                            
                            
                            
                            Programmi(namePic: "pic2", num: 2, title: "La Zanzara", subTitle: "Radio 24")
                            
                            
                            Programmi(namePic: "pic3", num: 3, title: "Il podcast di Alessandro Barbero", subTitle: "A cura di: Fabrizio Mele")
                        }.offset(x:15)
                        .padding(.bottom)
                        .frame(height: 250.0)
                        
                    }
                    
                    Divider()
                        .padding(.horizontal)
                    
                    
                    HStack{
                    Text("Top Puntate")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.leading)
               
                   Spacer()
                        
                        
                        Button(
                            "Vedi tutto",
                            action: {
                                //some code
                            }
                        )
                        
                        .foregroundColor(.purple)
                        .padding(.trailing)
                        
                    }
                    
                    TopPuntate(pic: "pic1", num: 1, title: "La Zanzara del 18 novembre 2022", subTitle: "venerdì")
                        .offset(x:15)
                    
                    TopPuntate(pic: "pic1", num: 2, title: "La Zanzara del 17 novembre 2022", subTitle: "giovedì")
                        .offset(x:15)
                    
                    TopPuntate(pic: "pic1", num: 3, title: "La Zanzara del 16 novembre 2022", subTitle: "mercoledì")
                        .offset(x:15)
                    
                    TopPuntate(pic: "pic1", num: 4, title: "La Zanzara del 15 novembre 2022", subTitle: "martedì")
                        .offset(x:15)
                    
                    
                    
                    
                    
                }
                Spacer()
            }
            .navigationTitle("Classifiche")
            .toolbar(content: { ToolbarItem (placement: .navigationBarLeading)
                     {
                         }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    }) {
                        Text("Tutte le categorie")
                            .imageScale(.large)
                            .foregroundColor(.purple)
                    }
                }
            })
            
        }
    
    
    
    
    
    struct Open_Classifiche_Previews: PreviewProvider {
        static var previews: some View {
            Open_Classifiche()
        }
    }
}
