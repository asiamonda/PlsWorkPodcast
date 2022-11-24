//
//  Top Puntate.swift
//  PleaseWorkPodcast
//
//  Created by Maria Asia Monda on 24/11/22.
//

import SwiftUI

struct TopPuntate : View {
    
    var pic : String
    var num : Int
    var title : String
    var subTitle : String
    
    
    var body: some View {
        
        
        
        HStack {
            Image(pic)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(5)
                .border(.gray, width: 0.5)
            //add some corner radius
            Text("\(num)")
                .font(.body)
                .fontWeight(.bold)
            
            
            VStack(alignment: .leading) {
                Text(title)
                    .frame(width: 200, alignment: .leading)
                Text(subTitle)
                    .foregroundColor(.gray)
            }
            
            Button{
                
                
                
            } label: { Image(systemName: "ellipsis")
                
            }
            //.frame(width: 500, height: 200)
            
            
            
            
            
            
            
            
        }
        }
        
        struct TopPuntate_Previews:
            PreviewProvider {
            static var previews: some View {
                TopPuntate(pic:"pic2", num: 1, title: "La Zanzara del 18 novembre 2022", subTitle: "venerdì")
            }
        }
    }
    
    

