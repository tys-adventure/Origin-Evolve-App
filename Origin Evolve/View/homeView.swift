//
//  homeView.swift
//  Origin Evolve
//
//  Created by Tyler Phillips on 9/30/22.
//

import SwiftUI

struct homeView: View {
    
    let listOptions = ["What you can do: A Post E.P.A Ruling Guide", "The Supreme Court, the E.P.A, and what it means for the future...", "What happened? Why we disappered.", "More Blogs"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<listOptions.count) { each in
                    Text(listOptions[each])
                }
            }
            //Set Navigation Items within homeView
            .navigationBarTitle("Welcome 🌎")
            .navigationBarItems(trailing:
                                    HStack {
                //Refresh Button
                Button(action: {
                    // more code here
                }) {
                    Image(systemName: "arrow.clockwise")
                        .font(.title)
                }
                //Slider Button
                Button(action: {
                    // more code here
                }) {
                    Image(systemName: "slider.horizontal.3")
                        .font(.title)
                }
            }
            )
        }

        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.white) defining background color doesnt work with system color settings
        .clipped()
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
