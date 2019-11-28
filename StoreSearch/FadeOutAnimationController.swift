//
//  FadeOutAnimationController.swift
//  StoreSearch
//
//  Created by Mohammed Hamdi on 11/28/19.
//  Copyright © 2019 Mohammed Hamdi. All rights reserved.
//

import UIKit

class FadeOutAnimationController: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.4
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        if let fromView = transitionContext.view(forKey: UITransitionContextViewKey.from) {
            let time = transitionDuration(using: transitionContext)
            
            UIView.animate(withDuration: time, animations: {
                fromView.alpha = 0
            }) { (finished) in
                transitionContext.completeTransition(finished)
            }
        }
    }
}
