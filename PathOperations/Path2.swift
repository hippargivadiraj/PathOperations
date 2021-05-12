//
//  SwiftUIView.swift
//  PathOperations
//
//  Created by Vadiraj Hippargi on 5/12/21.
//

import SwiftUI

struct Path2: View {
    var body: some View {
        ShrinkingSquares()
                    .stroke()
                    .frame(width: 300, height: 200)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Path2()
    }
}


struct ShrinkingSquares: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        for i in stride(from: 1.0, through: 100.0, by: 5.0) {
            let rect = CGRect(x: 0, y: 0, width: rect.width, height: rect.height)
            let insetRect = rect.insetBy(dx: CGFloat(i), dy: CGFloat(i))
            path.addRect(insetRect)
        }

        return path
    }
}
