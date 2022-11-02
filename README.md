# EN13674

A Swift Package implementing the rail profiles as defined in EN 13674-1:2017.

## About the standard

The EN 13674-1:2017 defines Vignol-shaped rails with meter-weights of 46 kg and above.
This includes not only the shape of the rail profiles, but also the requirements regarding
physical properties and the homologation process for such rails.

**This Swift Package focuses on the geometry of the rails only.**

## Usage

To use the package just include it as a package dependency into your project.
Check the repository to find the most recent release.

The project follows the semantic versioning rules as outlined in [semver.org](https://semver.org).
Therefore, it should be safe to use the "Up to next major version"-rule.

## API

Profiles can be retreived as follows:

```swift
/// Create the profile
let myProfile = EN13674.profile(.p60E2)
/// Sample the profile into points
let points = myProfile.profile(resolution: 0.5)
```

The available ``RailProfileType``s can be found in the respective documentation.
This `enum` contains the profiles as defined in EN 13674 (prefixed with a 'p').

Additionally the legacy names of the profiles as defined in table A.1 of EN 13674-1
also these ``RailProfileType``s are available.
