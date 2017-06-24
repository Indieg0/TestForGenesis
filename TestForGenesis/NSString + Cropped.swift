//
//  NSString + Cropped.swift
//  TestForGenesis
//
//  Created by Indieg0 on 24.06.17.
//  Copyright © 2017 None. All rights reserved.
//

import Foundation

extension String {
    
     func croppedToThirtyCharacters() -> String {
        return String(self.characters.prefix(30))
    }
    
}
