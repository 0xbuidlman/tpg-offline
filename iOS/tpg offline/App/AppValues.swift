//
//  AppValues.swift
//  tpg offline
//
//  Created by Rémy Da Costa Faro on 09/12/2015.
//  Copyright © 2016 Rémy Da Costa Faro. All rights reserved.
//

import UIKit

struct AppValues {
    static var stops: [String:Stop] = [:]
    static var favoritesStops: [String:Stop]!  = [:]
    static var fullNameFavoritesStops: [String]!  = []
    static var stopsABC: [String: [String]] = [:]
    static var idTransportAPIToTpgStopName: [Int: String]!  = [:]
    static var nameTransportAPIToTpgStopName: [String: String]!  = [:]
    static var favoritesRoutes: [[Stop]]! = []
    static var stopCodeToStopItem: [String: String] = [:]
    static var primaryColor: UIColor! = .white
    static var textColor: UIColor! = .flatOrangeDark
    static var stopsKeys: [String] = []
    static var linesBackgroundColor = [String: UIColor]()
    static var linesColor = [String: UIColor]()
    static var needUpdateDepartures: Bool = false

    static func testTimeExecution(_ title: String!, block: () -> Void) {
        // Thanks to @kristopherjohnson GitHub user.

        let start = CACurrentMediaTime()
        block()
        let end = CACurrentMediaTime()
        print("Execution time of \(title) : \(end - start)s")
    }
}
