//
//  Book.swift
//  MoveTechnicalActivity
//
//  Created by Andres Santana on 18/05/20.
//  Copyright © 2020 Santana. All rights reserved.
//

import Foundation

class Book: Thing {
	var author: String
	var genre: String
	
	override var image: String {
		return "icon_book"
	}
	
	init(name: String, description: String, author: String, genre: String) {
		self.author = author
		self.genre = genre
		
		super.init(name: name, description: description)
	}
}
