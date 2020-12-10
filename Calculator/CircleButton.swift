//
//  CircleButton.swift
//  Calculator
//
//  Created by 眞野　隼輔 on 2020/12/10.
//

import SwiftUI

struct CircleButton: View {
    var text: String = "AC"
    var action: () -> Void = {}
    var bgColor: Color = .accentColor
    var fgColor: Color = .white
    var width = CGFloat(60.0)
    var height = CGFloat(60.0)
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.title2)
        }
        .frame(width: width, height: height)
        .background(bgColor)
        .foregroundColor(fgColor)
        .cornerRadius(height * 0.5)
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/,5)
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleButton()
    }
}
