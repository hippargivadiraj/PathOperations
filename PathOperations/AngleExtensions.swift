//
//  AngleExtensions.swift
//  PathOperations
//
//  Created by Vadiraj Hippargi on 5/12/21.
//

import Foundation

/*
 We all know degrees. If I tell you, show me a 90 degree angle, you know immediately what to do. But if I say, show me a 1.5708 radians angle, what would you do? Well, you should do the same. They both refer to the same angle. Degrees and radians are two different scales to measure them. Luckily, converting between these two units, is very straight forward:

 90° × π / 180 = 1.5708

 π is the symbol for the pi number. If you need to convert from degrees to radians, you do:

 radians = degrees × π / 180

 To convert from radians to degrees:

 degrees = radians × 180 / π

 Here’s an extension you can create, in order to convert between the two units:
 
 USAGE:
 let radAngle: Double = 2.0
 print("radAngle radians= \(radAngle.asDegrees) degrees")

 let degAngle: Double = 180
 print("degAngle degrees = \(degAngle.asRadians) radians")
 */

extension Double {
    // This converts ant Double Value to degrees Note: 3.1415 = 180 Degrees
    var asDegrees: Double { return self * 180 / .pi }
    // This converts any Double ANGLE Value to radians
    var asRadians: Double { return self * .pi / 180 }
}
