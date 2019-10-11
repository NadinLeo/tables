//
//  Networkable.swift
//  tables
//
//  Created by Nadzeya Leanovich on 10/10/19.
//  Copyright © 2019 Nadzeya Leanovich. All rights reserved.
//
import UIKit.UIImage

protocol Networkable {
     func getImage(from url: String, callback: @escaping (_ imageData: Data) -> ())
}
