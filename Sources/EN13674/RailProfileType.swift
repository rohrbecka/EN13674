//
//  RailProfileType.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// The different types of profiles, which are defined in EN 13674-1:2017, Appendix A.
///
/// All profile names starting with a cipher are prefixed with a "p" for "profile" to match Swift
/// variable naming rules.
public enum RailProfileType {
    case p46E1
    case p46E2
    case p46E3
    case p46E4

    case p49E1
    case p49E2
    case p49E5

    case p50E1
    case p50E2
    case p50E3
    case p50E4
    case p50E5
    case p50E6

    case p52E1

    case p54E1
    case p54E2
    case p54E3
    case p54E4
    case p54E5
    case p54E6

    case p55E1

    case p56E1

    case p60E1

    case p60E2


    static var SBB1: RailProfileType {
        .p46E1
    }


    static var U33: RailProfileType {
        .p46E2
    }


    static var NP46: RailProfileType {
        .p46E3
    }


    static var p46UNI: RailProfileType {
        .p46E4
    }


    static var DIN_S49: RailProfileType {
        .p49E1
    }


    static var S49T: RailProfileType {
        .p49E2
    }


    static var U50E: RailProfileType {
        .p50E1
    }


    static var p50EB_T: RailProfileType {
        .p50E2
    }


    static var BV50: RailProfileType {
        .p50E3
    }


    static var UIC50: RailProfileType {
        .p50E4
    }


    static var p50UNI: RailProfileType {
        .p50E5
    }


    static var U50: RailProfileType {
        .p50E6
    }


    static var p52RATP: RailProfileType {
        .p52E1
    }


    static var UIC54: RailProfileType {
        .p54E1
    }


    static var UIC54E: RailProfileType {
        .p54E2
    }


    static var DIN_S54: RailProfileType {
        .p54E3
    }


    static var p54E1AHC: RailProfileType {
        .p54E5
    }


    static var pU55: RailProfileType {
        .p55E1
    }


    static var BS113lb_BRVariant: RailProfileType {
        .p56E1
    }


    static var UIC60: RailProfileType {
        .p60E1
    }
}
