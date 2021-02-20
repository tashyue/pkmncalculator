//
//  ContentView.swift
//  Shared
//
//  Created by Tyler Ashton Yue on 2/17/21.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        Color.blue
                .ignoresSafeArea() // Ignore just for the color
                .overlay(
                    VStack {
                        VStack(alignment: .center, spacing: 20) {
                            Text("Pokemon")
                                .font(Font.custom("Pokemon Solid", size: 33))
                                .foregroundColor(.yellow)
                        
                            Text("Type & Effectiveness Calculator")
                                    .font(Font.custom("Pokemon Solid", size: 12))
                                    .foregroundColor(.yellow)
                        }
                        Spacer()
                        Image("starters")
                                    .resizable()
                            .frame(width: 350, height: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/)
                            .scaledToFit()
                        Spacer()
                        NavigationLink(destination: CalculatorView()
                        ) {
                            Text("Start").font(Font.custom("Pokemon Solid", size: 24))
                                .foregroundColor(.yellow)
                            }
                        
                    })
        }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartView()
        }
    }
}

