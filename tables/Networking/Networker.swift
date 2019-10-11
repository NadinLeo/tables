//
//  Networker.swift
//  tables
//
//  Created by Nadzeya Leanovich on 10/10/19.
//  Copyright © 2019 Nadzeya Leanovich. All rights reserved.
//
import UIKit.UIImage

struct Networker: Networkable {
    func getImage(from url: String, callback: @escaping (_ imageData: Data) -> () ) {
        let queue = DispatchQueue.global(qos: .utility)
        queue.async {
            guard let imageUrl = URL(string: url),
                let imageData = try? Data(contentsOf: imageUrl) else { return }
            DispatchQueue.main.async {
                callback(imageData)
            }
        }
    }
}
