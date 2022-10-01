//
//  accountView.swift
//  Origin Evolve
//
//  Created by Tyler Phillips on 9/30/22.
//

import SwiftUI

struct accountView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
                Text("Account")
                    .bold()
                    .foregroundColor(.mint)
            }
            .navigationTitle("Your Account")
        }

        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.white)
        .clipped()
        
    }
}

struct accountView_Previews: PreviewProvider {
    static var previews: some View {
        accountView()
    }
}
