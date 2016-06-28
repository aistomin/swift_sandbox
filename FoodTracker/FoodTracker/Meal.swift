//
//  Meal.swift
//  FoodTracker
//
//  @author Andrei Istomin (andrej.istomin.ikeen@gmail.com)
//  @copyright © 2016 rising. All rights reserved.
//

import UIKit

class Meal {
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int) {
        self.name = name
        self.photo = photo
        self.rating = rating
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}