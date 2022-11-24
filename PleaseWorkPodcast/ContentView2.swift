//
//  NUOVA GRIGLIA.swift
//  PleaseWorkPodcast
//
//  Created by Maria Asia Monda on 22/11/22.
//

import SwiftUI
import Foundation

struct ContentView2: View {
    
    
    @State var searchText: String = ""
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    let classifiche: Genre = Genre(name:"Classifiche", image: "classifiche")
    let generi: [Genre] = [
        Genre(name:"News", image: "news"),
        Genre(name:"Cultura e società", image: "costume"),
        Genre(name:"Umorismo", image: "umorismo"),
        Genre(name:"Economia", image: "economia"),
        Genre(name:"Sport", image: "sport"),
        Genre(name:"Istruzione", image: "istruzione"),
        Genre(name:"Salute e benessere", image: "salute")]
    
    var body: some View {
        NavigationStack{
            
            
            VStack {
                ScrollView {
                    
                    
                    
                    LazyVGrid(columns: columns) {
                        
                        
                        NavigationLink {
                            Open_Classifiche()
                        } label: {
                            
                            
                            ZStack {
                                Image(classifiche.image)
                                    .resizable()
                                VStack {
                                    Spacer()
                                    HStack {
                                        Text(classifiche.name)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding([.leading, .bottom])
                                        Spacer()
                                    }
                                }
                            }
                            .frame(width: 180, height: 130)
                            .cornerRadius(10)
                            .padding()
                        }

                        ForEach(generi) { generi in
                            
                            
                            ZStack {
                                Image(generi.image)
                                    .resizable()
                                VStack {
                                    Spacer()
                                    HStack {
                                    
                                        Text(generi.name)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .shadow(radius: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                            .padding([.leading, .bottom])
                                        Spacer()
                                    }
                                }
                            }
                            .frame(width: 180, height: 130)
                            .cornerRadius(10)
                            .padding()
                            
                        }
                        
                        
                    }
                    .searchable(text: $searchText)
                }
                Spacer()
                MiniPlayer()
            }
            .navigationTitle("Cerca")
        }
    }

    struct ContentView2_Previews: PreviewProvider {
        static var previews: some View {
            ContentView2()
        }
    }
}
