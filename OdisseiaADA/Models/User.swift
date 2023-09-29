//
//  User.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 19/09/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
