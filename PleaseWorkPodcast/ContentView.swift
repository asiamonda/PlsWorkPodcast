//
//  ContentView.swift
//  PleaseWorkPodcast
//
//  Created by Maria Asia Monda on 16/11/22.
//

import SwiftUI

struct AscoltaoraView {
    var body: some View {
        NavigationView {
            VStack {
                
                }
              }
           }
       }





struct ScopriView {
    var body: some View {
        NavigationView {
            VStack {
        
                 }
              }
           }
       }




struct LibreriaView {
    var body: some View {
        NavigationView {
            VStack {
            
                 }
              }
           }
       }






struct ContentView: View {
    var body: some View {
        
        
        
        
        //TAB BAR A 4
        TabView {
            
            VStack{
                Spacer()
                Text("Ascolta ora item")
                Spacer()
                MiniPlayer()
            }
                .tabItem {
                    Image(systemName: "play.circle.fill")
                    Text("Ascolta ora")
                }
            
            VStack{
                Spacer()
                Text("Scopri Item")
                Spacer()
                MiniPlayer()
            }
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Scopri")
                }
            
            VStack{
                Spacer()
                Text("Scopri Item")
                Spacer()
                MiniPlayer()
            }
                .tabItem {
                    Image(systemName: "square.stack.fill")
                    Text("Libreria")
                }
            
            ContentView2()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Cerca")
                    
                    
                }
        }
    }
}


//fine
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
