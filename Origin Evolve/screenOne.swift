//
//  screenOne.swift
//  Origin Evolve
//
//  Created by Tyler Phillips on 9/30/22.
//

import SwiftUI

struct screenOne: View {
    var body: some View {
        ZStack {
            Text("Welcome to Origin Evolve Co.")
                .bold()
                .foregroundColor(.mint)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .clipped()
        
    }
}

struct screenOne_Previews: PreviewProvider {
    static var previews: some View {
        screenOne()
    }
}
