//
//  ContentView.swift
//  DiceeUI
//
//  Created by Iurie Guzun on 2022-02-23.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDice = 1
    @State var rightDice = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("iGSrar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .center)
                Spacer()
                Spacer()
                HStack {
                    DiceView(n: leftDice)
                    DiceView(n: rightDice)
                }
                .padding()
                Spacer()
                Spacer()
                Button(action: {
                    print("Play Button has been pressed!")
                    leftDice = Int.random(in: 1...6)
                    rightDice = Int.random(in: 1...6)
                }) {
                    Text("Play")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                }
                .padding(.horizontal)
                .background(Color.red)
                Spacer()
            }
            
            
            
        }
        
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

