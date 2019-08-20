//
//  CaptionChoise.swift
//  MemeMaker
//
//  Created by Ryo Togashi on 2019-08-19.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

import Foundation

struct CaptionOption {
    init(_ emoji: String, _ caption: String) {
        self.emoji = emoji
        self.caption = caption
    }
    let emoji: String
    let caption: String
}
