//
//  CardModel.swift
//  Learn by Doing
//
//  Created by Mary Moreira on 25/10/2022.
//

import SwiftUI

//MARK: - Card Model

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
