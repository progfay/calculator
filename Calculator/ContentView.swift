//
//  ContentView.swift
//  Calculator
//
//  Created by 眞野　隼輔 on 2020/12/10.
//

import SwiftUI

struct ContentView: View {
    @State var calculation = Calculation()
    
    var body: some View {
        VStack {
            Spacer()

            Text(String(calculation.right))
                .font(.custom("value", size: 60))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: Alignment.trailing)
                .padding(.horizontal, 10)
                .padding(.vertical)

            HStack {
                CircleButton(
                    text: "AC",
                    action: { calculation.dispatch(.PRESS_AC) },
                    bgColor: Color(UIColor.lightGray),
                    fgColor: .primary
                )
                Spacer()
                CircleButton(
                    text: "+/-",
                    action: { calculation.dispatch(.PRESS_INV) },
                    bgColor: Color(UIColor.lightGray),
                    fgColor: .primary
                )
                Spacer()
                CircleButton(
                    text: "%",
                    action: { calculation.dispatch(.PRESS_MOD) },
                    bgColor: Color(UIColor.lightGray),
                    fgColor: .primary
                )
                Spacer()
                CircleButton(
                    text: "÷",
                    action: { calculation.dispatch(.PRESS_DIV) },
                    bgColor: .orange
                )
            }
            .padding(.bottom, 5)
            .frame(maxWidth: .infinity, alignment: .center)
            
            HStack(alignment: .center) {
                CircleButton(
                    text: "7",
                    action: { calculation.dispatch(.PRESS_7) },
                    bgColor: .secondary
                )
                Spacer()
                CircleButton(
                    text: "8",
                    action: { calculation.dispatch(.PRESS_8) },
                    bgColor: .secondary
                )
                Spacer()
                CircleButton(
                    text: "9",
                    action: { calculation.dispatch(.PRESS_9) },
                    bgColor: .secondary
                )
                Spacer()
                CircleButton(
                    text: "x",
                    action: { calculation.dispatch(.PRESS_MUL) },
                    bgColor: .orange
                )
            }
            .padding(.bottom, 5)
            .frame(maxWidth: .infinity, alignment: .center)
            
            HStack {
                CircleButton(
                    text: "4",
                    action: { calculation.dispatch(.PRESS_4) },
                    bgColor: .secondary
                )
                Spacer()
                CircleButton(
                    text: "5",
                    action: { calculation.dispatch(.PRESS_5) },
                    bgColor: .secondary
                )
                Spacer()
                CircleButton(
                    text: "6",
                    action: { calculation.dispatch(.PRESS_6) },
                    bgColor: .secondary
                )
                Spacer()
                CircleButton(
                    text: "-",
                    action: { calculation.dispatch(.PRESS_SUB) },
                    bgColor: .orange
                )
            }
            .padding(.bottom, 5)
            .frame(maxWidth: .infinity, alignment: .center)
            
            HStack {
                CircleButton(
                    text: "1",
                    action: { calculation.dispatch(.PRESS_1) },
                    bgColor: .secondary
                )
                Spacer()
                CircleButton(
                    text: "2",
                    action: { calculation.dispatch(.PRESS_2) },
                    bgColor: .secondary
                )
                Spacer()
                CircleButton(
                    text: "3",
                    action: { calculation.dispatch(.PRESS_3) },
                    bgColor: .secondary
                )
                Spacer()
                CircleButton(
                    text: "+",
                    action: { calculation.dispatch(.PRESS_ADD) },
                    bgColor: .orange
                )
            }
            .padding(.bottom, 5)
            .frame(maxWidth: .infinity, alignment: .center)

            HStack {
                CircleButton(
                    text: "",
                    action: {},
                    bgColor: .black
                )
                Spacer()
                CircleButton(
                    text: "0",
                    action: { calculation.dispatch(.PRESS_0) },
                    bgColor: .secondary
                )
                Spacer()
                CircleButton(
                    text: ".",
                    action: { calculation.dispatch(.PRESS_DOT) },
                    bgColor: .secondary
                )
                Spacer()
                CircleButton(
                    text: "=",
                    action: { calculation.dispatch(.PRESS_EQU) },
                    bgColor: .orange
                )
            }
            .padding(.bottom, 5)
            .frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.black)
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
