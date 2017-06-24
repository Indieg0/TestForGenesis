//
//  Repository+CoreDataProperties.swift
//  TestForGenesis
//
//  Created by Indieg0 on 24.06.17.
//  Copyright © 2017 None. All rights reserved.
//

import Foundation
import CoreData


extension Repository {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Repository> {
        return NSFetchRequest<Repository>(entityName: "Repository")
    }

    @NSManaged public var name: String?
    @NSManaged public var htmlURL: String?
    @NSManaged public var repoDescription: String?
    @NSManaged public var ownerLogin: String?
    @NSManaged public var starsCount: Int64

}
