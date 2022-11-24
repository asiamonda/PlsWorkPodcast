//
//  Programmi.swift
//  PleaseWorkPodcast
//
//  Created by Maria Asia Monda on 23/11/22.
//

import SwiftUI

struct Programmi: View {
    
    var namePic : String
    var num : Int
    var title : String
    var subTitle : String
    
    var body: some View {
        VStack(alignment: .leading){
            Image(namePic)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .cornerRadius(5)
                .border(.gray, width: 0.5)
                //add some corner radius
            
            Text("\(num)")
                .font(.body)
                .fontWeight(.bold)
            Text(title)
            Text(subTitle)
                .foregroundColor(.gray)
        }
        .frame(width: 150, height: 200)
        
    }
}

struct Programmi_Previews: PreviewProvider {
    static var previews: some View {
        Programmi(namePic: "pic2", num: 1, title: "Globo", subTitle: "Il Post")
    }
}
