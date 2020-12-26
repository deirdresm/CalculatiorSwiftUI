//
//  ContentView.swift
//  Calculator
//
//  Created by Deirdre Saoirse Moen on 12/26/20.
//

import SwiftUI

struct ResultCell: View {
    let color: Color
    let text: String
    let geometry: GeometryProxy
    
    var body: some View {
        HStack {
            Spacer()
            Text(text)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .background(color)
                .foregroundColor(Color.textColor)
                .font(.title)
                .padding(1)
        }
     }
}

struct ButtonCell: View {
    let color: Color
    let text: String
    let width: Int
    let geometry: GeometryProxy
    
    var body: some View {
        Text(text)
            .padding(1)
            .frame(width: (geometry.size.width * CGFloat(width)) / 4.0, height: geometry.size.height)
            .background(color)
            .foregroundColor(Color.textColor)
            .font(.title)
            .border(Color.backgroundColor, width: 1.0)
     }
}

struct ContentView: View {
    
    let blue = Color(red: 27, green: 173, blue: 248)
    let orange = Color.orange
    let grey = Color.gray

    var body: some View {
        ZStack {
            Color.backgroundColor

        VStack(spacing: 0) {
                GeometryReader { geometry in
                    ResultCell(color: Color.resultView, text: "0", geometry: geometry)
            }
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    ButtonCell(color: Color.utilityButton, text: "%", width: 1, geometry: geometry)
                ButtonCell(color: Color.utilityButton, text: "+/-", width: 1, geometry: geometry)
                    ButtonCell(color: Color.utilityButton, text: "AC", width: 1, geometry: geometry)
                    ButtonCell(color: Color.operatorButton, text: "÷", width: 1, geometry: geometry)
                }
            }
            GeometryReader { geometry in
                HStack(spacing: 0) {
                ButtonCell(color: Color.numberButton, text: "7", width: 1, geometry: geometry)
                ButtonCell(color: Color.numberButton, text: "8", width: 1, geometry: geometry)
                ButtonCell(color: Color.numberButton, text: "9", width: 1, geometry: geometry)
                ButtonCell(color: Color.operatorButton, text: "×", width: 1, geometry: geometry)
                }
            }
            GeometryReader { geometry in
                HStack(spacing: 0) {
                ButtonCell(color: Color.numberButton, text: "4", width: 1, geometry: geometry)
                ButtonCell(color: Color.numberButton, text: "5", width: 1, geometry: geometry)
                ButtonCell(color: Color.numberButton, text: "6", width: 1, geometry: geometry)
                ButtonCell(color: Color.operatorButton, text: "-", width: 1, geometry: geometry)
                }
            }
            GeometryReader { geometry in
                HStack(spacing: 0) {
                ButtonCell(color: Color.numberButton, text: "1", width: 1, geometry: geometry)
                ButtonCell(color: Color.numberButton, text: "2", width: 1, geometry: geometry)
                ButtonCell(color: Color.numberButton, text: "3", width: 1, geometry: geometry)
                ButtonCell(color: orange, text: "+", width: 1, geometry: geometry)
                }
            }
            GeometryReader { geometry in
                HStack(spacing: 0) {
                ButtonCell(color: Color.numberButton, text: "0", width: 2, geometry: geometry)
                ButtonCell(color: Color.numberButton, text: ".", width: 1, geometry: geometry)
                ButtonCell(color: Color.operatorButton, text: "=", width: 1, geometry: geometry)
//                    .frame(width: geometry.size.width / 4, height: geometry.size.height / 6)
                }
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
