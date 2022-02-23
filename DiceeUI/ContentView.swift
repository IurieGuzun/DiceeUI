//
//  ContentView.swift
//  DiceeUI
//
//  Created by Iurie Guzun on 2022-02-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("iGSrar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .center)
                DiceView()
            }
            
            
            
        }
        
    }
}

struct DiceView: View {
    var body: some View {
        Image("dice")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

