//
//  disasters.swift
//  Syren
//
//  Created by Joshua Lim on 19/8/20.
//  Copyright © 2020 Joshua Lim. All rights reserved.
//

import Foundation

struct disasterData: Decodable {
    var disastername: String
    var statename:String
    var delacrationdate: String
    var incidentType: String
}

