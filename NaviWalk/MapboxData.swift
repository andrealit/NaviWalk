//
//  MapboxData.swift
//  NaviWalk
//
//  Created by Andrea Tongsak on 7/25/19.
//  Copyright © 2019 Andrea Tongsak. All rights reserved.
//

import Foundation
import UIKit

// Code for accessing Mapbox tools and services.

struct MapboxData {
    let scheme = "https"
    let host = "api.mapbox.com"
    let path = "/directions/v5/mapbox/walking"
    
    func obtainData(startLongitude: Double, startLatitude: Double, endLongitude: Double, endLatitude: Double, page: Int32, completion: @escaping (_ error: String?, _ data: [String]?) -> ()) {
        
        let baseURL = "https://api.mapbox.com/directions/v5/mapbox/walking/"
        
        let session = URLSession.shared
        let task = session.dataTask(with: URL(string: baseURL)!) {
            data, response, error in
            if error != nil {
                completion(error?.localizedDescription, nil)
                return
            }
            
            let jsonData = try! JSONSerialization.jsonObject(with: <#T##Data#>, options: <#T##JSONSerialization.ReadingOptions#>)
        }
        
    }
    
    func coorShort(StartLatitude: Double, StartLongitude: Double, EndLatitude: Double, EndLongitude: Double) -> String {
        let minStartLong = min(StartLongitude + 1, 180)
        let maxStartLong = max(StartLongitude - 1, -180)
        let minStartLat = min(StartLatitude + 1, 90)
        let maxStartLat = max(StartLatitude - 1 , -90)
        
        let minEndLong = min(EndLongitude + 1, 180)
        let maxEndLong = max(EndLongitude - 1, -180)
        let minEndLat = min(EndLatitude + 1, 90)
        let maxEndLat = max(EndLatitude - 1, 90)
        
        
        return "\(minStartLong),\(maxStartLong),\(minStartLat),\(maxStartLat),\(minEndLong),\(maxEndLong).\(minEndLat).\(maxEndLat)"
    }
    
    
    
    
}
