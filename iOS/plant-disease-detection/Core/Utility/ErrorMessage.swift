//
//  ErrorMessage.swift
//  plant-disease-detection
//
//  Created by Umut Ulaş Demir on 11.06.2024.
//

import Foundation

enum ErrorMessage: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
}
