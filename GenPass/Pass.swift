//
//  Pass.swift
//  GenPass
//
//  Created by neon443 on 23/05/2025.
//

import Foundation
import SwiftUI

struct PassField: Codable {
	var label: String
	var key: String
	var value: String
	var changeMessage: String?
}

enum FieldLocation {
	case headerFields
	case primaryFields
	case secondaryFields
	case auxiliaryFields
}

enum PassType {
	case boardingPass
}

struct Pass: Codable {
	var formatVersion: Int = 1
	var passTypeIdentifier: String = "pass.com.neon443.pkpass"
	var serialNumber: String = UUID().uuidString
	var teamIdentifier: String = "8JGND254B7"
	var webServiceURL: String = "https://example.com/"
	var authenticationToken: String = UUID().uuidString
	var relevantDate: Date?
	var locations: [PassLocation]
	var barcode: PassBarcode
	var organizationName: String
	var description: String
	var logoText: String
	var foregroundColor: String
	var boardingPass: [
//		"transitType": "PKTransitTypeAir",
		PassField
	]
}

struct PassLocation: Codable {
	var longitude: Float
	var latitude: Float
}

struct PassBarcode: Codable {
	var message: String
	var format: String
	var messageEncoding: String
}
