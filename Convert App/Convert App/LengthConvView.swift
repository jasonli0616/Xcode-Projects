//
//  LengthConvView.swift
//  Convert App
//
//  Created by Jason Li on 2021-03-09.
//

import SwiftUI

struct LengthConvView: View {
    @State var lengthIn: String = ""
    @State var lengthInUnit: String = "Select Input Unit"
    @State var lengthOutUnit: String = "Select Output Unit"
    @State var lengthConvmm: Double = 0
    @State var lengthOutStr: String = ""
    @State var lengthOutUnitStr: String = "Enter input and units"
    var body: some View {
        ZStack {
            Color("bgColor")
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    HStack {
                        Text("Length")
                            .font(.title)
                    }
                    HStack {
                        TextField("Input length", text: $lengthIn)
                            .keyboardType(.numberPad)
                            .padding([.leading, .trailing])
                            .padding(.all, 10)
                            .border(Color("whiteBlack"), width: 1)
                        Menu(lengthInUnit) {
                            Button("kilometers") {
                                lengthInUnit = "km"
                            }
                            Button("meters") {
                                lengthInUnit = "m"
                            }
                            Button("centimeters") {
                                lengthInUnit = "cm"
                            }
                            Button("millimeters") {
                                lengthInUnit = "mm"
                            }
                            Button("miles") {
                                lengthInUnit = "mi"
                            }
                            Button("yards") {
                                lengthInUnit = "yd"
                            }
                            Button("feet") {
                                lengthInUnit = "ft"
                            }
                            Button("inches") {
                                lengthInUnit = "in"
                            }
                        }.padding(.all, 10)
                        .background(Color("buttonColor"))
                        .cornerRadius(12)
                        .foregroundColor(Color("whiteBlack"))
                    }.padding()
                    Menu(lengthOutUnit) {
                        Button("kilometers") {
                            lengthOutUnit = "kilometers"
                        }
                        Button("meters") {
                            lengthOutUnit = "meters"
                        }
                        Button("centimeters") {
                            lengthOutUnit = "centimeters"
                        }
                        Button("millimeters") {
                            lengthOutUnit = "millimeters"
                        }
                        Button("miles") {
                            lengthOutUnit = "miles"
                        }
                        Button("yards") {
                            lengthOutUnit = "yards"
                        }
                        Button("feet") {
                            lengthOutUnit = "feet"
                        }
                        Button("inches") {
                            lengthOutUnit = "inches"
                        }
                    }.padding(.all, 10)
                    .background(Color("buttonColor"))
                    .cornerRadius(12)
                    .foregroundColor(Color("whiteBlack"))
                    
                    Button("Convert") {
                        if lengthInUnit == "km" {
                            lengthConvmm = Double(lengthIn)! * 1000000
                        } else if lengthInUnit == "m" {
                            lengthConvmm = Double(lengthIn)! * 1000
                        } else if lengthInUnit == "cm" {
                            lengthConvmm = Double(lengthIn)! * 10
                        } else if lengthInUnit == "mm" {
                            lengthConvmm = Double(lengthIn)!
                        } else if lengthInUnit == "mi" {
                            lengthConvmm = Double(lengthIn)! * 1609344
                        } else if lengthInUnit == "yd" {
                            lengthConvmm = Double(lengthIn)! * 914.4
                        } else if lengthInUnit == "ft" {
                            lengthConvmm = Double(lengthIn)! * 304.8
                        } else if lengthInUnit == "in" {
                            lengthConvmm = Double(lengthIn)! * 25.4
                        }
                        if lengthOutUnit == "kilometers" {
                            lengthOutStr = String(lengthConvmm / 1000000)
                            lengthOutUnitStr = "km"
                        } else if lengthOutUnit == "meters" {
                            lengthOutStr = String(lengthConvmm / 1000)
                            lengthOutUnitStr = "m"
                        } else if lengthOutUnit == "centimeters" {
                            lengthOutStr = String(lengthConvmm / 10)
                            lengthOutUnitStr = "cm"
                        } else if lengthOutUnit == "millimeters" {
                            lengthOutStr = String(lengthConvmm)
                            lengthOutUnitStr = "mm"
                        } else if lengthOutUnit == "miles" {
                            lengthOutStr = String(lengthConvmm / 1609344)
                            lengthOutUnitStr = "mi"
                        } else if lengthOutUnit == "yards" {
                            lengthOutStr = String(lengthConvmm / 914.4)
                            lengthOutUnitStr = "yd"
                        } else if lengthOutUnit == "feet" {
                            lengthOutStr = String(lengthConvmm / 304.8)
                            lengthOutUnitStr = "ft"
                        } else if lengthOutUnit == "inches" {
                            lengthOutStr = String(lengthConvmm / 25.4)
                            lengthOutUnitStr = "in"
                        } else if lengthInUnit == "Select Input Unit" || lengthOutUnit == "Select Output Unit" {
                            lengthOutUnitStr = "Please select unit"
                        }
                    }.padding(.all, 10)
                    .frame(width: 150)
                    .background(Color.blue)
                    .cornerRadius(12)
                    .foregroundColor(Color("whiteBlack"))
                }
                Spacer()
                VStack {
                    Text(lengthOutStr + " " + lengthOutUnit)
                        .font(.system(size: 20))
                }
                Spacer()
            }
        }
    }
}

struct LengthConvView_Previews: PreviewProvider {
    static var previews: some View {
        LengthConvView()
    }
}
