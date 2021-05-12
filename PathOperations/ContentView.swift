//
//  ContentView.swift
//  PathOperations
//
//  Created by Vadiraj Hippargi on 5/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        someShape()
            .stroke()
            .frame(width: 200, height: 100)
            .foregroundColor(.red)
            .background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct someShape: Shape {
func path( in rect :CGRect) -> Path {
var path = Path()
    path.move(to: CGPoint(x: rect.width/2, y: rect.height/2))
    path.addLine(to: CGPoint(x: rect.width, y: rect.height))
    path.closeSubpath()
    
    
    return path

}
}
