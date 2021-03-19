//
//  SpeedConvView.swift
//  Convert App
//
//  Created by Jason Li on 2021-03-09.
//

import SwiftUI

struct SpeedConvView: View {
    @State var speedIn: String = ""
    @State var speedUnitIn: String = "Unit"
    @State var speedInTime: String = "Unit"
    @State var speedUnitOut: String = "Select Output Unit"
    @State var speedOutTime: String = "Select Unit"
    @State var speedConvkmhr: Double = 0
    @State var speedOutStr: String = ""
    @State var speedUnitTimeOutStr: String = "Enter input and units"
    var body: some View {
        ZStack {
            Color("bgColor")
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    HStack {
                        Text("Speed")
                            .font(.title)
                    }
                    HStack {
                        TextField("Input speed", text: $speedIn)
                            .keyboardType(.numberPad)
                            .padding([.leading, .trailing])
                            .padding(.all, 10)
                            .border(Color("whiteBlack"), width: 1)
                        Menu(speedUnitIn) {
                            Button("miles") {
                                speedUnitIn = "mi"
                                if speedInTime == "N/A" {
                                    speedInTime = "Select Unit"
                                }
                            }
                            Button("foot") {
                                speedUnitIn = "ft"
                                if speedInTime == "N/A" {
                                    speedInTime = "Select Unit"
                                }
                            }
                            Button("kilometers") {
                                speedUnitIn = "km"
                                if speedInTime == "N/A" {
                                    speedInTime = "Select Unit"
                                }
                            }
                            Button("meters") {
                                speedUnitIn = "m"
                                if speedInTime == "N/A" {
                                    speedInTime = "Select Unit"
                                }
                            }
                            Button("knot") {
                                speedUnitIn = "knots"
                                speedInTime = "N/A"
                            }
                        }.padding(.all, 10)
                        .background(Color("buttonColor"))
                        .cornerRadius(12)
                        .foregroundColor(Color("whiteBlack"))
                        Menu(speedInTime) {
                            Button("per hour") {
                                if speedUnitIn == "knots" {
                                    speedInTime = "N/A"
                                } else {
                                    speedInTime = "/h"
                                }
                            }
                            Button("per minute") {
                                if speedUnitIn == "knots" {
                                    speedInTime = "N/A"
                                } else {
                                    speedInTime = "/m"
                                }
                            }
                            Button("per second") {
                                if speedUnitIn == "knots" {
                                    speedInTime = "N/A"
                                } else {
                                    speedInTime = "/s"
                                }
                            }
                        }.padding(.all, 10)
                        .background(Color("buttonColor"))
                        .cornerRadius(12)
                        .foregroundColor(Color("whiteBlack"))
                    }.padding()
                    HStack {
                        Menu(speedUnitOut) {
                            Button("miles") {
                                if speedOutTime == "N/A" {
                                    speedOutTime = "Select Unit"
                                } else {
                                    speedUnitOut = "mi"
                                }
                            }
                            Button("foot") {
                                if speedOutTime == "N/A" {
                                    speedOutTime = "Select Unit"
                                } else {
                                    speedUnitOut = "ft"
                                }
                            }
                            Button("kilometers") {
                                if speedOutTime == "N/A" {
                                    speedOutTime = "Select Unit"
                                } else {
                                    speedUnitOut = "km"
                                }
                            }
                            Button("meters") {
                                if speedOutTime == "N/A" {
                                    speedOutTime = "Select Unit"
                                } else {
                                    speedUnitOut = "m"
                                }
                            }
                            Button("knot") {
                                speedUnitOut = "knots"
                                speedOutTime = "N/A"
                            }
                        }.padding(.all, 10)
                        .background(Color("buttonColor"))
                        .cornerRadius(12)
                        .foregroundColor(Color("whiteBlack"))
                        Menu(speedOutTime) {
                            Button("per hour") {
                                if speedUnitOut == "knots" {
                                    speedOutTime = "N/A"
                                } else {
                                    speedOutTime = "/h"
                                }
                            }
                            Button("per minute") {
                                if speedUnitOut == "knots" {
                                    speedOutTime = "N/A"
                                } else {
                                    speedOutTime = "/m"
                                }
                            }
                            Button("per second") {
                                if speedUnitOut == "knots" {
                                    speedOutTime = "N/A"
                                } else {
                                    speedOutTime = "/s"
                                }
                            }
                        }.padding(.all, 10)
                        .background(Color("buttonColor"))
                        .cornerRadius(12)
                        .foregroundColor(Color("whiteBlack"))
                    }
                    
                    Button("Convert") {
                        if speedUnitIn == "mi" {
                            if speedInTime == "/h" {
                                speedConvkmhr = Double(speedIn)! * 1.60934
                            } else if speedInTime == "/m" {
                                speedConvkmhr = Double(speedIn)! * 0.0268224
                            } else if speedInTime == "/s" {
                                speedConvkmhr = Double(speedIn)! * 0.00044704
                            }
                        } else if speedUnitIn == "ft" {
                            if speedInTime == "/h" {
                                speedConvkmhr = Double(speedIn)! * 0.0003048
                            } else if speedInTime == "/m" {
                                speedConvkmhr = Double(speedIn)! * 0.018288
                            } else if speedInTime == "/s" {
                                speedConvkmhr = Double(speedIn)! * 1.09728
                            }
                        } else if speedUnitIn == "km" {
                            if speedInTime == "/h" {
                                speedConvkmhr = Double(speedIn)!
                            } else if speedInTime == "/m" {
                                speedConvkmhr = Double(speedIn)! * 60
                            } else if speedInTime == "/s" {
                                speedConvkmhr = Double(speedIn)! * 3600
                            }
                        } else if speedUnitIn == "m" {
                            if speedInTime == "/h" {
                                speedConvkmhr = Double(speedIn)! * 0.001
                            } else if speedInTime == "/m" {
                                speedConvkmhr = Double(speedIn)! * 0.06
                            } else if speedInTime == "/s" {
                                speedConvkmhr = Double(speedIn)! * 3.6
                            }
                        } else if speedUnitIn == "knots" {
                            speedConvkmhr = Double(speedIn)! * 1.852
                        }
                        if speedUnitOut == "mi" {
                            if speedOutTime == "/h" {
                                speedOutStr = String(speedConvkmhr / 1.60934)
                                speedUnitTimeOutStr = "mph"
                            } else if speedOutTime == "/m" {
                                speedOutStr = String(speedConvkmhr / 0.0268224)
                                speedUnitTimeOutStr = "mi/m"
                            } else if speedOutTime == "/s" {
                                speedOutStr = String(speedConvkmhr / 0.00044704)
                                speedUnitTimeOutStr = "mi/s"
                            }
                        } else if speedUnitOut == "ft" {
                            if speedOutTime == "/h" {
                                speedOutStr = String(speedConvkmhr / 0.0003048)
                                speedUnitTimeOutStr = "ft/h"
                            } else if speedOutTime == "/m" {
                                speedOutStr = String(speedConvkmhr / 0.018288)
                                speedUnitTimeOutStr = "ft/m"
                            } else if speedOutTime == "/s" {
                                speedOutStr = String(speedConvkmhr / 1.09728)
                                speedUnitTimeOutStr = "ft/s"
                            }
                        } else if speedUnitOut == "km" {
                            if speedOutTime == "/h" {
                                speedOutStr = String(speedConvkmhr)
                                speedUnitTimeOutStr = "km/h"
                            } else if speedOutTime == "/m" {
                                speedOutStr = String(speedConvkmhr / 60)
                                speedUnitTimeOutStr = "km/m"
                            } else if speedOutTime == "/s" {
                                speedOutStr = String(speedConvkmhr / 3600)
                                speedUnitTimeOutStr = "km/s"
                            }
                        } else if speedUnitOut == "m" {
                            if speedOutTime == "/h" {
                                speedOutStr = String(speedConvkmhr / 0.001)
                                speedUnitTimeOutStr = "m/h"
                            } else if speedOutTime == "/m" {
                                speedOutStr = String(speedConvkmhr / 0.06)
                                speedUnitTimeOutStr = "m/m"
                            } else if speedOutTime == "/s" {
                                speedOutStr = String(speedConvkmhr / 3.6)
                                speedUnitTimeOutStr = "m/s"
                            }
                        } else if speedUnitOut == "knots" {
                            speedOutStr = String(speedConvkmhr / 0.53995680345)
                            speedUnitTimeOutStr = "knots"
                        }
                    }.padding(.all, 10)
                    .frame(width: 150)
                    .background(Color.blue)
                    .cornerRadius(12)
                    .foregroundColor(Color("whiteBlack"))
                    
                    
                }
                Spacer()
                VStack {
                    Text(speedOutStr + " " + speedUnitTimeOutStr)
                        .font(.system(size: 20))
                }
                Spacer()
            }
        }
    }
}

struct SpeedConvView_Previews: PreviewProvider {
    static var previews: some View {
        SpeedConvView()
    }
}
