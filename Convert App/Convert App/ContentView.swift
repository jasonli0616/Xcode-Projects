//
//  ContentView.swift
//  Convert App
//
//  Created by Jason Li on 2021-03-09.
//

import SwiftUI

struct ContentView: View {
    @State var testStr: String = "not pressed"
    var body: some View {
        NavigationView {
            ZStack {
                Color("bgColor")
                    .ignoresSafeArea(.all)
                VStack {
                    HStack {
                        Text("Convert App")
                            .font(.largeTitle)
                        Image(systemName: "switch.2")
                            .font(.system(size: 35))
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        VStack {
                            NavigationLink(destination: LengthConvView()) {
                                VStack {
                                    Image(systemName: "ruler.fill")
                                        .foregroundColor(Color("buttonBlue"))
                                        .frame(height: 70)
                                        .font(.system(size: 50))
                                    Text("Length")
                                        .foregroundColor(.black)
                                }
                            }
                        }.frame(width: 100, height: 100)
                        .background(Color("buttonColor"))
                        .cornerRadius(12)
                        Spacer()
                        VStack {
                            NavigationLink(destination: MassConvView()) {
                                VStack {
                                    Image(systemName: "scalemass.fill")
                                        .foregroundColor(Color("buttonBlue"))
                                        .frame(height: 70)
                                        .font(.system(size: 50))
                                    Text("Mass")
                                        .foregroundColor(.black)
                                }
                            }
                        }.frame(width: 100, height: 100)
                        .background(Color("buttonColor"))
                        .cornerRadius(12)
                        Spacer()
                        VStack {
                            NavigationLink(destination: SpeedConvView()) {
                                VStack {
                                    Image(systemName: "speedometer")
                                        .foregroundColor(Color("buttonBlue"))
                                        .frame(height: 70)
                                        .font(.system(size: 50))
                                    Text("Speed")
                                        .foregroundColor(.black)
                                }
                            }
                        }.frame(width: 100, height: 100)
                        .background(Color("buttonColor"))
                        .cornerRadius(12)
                        Spacer()
                    }
                    Spacer()
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
