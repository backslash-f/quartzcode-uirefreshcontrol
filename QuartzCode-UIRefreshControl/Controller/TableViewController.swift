//
//  TableViewController.swift
//  QuartzCode-UIRefreshControl
//
//  Created by Fernando Fernandes on 5/10/16.
//  Copyright © 2016 backslash-f. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    // MARK: - Properties
    
    // Lazy reference to the custom UIRefreshControl made in QuartzCode.
    lazy var customUIRefreshControl: CustomUIRefreshControl = {
        
        // The custom refresh control container size based on the TableView's
        // UIRefreshControl.
        let containerWidth: CGFloat = self.refreshControl?.bounds.size.width ?? 40
        let containerHeight: CGFloat = self.refreshControl?.bounds.size.height ?? 40
        
        // The size of the icon that goes inside the container (that blue cloud).
        let iconWidth: CGFloat = 40.0, iconHeight: CGFloat = 40.0
        
        // Position of the blue cloud inside its container (center X and Y).
        let iconXPosition: CGFloat = (containerWidth / 2.0) - (iconWidth / 2.0)
        let iconYPosition: CGFloat = containerHeight / 2.0
        
        // Return it.
        return CustomUIRefreshControl(frame: CGRect(x: iconXPosition,
                                                    y: iconYPosition,
                                                    width: iconWidth,
                                                    height: iconHeight))
    }()
    
    // MARK: - Lifecycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupCustomRefreshControl()
    }
    
    // MARK: - Actions
    
    /// Called everytime refresh control's value changes.
    ///
    /// - parameter sender: The `UIRefreshControl` of this TableView.
    @IBAction func refresh(_ sender: UIRefreshControl) {
        
        animate()
        
        // In this "demo", the refresh will last 5.0 seconds.
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            
            // Do something with the retrieved data...
            // TODO
            
            // ... then end the refresh operation.
            self.refreshControl?.endRefreshing()
            
            // Stop animations.
            self.stopAnimations()
        }
    }
}

// MARK: - Scroll View Delegate

extension TableViewController {

    /// The only reason I'm ovewriting this function is to add a nice fade in /
    /// fade out effect on the icon of the custom refresh control.
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        guard refreshControl != nil else {
            return
        }
        
        // If a refresh operation is already in place, don't change the alpha
        // values of the custom refresh control.
        guard !refreshControl!.isRefreshing else {
            return
        }
        
        // Distance the table has been pulled >= 0.
        let pullDistance: CGFloat = max(0.0, refreshControl!.frame.origin.y.negated())
        
        // Calculate the pull ratio, between 0.0-1.0.
        let pullRatio: CGFloat = min(max(pullDistance, 0.0), 100.0) / 100.0
        
        // Update the cloud icon alpha for a nice effect.
        customUIRefreshControl.alpha = pullRatio
    }
}


// MARK: - Private

fileprivate extension TableViewController {
    
    func setupCustomRefreshControl() {
        
        // Hide the "native" UIRefreshControl elements...
        refreshControl?.tintColor = .clear
        
        // ... and add our custom refresh control:
        refreshControl?.addSubview(customUIRefreshControl)
    }
    
    func stopAnimations() {
        customUIRefreshControl.removeAllAnimations()
    }
    
    /// Three examples. Uncomment / comment to check all of them.
    func animate() {
        
        // Example 01.
        animateCloudUpAndDown()
        
        // Example 02.
        //animateCloudStrokeWithGradientFill()
        
        // Example 03.
        //animateCloudStrokeWithSolidFill()
    }
    
    // MARK: - Animation Examples
    
    /// Animates the cloud up and down.
    func animateCloudUpAndDown() {
        customUIRefreshControl.addRefreshUpDownAnimation()
    }
    
    /// "Draws" the cloud by make its stroke line gradually visible, then shows
    /// a solid blueish background and then fades everything out.
    func animateCloudStrokeWithGradientFill() {
        customUIRefreshControl.addRefreshGradientAnimation()
    }
    
    /// "Draws" the cloud by make its stroke line gradually visible, then shows
    /// a gradient blueish background and then fades everything out.
    func animateCloudStrokeWithSolidFill() {
        customUIRefreshControl.addRefreshSolidAnimation()
    }
}
