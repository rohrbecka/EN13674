public enum EN13674 {

    /// Creates a rail profile defined in EN 13715
    ///
    /// - Parameter type: The type of the rail profile.
    ///
    ///
    public static func profile(_ type: RailProfileType) -> RailProfile {
        switch type {
        case .p46E1: return P46E1()
        default: return P46E1()
        }
    }

}
