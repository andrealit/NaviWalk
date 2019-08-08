//
//  Pin+CoreDataClass.swift
//  NaviWalk
//
//  Created by Andrea Tongsak on 7/28/19.
//  Copyright © 2019 Andrea Tongsak. All rights reserved.
//

import Foundation
import CoreData

// MARK: Pin and CoreData CClass

public class Pin: NSManagedObject {
    
}

// MARK: Pin and CoreData Properties

extension Pin {
    @nonobjc public class func fetchRequest()-> NSFetchRequest<Pin>
    {
        return NSFetchRequest<Pin>(entityName: "Pin")
    }
    
    @NSManaged public var longitude: Double
    @NSManaged public var latitude: Double
    @NSManaged public var page: Int32
    @NSManaged public var image: NSSet?
    
    convenience init(lat: Double, long: Double, context: NSManagedObjectContext)
    {
        if let entity = NSEntityDescription.entity(forEntityName: "Pin", in: context)
        {
            self.init(entity: entity, insertInto: context)
            self.longitude = long
            self.latitude = lat
            self.page = 1
        }
        else
        {
            fatalError("ERROR: Unable to find Entity")
        }
        
    }
}

extension Pin {
    @objc(addImageObject:)
    @NSManaged public func addToImage(_ value: Images)
    
    @objc(removeImageObject:)
    @NSManaged public func removeFromImage(_ value: Images)
    
    @objc(addImage:)
    @NSManaged public func addToImage(_ values: NSSet)
    
    @objc(removeImage:)
    @NSManaged public func removeFromImage(_ values: NSSet)
}
