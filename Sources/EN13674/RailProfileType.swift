//
//  RailProfileType.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation
// swiftlint:disable identifier_name

/// The different types of profiles, which are defined in EN 13674-1:2017, Appendix A amd
/// EN 13674-4:2020, Appendix A.
///
/// All profile names starting with a cipher are prefixed with a "p" for "profile" to match Swift
/// variable naming rules.
public enum RailProfileType: CaseIterable {
    case p27E1

    case p30E1
    case p30E2

    case p33E1

    case p35E1

    case p36E1
    case p36E2
    case p36E3

    case p39E1

    case p40E1

    case p41E1

    case p43E1

    case p45E1
    case p45E2
    case p45E3

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


    static var p27UNI: RailProfileType {
        .p27E1
    }


    static var S30: RailProfileType {
        .p30E1
    }


    static var BS60A: RailProfileType {
        .p30E2
    }


    static var S33: RailProfileType {
        .p33E1
    }


    static var Xa: RailProfileType {
        .p35E1
    }


    static var p36UNI: RailProfileType {
        .p36E1
    }


    static var p36kgS40: RailProfileType {
        .p36E2
    }


    static var VST36: RailProfileType {
        .p36E3
    }


    static var BS80A: RailProfileType {
        .p39E1
    }


    static var S41R14: RailProfileType {
        .p40E1
    }


    static var S41R10: RailProfileType {
        .p41E1
    }


    static var K43S: RailProfileType {
        .p43E1
    }


    static var BS90A: RailProfileType {
        .p45E1
    }


    static var DSB45: RailProfileType {
        .p45E2
    }


    static var RN45: RailProfileType {
        .p45E3
    }


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



extension RailProfileType {
    /// Returns a string, describing the profile to the User.
    public var localizedDescription: String {
        let profile = EN13674.profile(self)
        if let legacyDescription = profile.legacyDescription {
            return "\(profile.description) (\(legacyDescription))"
        } else {
            return "\(profile.description)"
        }
    }
}
