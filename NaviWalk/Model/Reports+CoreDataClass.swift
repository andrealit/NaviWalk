//
//  Directions.swift
//  NaviWalk
//
//  Created by Andrea Tongsak on 7/28/19.
//  Copyright © 2019 Andrea Tongsak. All rights reserved.
//

import Foundation
import CoreData

// MARK: Image and CoreData Class
public class Reports: NSManagedObject {
    
}

// MARK: Image and CoreData Properties

extension Images {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Images> {
        return NSFetchRequest<Images>(entityName: "Images")
    }
    
    @NSManaged public var image: NSData?
    @NSManaged public var url: String?
    @NSManaged public var pin: Pin?
    
    convenience init(image: NSData?, point: Pin, context: NSManagedObjectContext)
    {
        if let entity = NSEntityDescription.entity(forEntityName: "Images", in: context)
        {
            self.init(entity: entity, insertInto: context)
            self.image = image
            self.pin = point
        }
        else
        {
            fatalError("ERROR: Unable to find Entity")
        }
    }
    
}
