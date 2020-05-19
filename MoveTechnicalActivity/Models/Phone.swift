//
//  Phone.swift
//  MoveTechnicalActivity
//
//  Created by Andres Santana on 18/05/20.
//  Copyright © 2020 Santana. All rights reserved.
//

import Foundation

class Phone: Thing {
	var brand: String
	var model: String
	
	override var image: String {
		return "icon_phone"
	}
	
	init(name: String, description: String, brand: String, model: String) {
		self.brand = brand
		self.model = model
		
		super.init(name: name, description: description)
	}
}
