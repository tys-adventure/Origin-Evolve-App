//
//  eventView.swift
//  Origin Evolve
//
//  Created by Tyler Phillips on 9/30/22.
//

import SwiftUI

struct eventView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
                Text("Events")
                    .bold()
                    .foregroundColor(.mint)
            }
            .navigationTitle("Events")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.white)
        .clipped()
    }
}

struct eventView_Previews: PreviewProvider {
    static var previews: some View {
        eventView()
    }
}
