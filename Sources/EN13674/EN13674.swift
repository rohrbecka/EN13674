public enum EN13674 {
    // swiftlint:disable cyclomatic_complexity

    /// Creates a rail profile defined in EN 13715
    ///
    /// - Parameter type: The type of the rail profile.
    public static func profile(_ type: RailProfileType) -> RailProfile {
        switch type {
        case .p46E1: return P46E1()
        case .p46E2: return P46E2()
        case .p46E3: return P46E3()
        case .p46E4: return P46E4()
        case .p49E1: return P49E1()
        case .p49E2: return P49E2()
        case .p49E5: return P49E5()
        case .p50E1: return P50E1()
        case .p50E2: return P50E2()
        case .p50E3: return P50E3()
        case .p50E4: return P50E4()
        case .p50E5: return P50E5()
        case .p50E6: return P50E6()
        case .p52E1: return P52E1()
        case .p54E1: return P54E1()
        case .p54E2: return P54E2()
        case .p54E3: return P54E3()
        case .p54E4: return P54E4()
        case .p54E5: return P54E5()
        case .p54E6: return P54E6()
        case .p55E1: return P55E1()
        case .p56E1: return P56E1()
        case .p60E1: return P60E1()
        case .p60E2: return P60E2()
        }
    }

}
