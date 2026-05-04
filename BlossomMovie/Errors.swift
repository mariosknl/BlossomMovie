//
//  Errors.swift
//  BlossomMovie
//
//  Created by Marios Kanellopoulos on 4/5/26.
//

import Foundation

enum APIConfigError: Error, LocalizedError {
    case FileNotFound
    case dataLoadingFailed(underlyingError: Error)
    case decodingFailed(underlyingError: Error)
    
    var errorDescription: String? {
        switch self {
        case .FileNotFound:
            return "API Configuration file not found."
        case .dataLoadingFailed(underlyingError: let error):
            return "Failed to load data from API configuration file: \(error.localizedDescription)"
        case .decodingFailed(underlyingError: let error):
            return "Failed to decode API configuration: \(error.localizedDescription)"
        }
    }
}
