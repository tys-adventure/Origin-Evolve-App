//
//  screenTwo.swift
//  Origin Evolve
//
//  Created by Tyler Phillips on 9/30/22.
//

import SwiftUI

struct screenTwo: View {
    var body: some View {
        ZStack {
            Text("Who We Are")
                .bold()
                .foregroundColor(.mint)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .clipped()
    }
}

struct screenTwo_Previews: PreviewProvider {
    static var previews: some View {
        screenTwo()
    }
}
