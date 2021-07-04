//
//  ContentView.swift
//  Rock Paper Scissors App
//
//  Created by Jason Li on 2021-02-27.
//

import SwiftUI



var user = ""

struct ContentView: View {
    
    
    @State var AI_Str = Image("")
    @State var resultStr = ""
    
    func gameRun() {
        let randomInt = Int.random(in: 1...9)
        
        if user == "Rock" {
            if randomInt == 1 || randomInt == 3 || randomInt == 5 || randomInt == 7 {
                AI_Str = Image("paperIcon")
                    .resizable()
                resultStr = "You lose"
            } else if randomInt == 2 || randomInt == 4 || randomInt == 6 || randomInt == 8 {
                AI_Str = Image("scissorIcon")
                    .resizable()
                resultStr = "You win"
            } else if randomInt == 9 {
                AI_Str = Image("rockIcon")
                    .resizable()
                resultStr = "Tie"
            } else {
                AI_Str = Image("errorIcon")
                    .resizable()
                resultStr = "Error"
            }
        } else if user == "Paper" {
            if randomInt == 1 || randomInt == 3 || randomInt == 5 || randomInt == 7 {
                AI_Str = Image("rockIcon")
                    .resizable()
                resultStr = "You win"
            } else if randomInt == 2 || randomInt == 4 || randomInt == 6 || randomInt == 8 {
                AI_Str = Image("scissorIcon")
                    .resizable()
                resultStr = "You lose"
            } else if randomInt == 9 {
                AI_Str = Image("paperIcon")
                    .resizable()
                resultStr = "Tie"
            } else {
                AI_Str = Image("errorIcon")
                    .resizable()
                resultStr = "Error"
            }
        } else if user == "Scissors" {
            if randomInt == 1 || randomInt == 3 || randomInt == 5 || randomInt == 7 {
                AI_Str = Image("rockIcon")
                    .resizable()
                resultStr = "You lose"
            } else if randomInt == 2 || randomInt == 4 || randomInt == 6 || randomInt == 8 {
                AI_Str = Image("paperIcon")
                    .resizable()
                resultStr = "You win"
            } else if randomInt == 9 {
                AI_Str = Image("scissorIcon")
                    .resizable()
                resultStr = "Tie"
            } else {
                AI_Str = Image("errorIcon")
                    .resizable()
                resultStr = "Error"
            }
        }
    }
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 0/255, green: 239/255, blue: 255/255), Color(red: 0/255, green: 162/255, blue: 255/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Rock Paper Scissors")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.top, 25)
                    .padding(.bottom, 30)
                VStack {
                    Text("You:")
                        .font(.title2)
                        .bold()
                        .padding(.bottom, 10)
                    HStack {
                        Spacer()
                        Button(action: {
                            user = "Rock"
                            gameRun()
                        }) {
                            Image("rockIcon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.all, 5)
                                .background(Color.blue)
                                .cornerRadius(30)
                                .frame(width: 80, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 10.0)
                        .foregroundColor(.black)
                        .cornerRadius(9.0)
                        
                        Spacer()
                        Button(action: {
                            user = "Paper"
                            gameRun()
                        }) {
                            Image("paperIcon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.all, 5)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                                .cornerRadius(30)
                                .frame(width: 80, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                            .padding(.horizontal)
                            .padding(.vertical, 10.0)
                            .foregroundColor(.black)
                            .cornerRadius(/*@START_MENU_TOKEN@*/9.0/*@END_MENU_TOKEN@*/)
                        Spacer()
                        Button(action: {
                            user = "Scissors"
                            gameRun()
                        }) {
                            Image("scissorIcon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.all, 5)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                                .cornerRadius(30)
                                .frame(width: 80, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                            .padding(.horizontal)
                            .padding(.vertical, 10.0)
                            .foregroundColor(.black)
                            .cornerRadius(/*@START_MENU_TOKEN@*/9.0/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                }.padding(.vertical)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
                
                Spacer()
                VStack {
                    Text("AI:")
                        .font(.title2)
                        .bold()
                        .padding(.bottom, 10)
                    HStack {
                        Spacer()
                        AI_Str
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Spacer()
                    }
                }.padding(.vertical)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
                Spacer()
                VStack {
                    Text("Result:")
                        .font(.title2)
                        .bold()
                        .padding(.bottom, 10)
                    HStack {
                        Spacer()
                        if resultStr == "You win" {
                            Text(resultStr)
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 10)
                                .foregroundColor(Color(red: 0/255, green: 255/255, blue: 0/255))
                        } else if resultStr == "You lose" {
                            Text(resultStr)
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 10)
                                .foregroundColor(Color(red: 255/255, green: 0/255, blue: 0/255))
                        } else {
                            Text(resultStr)
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 10)
                                .foregroundColor(.black)
                        }
                            Spacer()
                    }
                }.padding(.vertical)
                .border(Color.black)
                .padding(.horizontal)
                
                Button("Reset") {
                    user = ""
                    AI_Str = Image("")
                    resultStr = ""
                }.padding(.horizontal)
                .padding(.vertical, 10.0)
                .foregroundColor(.black)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/9.0/*@END_MENU_TOKEN@*/)
                .padding(.vertical, 30)
                
                
                
                Text("Made by: Jason")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
