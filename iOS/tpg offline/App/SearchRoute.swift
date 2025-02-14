//
//  SearchRoute.swift
//  tpg offline
//
//  Created by Rémy Da Costa Faro on 14/01/2016.
//  Copyright © 2016 dacostafaro. All rights reserved.
//

import UIKit

internal class SearchRoute: NSObject, NSCoding {
	var departure: Stop?
	var arrival: Stop?
	var date: DateComponents?
	var isArrivalDate: Bool!

	override init() {
		super.init()
	}

	required convenience init(coder decoder: NSCoder) {
		self.init()
        if let departure = decoder.decodeObject(forKey: "depart") as? Stop {
            self.departure = departure
        } else {
            self.departure = Stop(empty: true)
        }

        if let arrival = decoder.decodeObject(forKey: "arrivee") as? Stop {
            self.arrival = arrival
        } else {
            self.arrival = Stop(empty: true)
        }

	}

	convenience init(departure: Stop?, arrival: Stop?, date: DateComponents?, isArrivalDate: Bool!) {
		self.init()
		self.departure = departure
		self.arrival = arrival
		self.date = date
		self.isArrivalDate = isArrivalDate
	}

	convenience init(departure: Stop?, arrival: Stop?) {
		self.init()
		self.departure = departure
		self.arrival = arrival
		self.date = Calendar.current.dateComponents([.day, .month, .year, .hour, .minute], from: Date())
		self.isArrivalDate = false
	}

	func encode(with coder: NSCoder) {
		if let departure = departure { coder.encode(departure, forKey: "depart") }
		if let arrival = arrival { coder.encode(arrival, forKey: "arrivee") }
	}

    func describe() -> String {
        return "[departure: \(String(describing: departure?.transportAPIiD)), arrival: \(String(describing: arrival?.transportAPIiD)), date: \(String(describing: date)), isArrivalDate: \(isArrivalDate)]"
    }
}
