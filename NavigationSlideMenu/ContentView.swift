//
//  ContentView.swift
//  NavigationSlideMenu
//
//  Created by Ramill Ibragimov on 11.02.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var show: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 15) {
                        ForEach(1...8, id: \.self) { i in
                            Image("p\(i)")
                                .resizable()
                                .frame(height: 250)
                                .cornerRadius(15)
                        }
                    }.padding()
                }
                
                GeometryReader { _ in
                    HStack {
                        Menu()
                            .offset(x: self.show ? 0 : -UIScreen.main.bounds.width)
                            .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.6))
                        Spacer()
                    }
                }.background(Color.black.opacity(self.show ? 0.5 : 0).edgesIgnoringSafeArea(.bottom))
                
            }.navigationBarTitle("Home", displayMode: .inline)
            .navigationBarItems(leading:
                Button(action: {
                    self.show.toggle()
                }, label: {
                    Image(systemName: self.show ? "arrow.left" : "line.horizontal.3")
                        .foregroundColor(.black)
                })
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Menu: View {
    var body: some View {
        VStack(spacing: 25) {
            Button(action: {
                
            }) {
                VStack(spacing: 8) {
                    Image(systemName: "camera.on.rectangle")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color("Orange"))
                        .frame(width: 60)
                    Text("Camera")
                        .foregroundColor(Color("Orange"))
                }
            }
            Button(action: {
                
            }) {
                VStack(spacing: 8) {
                    Image(systemName: "chart.bar")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color("Brown"))
                        .frame(width: 60)
                    Text("Charts")
                        .foregroundColor(Color("Brown"))
                }
            }
            Button(action: {
                
            }) {
                VStack(spacing: 8) {
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color("Red"))
                        .frame(width: 60)
                    Text("Heart")
                        .foregroundColor(Color("Red"))
                }
            }
            Button(action: {
                
            }) {
                VStack(spacing: 8) {
                    Image(systemName: "person.icloud.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color("Blue"))
                        .frame(width: 60)
                    Text("Backup")
                        .foregroundColor(Color("Blue"))
                }
            }
            Button(action: {
                
            }) {
                VStack(spacing: 8) {
                    Image(systemName: "lock.rotation.open")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color("Yellow"))
                        .frame(width: 60)
                    Text("Privacy")
                        .foregroundColor(Color("Yellow"))
                }
            }
            Spacer(minLength: 15)
        }.padding(35)
        .foregroundColor(.black)
        .background(Color("Color").edgesIgnoringSafeArea(.bottom))
    }
}
