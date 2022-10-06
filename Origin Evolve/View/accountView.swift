//
//  accountView.swift
//  Origin Evolve
//
//  Created by Tyler Phillips on 9/30/22.
//

import SwiftUI

struct accountView: View {
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
                Text("Tyler Phillips")
                    .font(.title)

                HStack {
                    Text("Cuyahoga Falls")
                    Spacer()
                    Text("Ohio")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About Tyler")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()

            Spacer()
        }
        
        .navigationTitle("Tyler Phillips")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct accountView_Previews: PreviewProvider {
    static var previews: some View {
        accountView(landmark: landmarks[0])
    }
}
