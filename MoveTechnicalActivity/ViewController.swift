//
//  ViewController.swift
//  MoveTechnicalActivity
//
//  Created by Andres Santana on 18/05/20.
//  Copyright © 2020 Santana. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
	
	var things = [Thing]()
	
	let cellIdentifier = "ThingCell"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		/*
		Initial Setup
		*/
		
		//Set title
		title = "Our Things"
		
		//Register ThingCell
		tableView.register(UINib(nibName: "ThingCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
		
		//Create our things array
		things = [
			Book(name: "The Name of the Wind", description: "First book of The Kingkiller Chronicle", author: "Patrick Rothfuss", genre: "Heroic Fantasy"),
			Book(name: "The Wise Man's Fear", description: "Second book of The Kingkiller Chronicle", author: "Patrick Rothfuss", genre: "Heroic Fantasy"),
			Book(name: "The Doors of Stone", description: "Eagerly expected unpublished third book of The Kingkiller Chronicle", author: "Patrick Rothfuss", genre: "Heroic Fantasy"),
			Car(name: "Epona", description: "A car as wild and fast as Link's horse", model: "Mazda 2", year: "2019"),
			Phone(name: "Andres's Phone", description: "My beautiful and slightly broken phone", brand: "iPhone", model: "6s"),
			Phone(name: "My Future Phone", description: "A hopefully amazing phone", brand: "iPhone", model: "12")
		]
	}

	// MARK: - UITableViewDataSource & UITableViewDelegate

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return things.count
	}
	
	override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
		return UITableView.automaticDimension
	}
	
	override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return UITableView.automaticDimension
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ThingCell
		
		//Get object
		let thing = things[indexPath.row]
	
		//Set iconImageView
		cell.iconImageView.image = UIImage.init(named: thing.image)
		
		//Set topLabel
		cell.topLabel.text = thing.name
		
		//Set bottomLabel
		cell.bottomLabel.text = thing.description
		
		if let book = thing as? Book {
			
			//Set middleLabel
			cell.middleLabel.text = book.author
			
			//Set middleRightLabel
			cell.middleRightLabel.text = book.genre
		}
		else if let car = thing as? Car {
			
			//Set middleLabel
			cell.middleLabel.text = car.model
			
			//Set middleRightLabel
			cell.middleRightLabel.text = car.year
		}
		else if let phone = thing as? Phone {
			
			//Set middleLabel
			cell.middleLabel.text = phone.brand
			
			//Set middleRightLabel
			cell.middleRightLabel.text = phone.model
		}
		
		return cell
	}
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
	}
}

//Book by Yoyon Pujiyono from the Noun Project
//Car by alerma from the Noun Project
//Phone by zidney from the Noun Project
//question mark by Pencil from the Noun Project
