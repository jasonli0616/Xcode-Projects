//
//  MassConvView.swift
//  Convert App
//
//  Created by Jason Li on 2021-03-09.
//

import SwiftUI

struct MassConvView: View {
    @State var massIn: String = ""
    @State var massInUnit: String = "Select Input Unit"
    @State var massOutUnit: String = "Select Output Unit"
    @State var massConvmg: Double = 0
    @State var massOutStr: String = ""
    @State var massOutUnitStr: String = "Enter input and units"
    var body: some View {
        ZStack {
            Color("bgColor")
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    HStack {
                        Text("Mass")
                            .font(.title)
                    }
                    HStack {
                        TextField("Input mass", text: $massIn)
                            .keyboardType(.numberPad)
                            .padding([.leading, .trailing])
                            .padding(.all, 10)
                            .border(Color("whiteBlack"), width: 1)
                        Menu(massInUnit) {
                            Button("metric tonnes") {
                                massInUnit = "tonnes"
                            }
                            Button("kilograms") {
                                massInUnit = "kg"
                            }
                            Button("grams") {
                                massInUnit = "g"
                            }
                            Button("milligrams") {
                                massInUnit = "mg"
                            }
                            Button("imperial tons") {
                                massInUnit = "tons"
                            }
                            Button("US tons") {
                                massInUnit = "US tons"
                            }
                            Button("stone") {
                                massInUnit = "st"
                            }
                            Button("pounds") {
                                massInUnit = "lbs"
                            }
                            Button("ounces") {
                                massInUnit = "oz"
                            }
                        }.padding(.all, 10)
                        .background(Color("buttonColor"))
                        .cornerRadius(12)
                        .foregroundColor(Color("whiteBlack"))
                    }.padding()
                    Menu(massOutUnit) {
                        Button("metric tonnes") {
                            massOutUnit = "metric tonnes"
                        }
                        Button("kilograms") {
                            massOutUnit = "kilograms"
                        }
                        Button("grams") {
                            massOutUnit = "grams"
                        }
                        Button("milligrams") {
                            massOutUnit = "milligrams"
                        }
                        Button("imperial tons") {
                            massOutUnit = "imperial tons"
                        }
                        Button("US tons") {
                            massOutUnit = "US tons"
                        }
                        Button("stone") {
                            massOutUnit = "stone"
                        }
                        Button("pounds") {
                            massOutUnit = "pounds"
                        }
                        Button("ounces") {
                            massOutUnit = "ounces"
                        }
                    }.padding(.all, 10)
                    .background(Color("buttonColor"))
                    .cornerRadius(12)
                    .foregroundColor(Color("whiteBlack"))
                    
                    Button("Convert") {
                        if massInUnit == "tonnes" {
                            massConvmg = Double(massIn)! * 1000000000
                        } else if massInUnit == "kg" {
                            massConvmg = Double(massIn)! * 1000000
                        } else if massInUnit == "g" {
                            massConvmg = Double(massIn)! * 1000
                        } else if massInUnit == "mg" {
                            massConvmg = Double(massIn)!
                        } else if massInUnit == "tons" {
                            massConvmg = Double(massIn)! * 1016046908.8
                        } else if massInUnit == "US tons" {
                            massConvmg = Double(massIn)! * 907184740
                        } else if massInUnit == "st" {
                            massConvmg = Double(massIn)! * 6350293.18
                        } else if massInUnit == "lbs" {
                            massConvmg = Double(massIn)! * 453592.37
                        } else if massInUnit == "oz" {
                            massConvmg = Double(massIn)! * 28349.523125
                        }
                        if massOutUnit == "metric tonnes" {
                            massOutStr = String(massConvmg / 1000000000)
                            massOutUnitStr = "metric tonnes"
                        } else if massOutUnit == "kilograms" {
                            massOutStr = String(massConvmg / 1000000)
                            massOutUnitStr = "kg"
                        } else if massOutUnit == "grams" {
                            massOutStr = String(massConvmg / 1000)
                            massOutUnitStr = "g"
                        } else if massOutUnit == "milligrams" {
                            massOutStr = String(massConvmg)
                            massOutUnitStr = "mg"
                        } else if massOutUnit == "imperial tons" {
                            massOutStr = String(massConvmg / 1016046908.8)
                            massOutUnitStr = "imperial tons"
                        } else if massOutUnit == "US tons" {
                            massOutStr = String(massConvmg / 907184740)
                            massOutUnitStr = "US tons"
                        } else if massOutUnit == "stone" {
                            massOutStr = String(massConvmg / 6350293.18)
                            massOutUnitStr = "st"
                        } else if massOutUnit == "pounds" {
                            massOutStr = String(massConvmg / 453592.37)
                            massOutUnitStr = "lbs"
                        } else if massOutUnit == "ounces" {
                            massOutStr = String(massConvmg / 28349.523125)
                            massOutUnitStr = "oz"
                        } else if massInUnit == "Select Input Unit" || massOutUnit == "Select Output Unit" {
                            massOutUnitStr = "Please select unit"
                        }
                    }.padding(.all, 10)
                    .frame(width: 150)
                    .background(Color.blue)
                    .cornerRadius(12)
                    .foregroundColor(Color("whiteBlack"))
                }
                Spacer()
                VStack {
                    Text(massOutStr + " " + massOutUnitStr)
                        .font(.system(size: 20))
                }
                Spacer()
            }
        }
    }
}

struct MassConvView_Previews: PreviewProvider {
    static var previews: some View {
        MassConvView()
    }
}
