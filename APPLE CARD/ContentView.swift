//
//  ContentView.swift
//  APPLE CARD
//
//  Created by SHUBHAM KUMAR on 21/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.17, green: 0.24, blue: 0.31, opacity: 0.9).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                VStack {
                    Image("apple")
                        .resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                }
            
            VStack {
                Image("mine")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: 350)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("SHUBHAM KUMAR")
                    .font(Font.custom("Langar-Regular", size: 46))
                    .bold()
                    .foregroundColor(.white)
                    .underline()
                    .padding(2)
                Text("WEB & iOS Developer")
                    .font(Font.custom("Pacifico-Regular", size: 22))
                    .foregroundColor(.white)
                Divider()
                RoundedRectangle(cornerRadius: 456)
                    .foregroundColor(.green)
                    .frame(width: .infinity, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .overlay(HStack {
                        Image(systemName: "phone.circle")                           .resizable()
                            .aspectRatio(contentMode: .fill)
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .padding()
                        Text("+91 123 456 7890").font(Font.custom("Langar-Regular", size: 30))
                            .bold()
                    })
                    .padding()
                RoundedRectangle(cornerRadius: 456)
                    .foregroundColor(.orange).frame(width: .infinity, height: 60.0)
                    .overlay(HStack {
                        Image(systemName: "envelope.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .foregroundColor(.white)
                            .padding()
                            
                            .frame(width: 90, height: 90)
                        Text("developer@apple.com")
                                    .font(Font.custom("Langar-Regular", size: 30))
                                                .bold()
                            .foregroundColor(.black)
                    })
                    .padding()
            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
