//
//  ContentView.swift
//  Calculator
//
//  Created by Jason Li on 2021-03-13.
//

import SwiftUI

struct ContentView: View {
    @State var outputNum: Int = 0
    @State var outputNum1: Int = 0
    @State var divideBool: Bool = false
    @State var multiplyBool: Bool = false
    @State var minusBool: Bool = false
    @State var plusBool: Bool = false
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text(String(outputNum))
                        .font(.custom("SF Pro", size: 75))
                        .foregroundColor(.white)
                        .padding(.trailing, 20)
                }
                Group {
                    HStack {
                        Spacer()
                        Button(action: {
                            outputNum = 0
                            outputNum1 = 0
                        }) {
                            Text("AC")
                                .foregroundColor(.black)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], -2)
                                .padding()
                        }.background(Color.gray)
                        .cornerRadius(360)
                        Spacer()
                        Button(action: {
                            if outputNum < 0 {
                                outputNum = outputNum - (outputNum * 2)
                                outputNum1 = outputNum
                            } else if outputNum > 0 {
                                outputNum = outputNum + (outputNum * 2)
                                outputNum1 = outputNum
                            }
                        }) {
                            Image(systemName: "plus.slash.minus")
                                .foregroundColor(.black)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], 0)
                                .padding()
                        }.background(Color.gray)
                        .cornerRadius(360)
                        Spacer()
                        Button(action: {
                            outputNum = outputNum / 100
                            outputNum1 = outputNum
                        }) {
                            Text("%")
                                .foregroundColor(.black)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], 5)
                                .padding()
                        }.background(Color.gray)
                        .cornerRadius(360)
                        Spacer()
                        Button(action: {
                            divideBool = true
                            multiplyBool = false
                            minusBool = false
                            plusBool = false
                        }) {
                            Image(systemName: "divide")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], -2)
                                .padding(20)
                        }.background(Color.orange)
                        .cornerRadius(360)
                        
                        Spacer()
                    }
                    Spacer()
                }
                
                Group {
                    HStack {
                        Spacer()
                        Button(action: {
                            if divideBool == true || multiplyBool == true || minusBool == true || plusBool == true {
                                if outputNum1 == 0 {
                                    if divideBool == true {
                                        outputNum1 = outputNum / 7
                                    } else if multiplyBool == true {
                                        outputNum1 = outputNum * 7
                                    } else if minusBool == true {
                                        outputNum1 = outputNum - 7
                                    } else if plusBool == true {
                                        outputNum1 = outputNum + 7
                                    }
                                    outputNum = 7
                                } else {
                                    if divideBool == true {
                                        outputNum1 = outputNum / 7
                                    } else if multiplyBool == true {
                                        outputNum1 = outputNum * 7
                                    } else if minusBool == true {
                                        outputNum1 = outputNum - 7
                                    } else if plusBool == true {
                                        outputNum1 = outputNum + 7
                                    }
                                }
                            } else if outputNum > 0 {
                                outputNum = Int(String(outputNum) + "7")!
                                outputNum1 = outputNum
                            } else if outputNum == 0 {
                                outputNum = 7
                                outputNum1 = 7
                            }
                        }) {
                            Text("7")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], 13)
                                .padding()
                        }.background(Color(red: 65/255, green: 65/255, blue: 65/255))
                        .cornerRadius(360)
                        Spacer()
                        Button(action: {
                            outputNum = 8
                        }) {
                            Text("8")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], 13)
                                .padding()
                        }.background(Color(red: 65/255, green: 65/255, blue: 65/255))
                        .cornerRadius(360)
                        Spacer()
                        Button(action: {
                            outputNum = 9
                        }) {
                            Text("9")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], 13)
                                .padding()
                        }.background(Color(red: 65/255, green: 65/255, blue: 65/255))
                        .cornerRadius(360)
                        Spacer()
                        Button(action: {
                            divideBool = false
                            multiplyBool = true
                            minusBool = false
                            plusBool = false
                        }) {
                            Image(systemName: "multiply")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro Rounded", size: 40))
                                .padding([.leading, .trailing], -2)
                                .padding(20)
                        }.background(Color.orange)
                        .cornerRadius(360)
                        Spacer()
                    }
                    Spacer()
                }
                Group {
                    HStack {
                        Spacer()
                        Button(action: {
                            outputNum = 4
                        }) {
                            Text("4")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], 13)
                                .padding()
                        }.background(Color(red: 65/255, green: 65/255, blue: 65/255))
                        .cornerRadius(360)
                        Spacer()
                        Button(action: {
                            outputNum = 5
                        }) {
                            Text("5")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], 13)
                                .padding()
                        }.background(Color(red: 65/255, green: 65/255, blue: 65/255))
                        .cornerRadius(360)
                        Spacer()
                        Button(action: {
                            outputNum = 6
                        }) {
                            Text("6")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], 13)
                                .padding()
                        }.background(Color(red: 65/255, green: 65/255, blue: 65/255))
                        .cornerRadius(360)
                        Spacer()
                        Button(action: {
                            divideBool = false
                            multiplyBool = false
                            minusBool = true
                            plusBool = false
                        }) {
                            Image(systemName: "minus")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro Rounded", size: 40))
                                .padding([.leading, .trailing], -4)
                                .padding([.top, .bottom], 13)
                                .padding(20)
                        }.background(Color.orange)
                        .cornerRadius(360)
                        Spacer()
                    }
                    Spacer()
                }
                Group {
                    HStack {
                        Spacer()
                        Button(action: {
                            outputNum = 1
                        }) {
                            Text("1")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], 13)
                                .padding()
                        }.background(Color(red: 65/255, green: 65/255, blue: 65/255))
                        .cornerRadius(360)
                        Spacer()
                        Button(action: {
                            outputNum = 2
                        }) {
                            Text("2")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], 13)
                                .padding()
                        }.background(Color(red: 65/255, green: 65/255, blue: 65/255))
                        .cornerRadius(360)
                        Spacer()
                        Button(action: {
                            outputNum = 3
                        }) {
                            Text("3")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], 13)
                                .padding()
                        }.background(Color(red: 65/255, green: 65/255, blue: 65/255))
                        .cornerRadius(360)
                        Spacer()
                        Button(action: {
                            divideBool = false
                            multiplyBool = false
                            minusBool = false
                            plusBool = true
                        }) {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro Rounded", size: 40))
                                .padding([.leading, .trailing], -2)
                                .padding(20)
                        }.background(Color.orange)
                        .cornerRadius(360)
                        Spacer()
                    }
                    Spacer()
                }
                
                Group {
                    HStack {
                        Spacer()
                        Button(action: {
                            outputNum = 0
                        }) {
                            Text("0")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], 65)
                                .padding()
                        }.background(Color(red: 65/255, green: 65/255, blue: 65/255))
                        .cornerRadius(360)
                        Spacer()
                        Spacer()
                        Button(action: {
                            outputNum = 0
                        }) {
                            Text(".")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro", size: 40))
                                .padding([.leading, .trailing], 17)
                                .padding()
                        }.background(Color(red: 65/255, green: 65/255, blue: 65/255))
                        .cornerRadius(360)
                        Spacer()
                        Spacer()
                        Button(action: {
                            divideBool = false
                            multiplyBool = false
                            minusBool = false
                            plusBool = false
                            outputNum = outputNum1
                        }) {
                            Image(systemName: "equal")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro Rounded", size: 40))
                                .padding([.leading, .trailing], -2)
                                .padding([.top, .bottom], 5)
                                .padding(20)
                        }.background(Color.orange)
                        .cornerRadius(360)
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
