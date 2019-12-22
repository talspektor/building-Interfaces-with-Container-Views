//
//  ContentView.swift
//  Swift UI Views
//
//  Created by Tal Spektor on 18/12/2019.
//  Copyright © 2019 Tal Spektor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let tips = ["Drream of mice", "Make some Origami", "Get the dog juggling"]
    
    var body: some View {
//        VStack(alignment: .trailing, spacing: 20) {
//            Text("RegEX for cats")
//                .font(Font.system(.largeTitle, design:.rounded))
//                .fontWeight(.heavy)
//                .foregroundColor(.white)
//                .shadow(color: .gray, radius: 5, x: 5, y: 5)
//                .padding([.leading, .trailing])
//            Image("CatOnKeyboard")
//            .resizable()
//            .frame(width: 100, height: 100)
//            .scaledToFit()
//            .padding()
//        }
//        .background(Color.purple)
//        VStack(alignment: .leading) {
//
//            Text("Sign up your car for Regex for cats!")
//                .font(Font.system(.headline, design: .rounded))
//                .fontWeight(.heavy)
//                .shadow(color: .gray, radius: 5, x: 5, y: 5)
//                .padding([.top, .bottom])
//            HStack {
//
//                Image("CatOnKeyboard")
//                    .resizable()
//                    .frame(width: 50, height: 50)
//                Button(action: {
//                    print("Signed up")
//                }) {
//                    HStack {
//                        Text("Sign up today!")
//                        Image(systemName: "checkmark.circle")
//                    }
//                }
//                .padding()
//                .background(Color.purple)
//                .foregroundColor(.white)
//                .shadow(radius: 5)
        //            }
//        ZStack {
//
//            Circle()
//                .fill(Color.purple)
//                .frame(width: 170, height: 170)
//                .padding()
//                .shadow(radius: 10)
//            VStack {
//
//                Image("CatOnKeyboard")
//                    .resizable()
//                    .frame(width: 150, height: 150)
//
//                Text("RegEx for cats")
//                    .font(Font.system(.largeTitle, design: .rounded))
//                    .foregroundColor(.primary)
//                    .padding()
//                    .background(Color.red)
//                    .cornerRadius(15)
//            }
//            Spacer()
//                .layoutPriority(1)
//        }
//        .background(Color.green)
//            .edgesIgnoringSafeArea(.all)// Full Screen
        
//        MARK: ForEach & Identifiable
        VStack {
            ForEach(RelaxationTip.demoTips) { tipModel in
                VStack {
                    Image(tipModel.imageName)
                        .resizable()
                        .scaledToFit()
                    Text("Cat relaxation tip number \(tipModel.tip)")
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            .previewDevice("iPhone 11")
            ContentView()
                .previewLayout(.sizeThatFits)
            ContentView()
                .environment(\.colorScheme, .dark)
        }
//        ContentView()
    }
}
