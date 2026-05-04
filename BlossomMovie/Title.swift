//
//  Title.swift
//  BlossomMovie
//
//  Created by Marios Kanellopoulos on 4/5/26.
//

import Foundation

struct APIObject: Decodable {
    var results: [Title] = []
}

struct Title: Decodable, Identifiable {
    var id: Int?
    var title: String?
    var name: String?
    var overview: String?
    var posterPath: String?
    
    static var previewTitles = [
        Title(id: 1, title: "BeetgleJuice", name: "BeetgleJuice", overview: "A movie about BeetgleJuice", posterPath: Constants.testTitleURL),
        Title(id: 2, title: "Pulp Fiction", name: "Pulp Fiction", overview: "A movie about Pulp Fiction", posterPath: Constants.testTitleURL2),
        Title(id: 3, title: "The Dark Knight", name: "The Dark Knight", overview: "a movie about the dark knight", posterPath: Constants.testTitleURL3)
    ]
}
