//
//  Car.swift
//  MoveTechnicalActivity
//
//  Created by Andres Santana on 18/05/20.
//  Copyright © 2020 Santana. All rights reserved.
//

import Foundation

class Car: Thing {
	var model: String
	var year: String
	
	override var image: String {
		return "icon_car"
	}
	
	init(name: String, description: String, model: String, year: String) {
		self.model = model
		self.year = year
		
		super.init(name: name, description: description)
	}
}
