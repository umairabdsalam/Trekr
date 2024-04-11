//
//  Tip.swift
//  Trekr
//
//  Created by Umair Salam on 4/11/24.
//

import Foundation

struct Tip: Decodable {
    
    let text: String
    let children: [Tip]?
    
}
