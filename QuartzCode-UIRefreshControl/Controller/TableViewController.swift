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
    
    var scrollView: UIScrollView!
    
    // Reference to the original UIRefreshControl of this TableView.
    @IBOutlet weak var originalRefreshControl: UIRefreshControl!
    
    // Lazy reference to the custom UIRefreshControl made in QuartzCode.
    lazy var customUIRefreshControl: CustomUIRefreshControl = {
        
        // The custom refresh control container size based on the original
        // UIRefreshControl of this TableViewController.
        let refreshControlContainerWidth: CGFloat = self.originalRefreshControl.bounds.size.width
        let refreshControlContainerHeight: CGFloat = self.originalRefreshControl.bounds.size.height
        
        // The size of the icon that goes inside the container (that blue cloud).
        let customRefreshControlIconWidth: CGFloat = 40.0
        let customRefreshControlIconHeight: CGFloat = 40.0
        
        // Position of the blue cloud inside its container.
        let customRefreshControlIconXPosition: CGFloat = (refreshControlContainerWidth / 2.0) - (customRefreshControlIconWidth / 2.0)
        let customRefreshControlIconYPosition: CGFloat = refreshControlContainerHeight / 2.0 - 1 // -1, otherwise it cuts the cloud's bottom a little bit :(
        
        // Return it.
        return CustomUIRefreshControl(frame: CGRect(x: customRefreshControlIconXPosition,
                                                    y: customRefreshControlIconYPosition,
                                                    width: customRefreshControlIconWidth,
                                                    height: customRefreshControlIconHeight))
    }()
    
    // Helper to control the animation logic.
    var isAnimating: Bool = false
    
    // MARK: - Lifecycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupCustomRefreshControl()
    }
    
    // MARK: - Actions
    
    /// Called everytime the original refresh control's value changes.
    ///
    /// - parameter sender: The original UIRefreshControl of this TableView.
    @IBAction func refresh(_ sender: UIRefreshControl) {
        
        // In this "demo", the refresh will last 6.0 seconds.
        let delayInSeconds: Int64 = 6
        
        let popTime = DispatchTime.now() + Double(delayInSeconds * Int64(NSEC_PER_SEC)) / Double(NSEC_PER_SEC)
        
        DispatchQueue.main.asyncAfter(deadline: popTime) {
            
            // Do something with the retrieve data...
            // TODO
            
            // ... Then end the refresh operation.
            self.originalRefreshControl.endRefreshing()
            
            // Re-enable pull down to refresh.
            self.scrollView.isScrollEnabled = true
            
            // Stop animations.
            self.stopAnimations()
        }
    }
    
    // MARK: - Scroll View Delegate
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        // Update our scroll view reference.
        self.scrollView = scrollView
        
        // If a refresh is already in place, do not mess up with alpha values
        if (!originalRefreshControl.isRefreshing) {
            
            // Distance the table has been pulled >= 0.
            let pullDistance: CGFloat = max(0.0, -originalRefreshControl.frame.origin.y)
            
            // Calculate the pull ratio, between 0.0-1.0.
            let pullRatio: CGFloat = min(max(pullDistance, 0.0), 100.0) / 100.0
            
            // Update the cloud icon alpha for a nice effect.
            customUIRefreshControl.alpha = pullRatio
            
        } else if (!isAnimating) {
            // Double check if an animation isn't already in place
            animate()
        }
    }
    
    // MARK: - Helpers
    
    fileprivate func setupCustomRefreshControl() {
        
        // Hide the original UIRefreshControl...
        originalRefreshControl.tintColor = UIColor.clear
        
        // ... and ddd the custom refresh control instead:
        originalRefreshControl.addSubview(customUIRefreshControl)
    }
    
    fileprivate func animate() {
        isAnimating = true
        
        // Disable scrolling when refreshing for a better experience.
        scrollView.isScrollEnabled = false
        
        // Just to make sure that the icon is fully visible on the screen.
        customUIRefreshControl.alpha = 1.0
        
        // Three examples. Uncomment / comment to check all of them:
        animateCloudUpAndDown()
        //animateCloudStrokeWithGradientFill()
        //animateCloudStrokeWithSolidFill()
    }
    
    fileprivate func stopAnimations() {
        customUIRefreshControl.removeAllAnimations()
        isAnimating = false
    }
    
    // MARK: - Animation Examples
    
    /// Animates the cloud up and down.
    fileprivate func animateCloudUpAndDown() {
        customUIRefreshControl.addRefreshUpDownAnimation()
    }
    
    /// "Draws" the cloud by make its stroke line gradually visible, then shows
    /// a solid blueish background and then fades everything out.
    fileprivate func animateCloudStrokeWithGradientFill() {
        customUIRefreshControl.addRefreshGradientAnimation()
    }
    
    /// "Draws" the cloud by make its stroke line gradually visible, then shows
    /// a gradient blueish background and then fades everything out.
    fileprivate func animateCloudStrokeWithSolidFill() {
        customUIRefreshControl.addRefreshSolidAnimation()
    }
}

