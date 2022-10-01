//
//  landmarkRow.swift
//  Origin Evolve
//
//  Created by Tyler Phillips on 10/1/22.
//

import SwiftUI

struct landmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            //Define Landmark identifiables
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
        }
    }
}

struct landmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            landmarkRow(landmark: landmarks[0])
                .previewLayout(.fixed(width: 300, height: 70))
            landmarkRow(landmark: landmarks[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
