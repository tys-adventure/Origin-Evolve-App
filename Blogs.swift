//
//  Blogs.swift
//  Origin Evolve
//
//  Created by Tyler Phillips on 9/30/22.
//

import Foundation

struct Blogs: Codable, Hashable, Identifiable {
    
    var id: Int
    var name: String
    var tags: String
    var date: String
    var imageName: String
    
}
