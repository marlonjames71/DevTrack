//
//  TMDBServiceConstants.swift
//  APIKeysInPropertyLists
//
//  Created by Marlon Raskin on 2023-05-17.
//

import Foundation

enum TMDBServiceConstants {
	
	static var apiKey: String {
		guard let filePath = Bundle.main.path(forResource: "TMDB-Info", ofType: "plist") else {
			fatalError("Couldn't find file 'TMDB-Info.plist'.")
		}
		
		do {
			let plist = try NSDictionary(contentsOf: URL(filePath: filePath), error: ())
			guard let value = plist.value(forKey: "API_KEY") as? String else {
				fatalError("Couldn't find key 'API_KEY' in 'TMDB-Info.plist'.")
			}
			
			if value.starts(with: "_") {
				fatalError("Register for an API Key with TMDB or add the key to the configuration file.")
			}
			
			return value
		} catch {
			print(error.localizedDescription)
			fatalError("Error getting plist file or getting value from plist file: \(error.localizedDescription)")
		}
	}
}
