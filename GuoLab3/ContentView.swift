//
//  ContentView.swift
//  GuoLab3
//
//  Created by Jerry Guo on 10/13/26.
//

import SwiftUI

struct ContentView: View {
    @State var imageName = ""
    @State var textName = ""
    
    var body: some View {
        VStack{
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 350)
                .foregroundStyle(.orange)
            Text(textName)
                .font(.largeTitle)
            Spacer()
            
            Button("Press Me!")
            {
                if(imageName == "sun.max.fill"){
                    imageName = "hand.thumbsup"
                    textName = "You Are Great"
                }
                else{
                    imageName = "sun.max.fill"
                    textName = "You Are Awesome"
                }
            }
                .buttonStyle(.borderedProminent)
                .foregroundStyle(.white)
                .tint(.orange)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
