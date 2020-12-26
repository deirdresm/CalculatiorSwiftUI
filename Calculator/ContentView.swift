//
//  ContentView.swift
//  Calculator
//
//  Created by Deirdre Saoirse Moen on 12/26/20.
//

import SwiftUI

// credit for landscape to: https://medium.com/@prafullkumar77/swiftui-managing-previews-8b0fb3b59b85

struct Landscape<Content>: View where Content: View {
    let content: () -> Content
    let height = UIScreen.main.bounds.width //toggle width height
    let width = UIScreen.main.bounds.height

    var body: some View {
     content().previewLayout(PreviewLayout.fixed(width: width, height: height))
    }
}

struct ResultCell: View {
    let color: Color
    let text: String
    let geometry: GeometryProxy
    
    var body: some View {
        HStack {
            Spacer()
            Text(text)
                .padding(10)
        }
        .accessibilityElement(children: .ignore)
        .accessibility(label: Text("Calculated result: \(text)"))
        .frame(width: geometry.size.width, height: geometry.size.height)
        .background(color)
        .foregroundColor(Color.textColor)
        .font(.title)
        .padding(1)
     }
}

struct ButtonCell: View {
    let color: Color
    let text: String
    let accessibleLabel: String
    let width: Int
    let geometry: GeometryProxy
    
    var body: some View {
        Text(text)
            .accessibilityElement(children: .ignore)
            .accessibility(label: Text("Button. \(accessibleLabel)"))
            .accessibility(addTraits: .isButton)            .padding(1)
            .frame(width: (geometry.size.width * CGFloat(width)) / 4.0, height: geometry.size.height)
            .background(color)
            .foregroundColor(Color.textColor)
            .font(.title)
            .border(Color.backgroundColor, width: 1.0)
     }
}

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.backgroundColor

            VStack(spacing: 0) {
                    GeometryReader { geometry in
                        ResultCell(color: Color.resultView, text: "0", geometry: geometry)
                }
                GeometryReader { geometry in
                    HStack(spacing: 0) {
                        ButtonCell(color: Color.utilityButton, text: "%", accessibleLabel: "percent", width: 1, geometry: geometry)
                    ButtonCell(color: Color.utilityButton, text: "+/-", accessibleLabel: "plus/minus", width: 1, geometry: geometry)
                        ButtonCell(color: Color.utilityButton, text: "AC", accessibleLabel: "clear", width: 1, geometry: geometry)
                        ButtonCell(color: Color.operatorButton, text: "÷", accessibleLabel: "divide", width: 1, geometry: geometry)
                    }
                }
                GeometryReader { geometry in
                    HStack(spacing: 0) {
                    ButtonCell(color: Color.numberButton, text: "7", accessibleLabel: "7", width: 1, geometry: geometry)
                    ButtonCell(color: Color.numberButton, text: "8", accessibleLabel: "8", width: 1, geometry: geometry)
                    ButtonCell(color: Color.numberButton, text: "9", accessibleLabel: "9", width: 1, geometry: geometry)
                    ButtonCell(color: Color.operatorButton, text: "×", accessibleLabel: "multiply", width: 1, geometry: geometry)
                    }
                }
                GeometryReader { geometry in
                    HStack(spacing: 0) {
                    ButtonCell(color: Color.numberButton, text: "4", accessibleLabel: "4", width: 1, geometry: geometry)
                    ButtonCell(color: Color.numberButton, text: "5", accessibleLabel: "5", width: 1, geometry: geometry)
                    ButtonCell(color: Color.numberButton, text: "6", accessibleLabel: "6", width: 1, geometry: geometry)
                    ButtonCell(color: Color.operatorButton, text: "-", accessibleLabel: "subtract", width: 1, geometry: geometry)
                    }
                }
                GeometryReader { geometry in
                    HStack(spacing: 0) {
                    ButtonCell(color: Color.numberButton, text: "1", accessibleLabel: "1", width: 1, geometry: geometry)
                    ButtonCell(color: Color.numberButton, text: "2", accessibleLabel: "2", width: 1, geometry: geometry)
                    ButtonCell(color: Color.numberButton, text: "3", accessibleLabel: "3", width: 1, geometry: geometry)
                    ButtonCell(color: Color.operatorButton, text: "+", accessibleLabel: "plus", width: 1, geometry: geometry)
                    }
                }
                GeometryReader { geometry in
                    HStack(spacing: 0) {
                    ButtonCell(color: Color.numberButton, text: "0", accessibleLabel: "0", width: 2, geometry: geometry)
                    ButtonCell(color: Color.numberButton, text: ".", accessibleLabel: "decimal point", width: 1, geometry: geometry)
                    ButtonCell(color: Color.operatorButton, text: "=", accessibleLabel: "=", width: 1, geometry: geometry)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            Landscape {
                ContentView()
                    .preferredColorScheme(.dark)
            }
        }
    }
}
