//
//  UIImageView+DownloadImage.swift
//  StoreSearch
//
//  Created by Mohammed Hamdi on 11/26/19.
//  Copyright © 2019 Mohammed Hamdi. All rights reserved.
//

import UIKit

extension UIImageView {
    func loadImage(url: URL) -> URLSessionDownloadTask {
        let session = URLSession.shared
        let downloadTask = session.downloadTask(with: url) { [weak self] (url, response, error) in
            if error == nil, let url = url, let data = try? Data(contentsOf: url), let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    if let weakSelf = self {
                        weakSelf.image = image
                    }
                }
            }
        }
        downloadTask.resume()
        return downloadTask
    }
}
