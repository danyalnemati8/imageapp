//
//  ContentView.swift
//  imagegen
//
//  Created by Danyal Nemati on 11/1/23.
//
import OpenAIKit

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
            GeometryReader { reader in
                ScrollView (.horizontal){
                    HStack{
                        ForEach(ImageStyle.allCases, id: \.self){
                            imageStyle in
                            Image(imageStyle
                                .rawValue)
                                .resizable()
                                .background(Color
                                    .blue)
                                .scaledToFill()
                                .frame(width:
                                    reader.size
                                    .width * 0.4,
                                    height:
                                    reader.size
                                    .width * 0.4
                                       * 1.4)
                                .clipped()
                            
                        }
                    }
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
