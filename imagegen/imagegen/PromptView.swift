//
//  ContentView.swift
//  imagegen
//
//  Created by Danyal Nemati on 11/1/23.
//

import SwiftUI

struct PromptView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Generate")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            Text("Choose a Style")
                .font(.title3)
                .bold()
                .foregroundColor(.white)
            HStack{
                ForEach(ImageStyle.allCases, id: \.self){
                    imageStyle in
                    Text(imageStyle.title)
                        .foregroundColor(.white)
                }
            }
            
        }
        .padding()
        .background(Color.black
            .edgesIgnoringSafeArea(.all))
    }
}

struct PromptView_Previews: PreviewProvider {
    static var previews: some View {
        PromptView()
    }
}
