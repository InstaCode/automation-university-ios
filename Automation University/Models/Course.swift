//
//  Course.swift
//  Automation University
//
//  Created by JayCode with App Maker Pro on 6/18/2021.
//

import Foundation
import SwiftUI

struct Course: Hashable, Codable, Identifiable {
    let id = UUID()
    var url: String
	var credits: String
    var department: String
    var code: String
    var title: String
    var description: String
    //var professorName: String
    //var locationName: String
    //var roomNumber: String
}
