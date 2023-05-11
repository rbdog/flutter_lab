//
//
//

import Foundation

enum AsciiCode: String {
    
    case A
    case a
    case B
    case b
    case C
    case c
    case D
    case d
    case E
    case e
    case F
    case f
    case G
    case g
    case H
    case h
    case I
    case i
    case J
    case j
    case K
    case k
    case L
    case l
    case M
    case m
    case N
    case n
    case O
    case o
    case P
    case p
    case Q
    case q
    case R
    case r
    case S
    case s
    case T
    case t
    case U
    case u
    case V
    case v
    case W
    case w
    case X
    case x
    case Y
    case y
    case Z
    case z
    
    case plus
    case vLine
    case aditionalSpace
    case empty
    
    case rubydog
    case casinoplus
    
    /*
     return [ "",
     "",
     "",
     "",
     "",
     "",
     "",
     "" ]
     */
    var octTexts: [String] {
        switch self {
        
        case .A: return [ "  ■  ",
                          " ■ ■ ",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■■■■■",
                          "■   ■",
                          "■   ■" ]
            
        case .a: return [ "     ",
                          "     ",
                          "■■■  ",
                          "   ■ ",
                          " ■■■ ",
                          "■  ■ ",
                          "■  ■ ",
                          "■■■■■" ]
            
        case .B: return [ "■■■  ",
                          "■  ■ ",
                          "■   ■",
                          "■   ■",
                          "■■■■ ",
                          "■   ■",
                          "■   ■",
                          "■■■■" ]
            
        case .b: return [ "■    ",
                          "■    ",
                          "■■■■ ",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■■■■ " ]
            
        case .C: return [ " ■■■ ",
                          "■   ■",
                          "■    ",
                          "■    ",
                          "■    ",
                          "■    ",
                          "■   ■",
                          " ■■■ " ]
            
        case .c: return [ "     ",
                          "     ",
                          " ■■■■",
                          "■    ",
                          "■    ",
                          "■    ",
                          "■    ",
                          " ■■■■" ]
            
        case .D: return [ "■■■■ ",
                          "■  ■ ",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■  ■ ",
                          "■■■■ " ]
            
        case .d: return [ "    ■",
                          "    ■",
                          " ■■■■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          " ■■■■" ]
            
        case .E: return [ "■■■■■",
                          "■    ",
                          "■    ",
                          "■■■■■",
                          "■    ",
                          "■    ",
                          "■    ",
                          "■■■■■" ]
            
        case .e: return [ "     ",
                          "     ",
                          " ■■■ ",
                          "■   ■",
                          "■■■■■",
                          "■    ",
                          "■    ",
                          " ■■■ " ]
            
        case .F: return [ "■■■■■",
                          "■    ",
                          "■    ",
                          "■■■■ ",
                          "■    ",
                          "■    ",
                          "■    ",
                          "■    " ]
            
        case .f: return [ "  ■■■",
                          "  ■  ",
                          "  ■  ",
                          "■■■■■",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  " ]
            
        case .G: return [ " ■■■ ",
                          "■  ■ ",
                          "■    ",
                          "■    ",
                          "■ ■■■",
                          "■   ■",
                          "■  ■■",
                          " ■■■■" ]
            
        case .g: return [ "    ■",
                          " ■■■■",
                          "■   ■",
                          "■   ■",
                          " ■■■■",
                          "    ■",
                          "■   ■",
                          "■■■■ " ]
            
        case .H: return [ "■   ■",
                          "■   ■",
                          "■   ■",
                          "■■■■■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■" ]
            
        case .h: return [ "■   ",
                          "■   ",
                          "■   ",
                          "■■■■■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■" ]
            
        case .I: return [ "■■■■■",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "■■■■■" ]
            
        case .i: return [ "  ■  ",
                          "     ",
                          "■■■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "■■■■■" ]
            
        case .J: return [ "  ■■■",
                          "    ■",
                          "    ■",
                          "    ■",
                          "    ■",
                          "    ■",
                          "■   ■",
                          " ■■■ " ]
            
        case .j: return [ "    ■",
                          "     ",
                          " ■■■■",
                          "    ■",
                          "    ■",
                          "    ■",
                          "■   ■",
                          " ■■■ " ]
            
        case .K: return [ "■   ■",
                          "■  ■ ",
                          "■ ■  ",
                          "■■■  ",
                          "■■■  ",
                          "■  ■ ",
                          "■  ■ ",
                          "■   ■" ]
            
        case .k: return [ "■    ",
                          "■    ",
                          "■  ■ ",
                          "■ ■  ",
                          "■■■  ",
                          "■ ■  ",
                          "■  ■ ",
                          "■   ■" ]
            
        case .L: return [ "■    ",
                          "■    ",
                          "■    ",
                          "■    ",
                          "■    ",
                          "■    ",
                          "■    ",
                          "■■■■■" ]
            
        case .l: return [ "■■■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■■■" ]
            
        case .M: return [ "■   ■",
                          "■■ ■■",
                          "■■■■■",
                          "■ ■ ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■" ]
            
        case .m: return [ "     ",
                          "     ",
                          "■■■■ ",
                          "■ ■ ■",
                          "■ ■ ■",
                          "■ ■ ■",
                          "■ ■ ■",
                          "■   ■" ]
            
        case .N: return [ "■   ■",
                          "■■  ■",
                          "■■■ ■",
                          "■ ■ ■",
                          "■ ■ ■",
                          "■  ■■",
                          "■  ■■",
                          "■   ■" ]
            
        case .n: return [ "     ",
                          "     ",
                          "■■■■ ",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■" ]
            
        case .O: return [ " ■■■ ",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          " ■■■ " ]
            
        case .o: return [ "     ",
                          "     ",
                          " ■■■ ",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          " ■■■ " ]
            
        case .P: return [ "■■■■ ",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■■■■ ",
                          "■    ",
                          "■    ",
                          "■    " ]
            
        case .p: return [ "■    ",
                          "■■■■ ",
                          "■  ■■",
                          "■   ■",
                          "■  ■■",
                          "■■■■ ",
                          "■    ",
                          "■    " ]
            
        case .Q: return [ " ■■■ ",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          " ■■■ ",
                          "  ■  ",
                          "  ■■ " ]
            
        case .q: return [ "    ■",
                          " ■■■■",
                          "■■  ■",
                          "■   ■",
                          "■■  ■",
                          " ■■■■",
                          "    ■",
                          "    ■" ]
            
        case .R: return [ "■■■■ ",
                          "■   ■",
                          "■   ■",
                          "■  ■■",
                          "■■■■ ",
                          "■ ■  ",
                          "■  ■ ",
                          "■   ■" ]
            
        case .r: return [ "     ",
                          "     ",
                          "■■ ■■",
                          " ■■  ",
                          " ■   ",
                          " ■   ",
                          " ■   ",
                          "■■■■ " ]
            
        case .S: return [ "■■■■ ",
                          "■   ■",
                          "■    ",
                          "■■■  ",
                          "  ■■ ",
                          "    ■",
                          "■  ■■",
                          "■■■■ " ]
            
        case .s: return [ "     ",
                          "     ",
                          " ■■■ ",
                          "■    ",
                          "■■   ",
                          "   ■ ",
                          "    ■",
                          "■■■■ " ]
            
        case .T: return [ "■■■■■",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  " ]
            
        case .t: return [ " ■   ",
                          " ■   ",
                          "■■■■■",
                          " ■   ",
                          " ■   ",
                          " ■   ",
                          " ■   ",
                          "  ■■■" ]
            
        case .U: return [ "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          " ■■■ " ]
            
        case .u: return [ "     ",
                          "     ",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          " ■■■■" ]
            
        case .V: return [ "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          " ■ ■ ",
                          "  ■  " ]
            
        case .v: return [ "     ",
                          "     ",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          " ■ ■ ",
                          "  ■  " ]
            
        case .W: return [ "■   ■",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          "■ ■ ■",
                          "■■■■■",
                          "■■ ■■",
                          "■   ■" ]
            
        case .w: return [ "     ",
                          "     ",
                          "■   ■",
                          "■ ■ ■",
                          "■ ■ ■",
                          "■ ■ ■",
                          "■ ■ ■",
                          " ■■■■" ]
            
        case .X: return [ "■   ■",
                          "■   ■",
                          " ■ ■ ",
                          "  ■  ",
                          " ■ ■ ",
                          " ■ ■ ",
                          "■   ■",
                          "■   ■" ]
            
        case .x: return [ "     ",
                          "     ",
                          "■   ■",
                          " ■ ■ ",
                          "  ■  ",
                          " ■ ■ ",
                          " ■ ■ ",
                          "■   ■" ]
            
        case .Y: return [ "■   ■",
                          "■   ■",
                          "■   ■",
                          " ■ ■ ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  ",
                          "  ■  " ]
            
        case .y: return [ "■    ",
                          "■   ■",
                          "■   ■",
                          "■   ■",
                          " ■■■■",
                          "    ■",
                          "    ■",
                          " ■■■ " ]
            
        case .Z: return [ "■■■■■",
                          "   ■ ",
                          "   ■ ",
                          "  ■  ",
                          "  ■  ",
                          " ■   ",
                          " ■   ",
                          "■■■■■" ]
            
        case .z: return [ "     ",
                          "     ",
                          "■■■■■",
                          "   ■ ",
                          "  ■  ",
                          " ■   ",
                          "■    ",
                          "■■■■■" ]
            
        case .vLine: return [ "|",
                              "|",
                              "|",
                              "|",
                              "|",
                              "|",
                              "|",
                              "|" ]
            
        case .aditionalSpace: return [ " ",
                                       " ",
                                       " ",
                                       " ",
                                       " ",
                                       " ",
                                       " ",
                                       " " ]
            
        case .empty: return [ "",
                              "",
                              "",
                              "",
                              "",
                              "",
                              "",
                              "" ]
            
        case .plus: return [ "     ",
                             "  ■  ",
                             "  ■  ",
                             "■■■■■",
                             "  ■  ",
                             "  ■  ",
                             "     ",
                             "     " ]
            
        case .rubydog: return [ "     ■  ",
                                "     ■■ ",
                                "■   ■■■ ",
                                "■  ■■■■■",
                                " ■■■■■■■",
                                " ■■■■■■ ",
                                " ■■■■■■ ",
                                "  ■  ■  " ]
        
        case .casinoplus: return [ "        ",
                                   "  ■■■■■ ",
                                   "■■ ■■■■■",
                                   "■■■ ■■■■",
                                   "        ",
                                   "■■■■ ■■■",
                                   " ■■■■ ■ ",
                                   "        " ]
        }
    }
    
}

struct AsciiText {
    let codes: [AsciiCode]
    func octTexts(space: String) -> [String] {
        let octTextValues = self.codes.map { $0.octTexts }
        let bufferTexts = octTextValues.transpose()
        return bufferTexts.map { $0.joined(separator: space) }
    }
}
