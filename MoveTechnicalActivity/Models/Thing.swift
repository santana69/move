//
//  Thing.swift
//  MoveTechnicalActivity
//
//  Created by Andres Santana on 18/05/20.
//  Copyright © 2020 Santana. All rights reserved.
//

import Foundation

class Thing {
	var name: String
	var description: String
	var image: String {
		return "icon_thing"
	}
	
	init(name: String, description: String) {
		self.name = name
		self.description = description
	}
}
