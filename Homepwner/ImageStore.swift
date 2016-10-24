//
//  ImageStore.swift
//  Homepwner
//
//  Created by Pei Liu on 2016/10/24.
//  Copyright © 2016年 Pei Liu. All rights reserved.
//

import UIKit

class ImageStore: NSObject {
    let cache = NSCache()
    
    func setImage(image: UIImage, forKey key: String) {
        cache.setObject(image, forKey: key)
    }
    
    func imageForKey(key: String) -> UIImage? {
        return cache.objectForKey(key) as? UIImage
    }
    
    func deleteImageForKey(key: String) {
        cache.removeObjectForKey(key)
    }
}
