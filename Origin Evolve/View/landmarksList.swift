//
//  landmarksList.swift
//  Origin Evolve
//
//  Created by Tyler Phillips on 10/1/22.
//

import SwiftUI

struct landmarksList: View {
    
    @State private var showFavoritesOnly = false
    
    //Filtered Landmarks
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
//            List(landmarks) { landmark in
            List {
                //Toggle for Filter
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        landmarkDetailView(landmark: landmark)
                    } label: {
                        landmarkRow(landmark: landmark)
                    }
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
