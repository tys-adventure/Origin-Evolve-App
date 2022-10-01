//
//  landmarksList.swift
//  Origin Evolve
//
//  Created by Tyler Phillips on 10/1/22.
//

import SwiftUI

struct landmarksList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
//                landmarkRow(landmark: landmark)
                NavigationLink {
                    landmarkDetailView()
                } label: {
                    landmarkRow(landmark: landmark)
                }
            }
            //Set Naviagtion Title
            .navigationTitle("Landmarks")
        }
    }
}

struct landmarksList_Previews: PreviewProvider {
    static var previews: some View {
        landmarksList()
    }
}
