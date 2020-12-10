//
//  Calculation.swift
//  Calculator
//
//  Created by 眞野　隼輔 on 2020/12/10.
//

import Foundation

enum Operator: String {
    case mod = "%"
    case div = "÷"
    case mul = "x"
    case sub = "-"
    case add = "+"
    case equ = "="
    case inv = "+/-"
    case ac = "AC"
}

enum Action {
    case PRESS_MOD,
         PRESS_DIV,
         PRESS_MUL,
         PRESS_SUB,
         PRESS_ADD,
         PRESS_EQU,
         PRESS_INV,
         PRESS_DOT,
         PRESS_AC,
         PRESS_0,
         PRESS_1,
         PRESS_2,
         PRESS_3,
         PRESS_4,
         PRESS_5,
         PRESS_6,
         PRESS_7,
         PRESS_8,
         PRESS_9
}

struct Calculation {
    var ope: Operator = .equ
    var left: Int = 0
    var right: Int = 0
    
    mutating func dispatch(_ action: Action) {
        switch (action) {
        case .PRESS_MOD:
            ope = .mod
            left = right
            right = 0
            
        case .PRESS_DIV:
            ope = .div
            left = right
            right = 0
            
        case .PRESS_MUL:
            ope = .mul
            left = right
            right = 0
            
        case .PRESS_SUB:
            ope = .sub
            left = right
            right = 0
            
        case .PRESS_ADD:
            ope = .add
            left = right
            right = 0
            
        case .PRESS_EQU:
            switch (ope) {
            case .mod:
                left = left % right
                
            case .div:
                left = left / right
                
            case .mul:
                left = left * right
                
            case .sub:
                left = left - right
                
            case .add:
                left = left + right
                
            case .equ:
                return
                
            case .inv:
                right *= right
                return
                
            case .ac:
                return
            }
            right = left
            ope = .equ
            
        case .PRESS_INV:
            right *= -1
            
        case .PRESS_DOT:
            return
        
        case .PRESS_AC:
            left = 0
            right = 0
            ope = .equ
            
        case .PRESS_0:
            right = right * 10 + 0
            
        case .PRESS_1:
            right = right * 10 + 1
            
        case .PRESS_2:
            right = right * 10 + 2
            
        case .PRESS_3:
            right = right * 10 + 3
            
        case .PRESS_4:
            right = right * 10 + 4
            
        case .PRESS_5:
            right = right * 10 + 5
            
        case .PRESS_6:
            right = right * 10 + 6
            
        case .PRESS_7:
            right = right * 10 + 7
            
        case .PRESS_8:
            right = right * 10 + 8
            
        case .PRESS_9:
            right = right * 10 + 9
        }
    }
}
