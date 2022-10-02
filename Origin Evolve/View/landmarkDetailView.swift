//
//  landmarkDetailView.swift
//  Origin Evolve
//
//  Created by Tyler Phillips on 10/1/22.
//

import SwiftUI

struct landmarkDetailView: View {
    
    var landmark: Landmark

    var body: some View {
        ScrollView {
            mapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            circleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)

                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()

            Spacer()
        }
        
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct landmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        landmarkDetailView(landmark: landmarks[0])
    }
}
