//
//  MiniPlayer.swift
//  PleaseWorkPodcast
//
//  Created by Maria Asia Monda on 17/11/22.
//

import SwiftUI

struct MiniPlayer: View {
    var body: some View {
        
        
        VStack{
            
            HStack(spacing: 15) {
                
                Image("pic")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 55, height: 55)
                    .cornerRadius(15)
                
                VStack(alignment: .leading){
                    Text("Episodio 17: Chris Benoit ")
                        .fontWeight(.regular)
                    Text("14 novembre 2022")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.737))
                }
                
                HStack(spacing: 10){
                    Button(action: { },  label: {
                        
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                    
                    
                    Button(action: { },  label: {
                        
                        Image(systemName: "goforward.30")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                }
                
                .padding(.horizontal)
            }
            .frame(height: 60)
            Divider()
        }
        
        
        
        
        
        
}

    struct MiniPlayer_Previews: PreviewProvider {
        static var previews: some View {
            MiniPlayer()
        }
    }
}
