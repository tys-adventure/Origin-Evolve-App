//
//  circleImage.swift
//  Origin Evolve
//
//  Created by Tyler Phillips on 10/1/22.
//

import SwiftUI

struct circleImage: View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct circleImage_Previews: PreviewProvider {
    static var previews: some View {
        circleImage(image: Image("turtlerock"))
    }
}
