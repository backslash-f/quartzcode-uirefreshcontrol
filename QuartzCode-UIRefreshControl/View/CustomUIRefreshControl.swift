//
//  CustomUIRefreshControl.swift
//
//  Code generated using QuartzCode 1.55.0 on 5/10/17.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class CustomUIRefreshControl: UIView, CAAnimationDelegate {
    
    var layers : Dictionary<String, AnyObject> = [:]
    var completionBlocks : Dictionary<CAAnimation, (Bool) -> Void> = [:]
    var updateLayerValueForCompletedAnimation : Bool = false
    
    //MARK: - Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupProperties()
        setupLayers()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setupProperties()
        setupLayers()
    }
    
    override var frame: CGRect{
        didSet{
            setupLayerFrames()
        }
    }
    
    override var bounds: CGRect{
        didSet{
            setupLayerFrames()
        }
    }
    
    func setupProperties(){
        
    }
    
    func setupLayers(){
        let cloudGradient = CALayer()
        self.layer.addSublayer(cloudGradient)
        layers["cloudGradient"] = cloudGradient
        let cloudGradientBackground = CAShapeLayer()
        let cloudGradientBackgroundGradient = CAGradientLayer()
        cloudGradientBackground.addSublayer(cloudGradientBackgroundGradient)
        cloudGradient.addSublayer(cloudGradientBackground)
        layers["cloudGradientBackground"] = cloudGradientBackground
        layers["cloudGradientBackgroundGradient"] = cloudGradientBackgroundGradient
        let cloudGradientStroke = CAShapeLayer()
        cloudGradient.addSublayer(cloudGradientStroke)
        layers["cloudGradientStroke"] = cloudGradientStroke
        
        let cloudUpDown = CALayer()
        self.layer.addSublayer(cloudUpDown)
        layers["cloudUpDown"] = cloudUpDown
        let cloudUpDownBackground = CAShapeLayer()
        cloudUpDown.addSublayer(cloudUpDownBackground)
        layers["cloudUpDownBackground"] = cloudUpDownBackground
        let cloudUpDownStroke = CAShapeLayer()
        cloudUpDown.addSublayer(cloudUpDownStroke)
        layers["cloudUpDownStroke"] = cloudUpDownStroke
        
        let cloudSolid = CALayer()
        self.layer.addSublayer(cloudSolid)
        layers["cloudSolid"] = cloudSolid
        let cloudSolidBackground = CAShapeLayer()
        cloudSolid.addSublayer(cloudSolidBackground)
        layers["cloudSolidBackground"] = cloudSolidBackground
        let cloudSolidStroke = CAShapeLayer()
        cloudSolid.addSublayer(cloudSolidStroke)
        layers["cloudSolidStroke"] = cloudSolidStroke
        
        let cloudStatic = CALayer()
        self.layer.addSublayer(cloudStatic)
        layers["cloudStatic"] = cloudStatic
        let cloudStaticBackground = CAShapeLayer()
        cloudStatic.addSublayer(cloudStaticBackground)
        layers["cloudStaticBackground"] = cloudStaticBackground
        let cloudStaticStroke = CAShapeLayer()
        cloudStatic.addSublayer(cloudStaticStroke)
        layers["cloudStaticStroke"] = cloudStaticStroke
        
        resetLayerProperties(forLayerIdentifiers: nil)
        setupLayerFrames()
    }
    
    func resetLayerProperties(forLayerIdentifiers layerIds: [String]!){
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        
        if layerIds == nil || layerIds.contains("cloudGradientBackground"){
            let cloudGradientBackground = layers["cloudGradientBackground"] as! CAShapeLayer
            cloudGradientBackground.opacity       = 0
            cloudGradientBackground.fillColor     = nil
            cloudGradientBackground.strokeColor   = UIColor(red:0.0627, green: 0.584, blue:0.827, alpha:1).cgColor
            cloudGradientBackground.lineWidth     = 0
            
            let cloudGradientBackgroundGradient = layers["cloudGradientBackgroundGradient"] as! CAGradientLayer
            let cloudGradientBackgroundMask       = CAShapeLayer()
            cloudGradientBackgroundMask.path      = cloudGradientBackground.path
            cloudGradientBackgroundGradient.mask  = cloudGradientBackgroundMask
            cloudGradientBackgroundGradient.frame = cloudGradientBackground.bounds
            let cloudGradientBackgroundGradientColors : Array <AnyObject> = [UIColor(red:0.0627, green: 0.584, blue:0.827, alpha:1).cgColor, UIColor.white.cgColor]
            cloudGradientBackgroundGradient.colors = cloudGradientBackgroundGradientColors
            cloudGradientBackgroundGradient.startPoint = CGPoint(x: 0.5, y: 1)
            cloudGradientBackgroundGradient.endPoint = CGPoint(x: 0.5, y: 0)
        }
        if layerIds == nil || layerIds.contains("cloudGradientStroke"){
            let cloudGradientStroke = layers["cloudGradientStroke"] as! CAShapeLayer
            cloudGradientStroke.lineCap     = kCALineCapRound
            cloudGradientStroke.fillColor   = nil
            cloudGradientStroke.strokeColor = UIColor(red:0.0549, green: 0.522, blue:0.741, alpha:1).cgColor
        }
        if layerIds == nil || layerIds.contains("cloudUpDownBackground"){
            let cloudUpDownBackground = layers["cloudUpDownBackground"] as! CAShapeLayer
            cloudUpDownBackground.opacity     = 0
            cloudUpDownBackground.fillColor   = UIColor(red:0.0627, green: 0.584, blue:0.827, alpha:1).cgColor
            cloudUpDownBackground.strokeColor = UIColor(red:0.0627, green: 0.584, blue:0.827, alpha:0).cgColor
            cloudUpDownBackground.lineWidth   = 0
        }
        if layerIds == nil || layerIds.contains("cloudUpDownStroke"){
            let cloudUpDownStroke = layers["cloudUpDownStroke"] as! CAShapeLayer
            cloudUpDownStroke.lineCap     = kCALineCapRound
            cloudUpDownStroke.fillColor   = nil
            cloudUpDownStroke.strokeColor = UIColor(red:0.0549, green: 0.522, blue:0.741, alpha:1).cgColor
        }
        if layerIds == nil || layerIds.contains("cloudSolidBackground"){
            let cloudSolidBackground = layers["cloudSolidBackground"] as! CAShapeLayer
            cloudSolidBackground.opacity     = 0
            cloudSolidBackground.fillColor   = UIColor(red:0.0627, green: 0.584, blue:0.827, alpha:1).cgColor
            cloudSolidBackground.strokeColor = UIColor(red:0.0627, green: 0.584, blue:0.827, alpha:0).cgColor
            cloudSolidBackground.lineWidth   = 0
        }
        if layerIds == nil || layerIds.contains("cloudSolidStroke"){
            let cloudSolidStroke = layers["cloudSolidStroke"] as! CAShapeLayer
            cloudSolidStroke.lineCap     = kCALineCapRound
            cloudSolidStroke.fillColor   = nil
            cloudSolidStroke.strokeColor = UIColor(red:0.0549, green: 0.522, blue:0.741, alpha:1).cgColor
        }
        if layerIds == nil || layerIds.contains("cloudStaticBackground"){
            let cloudStaticBackground = layers["cloudStaticBackground"] as! CAShapeLayer
            cloudStaticBackground.fillColor   = UIColor(red:0.0627, green: 0.584, blue:0.827, alpha:1).cgColor
            cloudStaticBackground.strokeColor = UIColor(red:0.0627, green: 0.584, blue:0.827, alpha:1).cgColor
            cloudStaticBackground.lineWidth   = 0
        }
        if layerIds == nil || layerIds.contains("cloudStaticStroke"){
            let cloudStaticStroke = layers["cloudStaticStroke"] as! CAShapeLayer
            cloudStaticStroke.lineCap     = kCALineCapRound
            cloudStaticStroke.fillColor   = nil
            cloudStaticStroke.strokeColor = UIColor(red:0.0549, green: 0.522, blue:0.741, alpha:1).cgColor
        }
        
        CATransaction.commit()
    }
    
    func setupLayerFrames(){
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        
        if let cloudGradient : CALayer = layers["cloudGradient"] as? CALayer{
            cloudGradient.frame = CGRect(x: 0.04167 * cloudGradient.superlayer!.bounds.width, y: 0.24986 * cloudGradient.superlayer!.bounds.height, width: 0.91667 * cloudGradient.superlayer!.bounds.width, height: 0.50023 * cloudGradient.superlayer!.bounds.height)
        }
        
        if let cloudGradientBackground : CAShapeLayer = layers["cloudGradientBackground"] as? CAShapeLayer{
            cloudGradientBackground.frame = CGRect(x: 0, y: 0.00045 * cloudGradientBackground.superlayer!.bounds.height, width:  cloudGradientBackground.superlayer!.bounds.width, height: 0.99955 * cloudGradientBackground.superlayer!.bounds.height)
            cloudGradientBackground.path  = cloudGradientBackgroundPath(bounds: (layers["cloudGradientBackground"] as! CAShapeLayer).bounds).cgPath
            let cloudGradientBackgroundGradient = layers["cloudGradientBackgroundGradient"] as! CAGradientLayer
            cloudGradientBackgroundGradient.frame = cloudGradientBackground.bounds
            (cloudGradientBackgroundGradient.mask as! CAShapeLayer).path = cloudGradientBackground.path
        }
        
        if let cloudGradientStroke : CAShapeLayer = layers["cloudGradientStroke"] as? CAShapeLayer{
            cloudGradientStroke.frame = CGRect(x: 0, y: 0, width:  cloudGradientStroke.superlayer!.bounds.width, height: 0.99955 * cloudGradientStroke.superlayer!.bounds.height)
            cloudGradientStroke.path  = cloudGradientStrokePath(bounds: (layers["cloudGradientStroke"] as! CAShapeLayer).bounds).cgPath
        }
        
        if let cloudUpDown : CALayer = layers["cloudUpDown"] as? CALayer{
            cloudUpDown.frame = CGRect(x: 0.04558 * cloudUpDown.superlayer!.bounds.width, y: 0.25035 * cloudUpDown.superlayer!.bounds.height, width: 0.90884 * cloudUpDown.superlayer!.bounds.width, height: 0.49929 * cloudUpDown.superlayer!.bounds.height)
        }
        
        if let cloudUpDownBackground : CAShapeLayer = layers["cloudUpDownBackground"] as? CAShapeLayer{
            cloudUpDownBackground.frame = CGRect(x: 0, y: 0, width:  cloudUpDownBackground.superlayer!.bounds.width, height: 1 * cloudUpDownBackground.superlayer!.bounds.height)
            cloudUpDownBackground.path  = cloudUpDownBackgroundPath(bounds: (layers["cloudUpDownBackground"] as! CAShapeLayer).bounds).cgPath
        }
        
        if let cloudUpDownStroke : CAShapeLayer = layers["cloudUpDownStroke"] as? CAShapeLayer{
            cloudUpDownStroke.frame = CGRect(x: 0, y: 0, width:  cloudUpDownStroke.superlayer!.bounds.width, height: 1 * cloudUpDownStroke.superlayer!.bounds.height)
            cloudUpDownStroke.path  = cloudUpDownStrokePath(bounds: (layers["cloudUpDownStroke"] as! CAShapeLayer).bounds).cgPath
        }
        
        if let cloudSolid : CALayer = layers["cloudSolid"] as? CALayer{
            cloudSolid.frame = CGRect(x: 0.04558 * cloudSolid.superlayer!.bounds.width, y: 0.24202 * cloudSolid.superlayer!.bounds.height, width: 0.90884 * cloudSolid.superlayer!.bounds.width, height: 0.50763 * cloudSolid.superlayer!.bounds.height)
        }
        
        if let cloudSolidBackground : CAShapeLayer = layers["cloudSolidBackground"] as? CAShapeLayer{
            cloudSolidBackground.frame = CGRect(x: 0, y: 0, width:  cloudSolidBackground.superlayer!.bounds.width, height: 0.98358 * cloudSolidBackground.superlayer!.bounds.height)
            cloudSolidBackground.path  = cloudSolidBackgroundPath(bounds: (layers["cloudSolidBackground"] as! CAShapeLayer).bounds).cgPath
        }
        
        if let cloudSolidStroke : CAShapeLayer = layers["cloudSolidStroke"] as? CAShapeLayer{
            cloudSolidStroke.frame = CGRect(x: 0, y: 0.01642 * cloudSolidStroke.superlayer!.bounds.height, width:  cloudSolidStroke.superlayer!.bounds.width, height: 0.98358 * cloudSolidStroke.superlayer!.bounds.height)
            cloudSolidStroke.path  = cloudSolidStrokePath(bounds: (layers["cloudSolidStroke"] as! CAShapeLayer).bounds).cgPath
        }
        
        if let cloudStatic : CALayer = layers["cloudStatic"] as? CALayer{
            cloudStatic.frame = CGRect(x: 0.04558 * cloudStatic.superlayer!.bounds.width, y: 0.25035 * cloudStatic.superlayer!.bounds.height, width: 0.90884 * cloudStatic.superlayer!.bounds.width, height: 0.49929 * cloudStatic.superlayer!.bounds.height)
        }
        
        if let cloudStaticBackground : CAShapeLayer = layers["cloudStaticBackground"] as? CAShapeLayer{
            cloudStaticBackground.frame = CGRect(x: 0, y: 0, width:  cloudStaticBackground.superlayer!.bounds.width, height: 1 * cloudStaticBackground.superlayer!.bounds.height)
            cloudStaticBackground.path  = cloudStaticBackgroundPath(bounds: (layers["cloudStaticBackground"] as! CAShapeLayer).bounds).cgPath
        }
        
        if let cloudStaticStroke : CAShapeLayer = layers["cloudStaticStroke"] as? CAShapeLayer{
            cloudStaticStroke.frame = CGRect(x: 0, y: 0, width:  cloudStaticStroke.superlayer!.bounds.width, height: 1 * cloudStaticStroke.superlayer!.bounds.height)
            cloudStaticStroke.path  = cloudStaticStrokePath(bounds: (layers["cloudStaticStroke"] as! CAShapeLayer).bounds).cgPath
        }
        
        CATransaction.commit()
    }
    
    //MARK: - Animation Setup
    
    func addRefreshGradientAnimation(){
        let fillMode : String = kCAFillModeForwards
        
        ////An infinity animation
        
        ////CloudGradient animation
        let cloudGradientOpacityAnim         = CAKeyframeAnimation(keyPath:"opacity")
        cloudGradientOpacityAnim.values      = [1, 1, 1, 0]
        cloudGradientOpacityAnim.keyTimes    = [0, 0.333, 0.667, 1]
        cloudGradientOpacityAnim.duration    = 3
        cloudGradientOpacityAnim.repeatCount = Float.infinity
        
        let cloudGradientRefreshGradientAnim : CAAnimationGroup = QCMethod.group(animations: [cloudGradientOpacityAnim], fillMode:fillMode)
        layers["cloudGradient"]?.add(cloudGradientRefreshGradientAnim, forKey:"cloudGradientRefreshGradientAnim")
        
        ////CloudGradientBackground animation
        let cloudGradientBackgroundOpacityAnim = CAKeyframeAnimation(keyPath:"opacity")
        cloudGradientBackgroundOpacityAnim.values = [0, 0, 1, 1]
        cloudGradientBackgroundOpacityAnim.keyTimes = [0, 0.333, 0.667, 1]
        cloudGradientBackgroundOpacityAnim.duration = 3
        cloudGradientBackgroundOpacityAnim.repeatCount = Float.infinity
        
        let cloudGradientBackgroundHiddenAnim = CAKeyframeAnimation(keyPath:"hidden")
        cloudGradientBackgroundHiddenAnim.values = [true, false, false]
        cloudGradientBackgroundHiddenAnim.keyTimes = [0, 0.333, 1]
        cloudGradientBackgroundHiddenAnim.duration = 3
        cloudGradientBackgroundHiddenAnim.repeatCount = Float.infinity
        
        let cloudGradientBackgroundRefreshGradientAnim : CAAnimationGroup = QCMethod.group(animations: [cloudGradientBackgroundOpacityAnim, cloudGradientBackgroundHiddenAnim], fillMode:fillMode)
        layers["cloudGradientBackground"]?.add(cloudGradientBackgroundRefreshGradientAnim, forKey:"cloudGradientBackgroundRefreshGradientAnim")
        
        ////CloudGradientStroke animation
        let cloudGradientStrokeStrokeEndAnim = CAKeyframeAnimation(keyPath:"strokeEnd")
        cloudGradientStrokeStrokeEndAnim.values = [-0.01, 1, 1]
        cloudGradientStrokeStrokeEndAnim.keyTimes = [0, 0.333, 1]
        cloudGradientStrokeStrokeEndAnim.duration = 3
        cloudGradientStrokeStrokeEndAnim.repeatCount = Float.infinity
        
        let cloudGradientStrokeRefreshGradientAnim : CAAnimationGroup = QCMethod.group(animations: [cloudGradientStrokeStrokeEndAnim], fillMode:fillMode)
        layers["cloudGradientStroke"]?.add(cloudGradientStrokeRefreshGradientAnim, forKey:"cloudGradientStrokeRefreshGradientAnim")
        
        ////CloudUpDown animation
        let cloudUpDownHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
        cloudUpDownHiddenAnim.values   = [true, true]
        cloudUpDownHiddenAnim.keyTimes = [0, 1]
        cloudUpDownHiddenAnim.duration = 3
        
        let cloudUpDownRefreshGradientAnim : CAAnimationGroup = QCMethod.group(animations: [cloudUpDownHiddenAnim], fillMode:fillMode)
        layers["cloudUpDown"]?.add(cloudUpDownRefreshGradientAnim, forKey:"cloudUpDownRefreshGradientAnim")
        
        ////CloudSolid animation
        let cloudSolidHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
        cloudSolidHiddenAnim.values   = [true, true]
        cloudSolidHiddenAnim.keyTimes = [0, 1]
        cloudSolidHiddenAnim.duration = 3
        
        let cloudSolidRefreshGradientAnim : CAAnimationGroup = QCMethod.group(animations: [cloudSolidHiddenAnim], fillMode:fillMode)
        layers["cloudSolid"]?.add(cloudSolidRefreshGradientAnim, forKey:"cloudSolidRefreshGradientAnim")
        
        ////CloudStatic animation
        let cloudStaticHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
        cloudStaticHiddenAnim.values   = [true, true]
        cloudStaticHiddenAnim.keyTimes = [0, 1]
        cloudStaticHiddenAnim.duration = 3
        
        let cloudStaticRefreshGradientAnim : CAAnimationGroup = QCMethod.group(animations: [cloudStaticHiddenAnim], fillMode:fillMode)
        layers["cloudStatic"]?.add(cloudStaticRefreshGradientAnim, forKey:"cloudStaticRefreshGradientAnim")
    }
    
    func addRefreshSolidAnimation(){
        let fillMode : String = kCAFillModeForwards
        
        ////An infinity animation
        
        ////CloudGradient animation
        let cloudGradientHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
        cloudGradientHiddenAnim.values   = [true, true]
        cloudGradientHiddenAnim.keyTimes = [0, 1]
        cloudGradientHiddenAnim.duration = 3
        
        let cloudGradientRefreshSolidAnim : CAAnimationGroup = QCMethod.group(animations: [cloudGradientHiddenAnim], fillMode:fillMode)
        layers["cloudGradient"]?.add(cloudGradientRefreshSolidAnim, forKey:"cloudGradientRefreshSolidAnim")
        
        ////CloudUpDown animation
        let cloudUpDownHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
        cloudUpDownHiddenAnim.values   = [true, true]
        cloudUpDownHiddenAnim.keyTimes = [0, 1]
        cloudUpDownHiddenAnim.duration = 3
        
        let cloudUpDownRefreshSolidAnim : CAAnimationGroup = QCMethod.group(animations: [cloudUpDownHiddenAnim], fillMode:fillMode)
        layers["cloudUpDown"]?.add(cloudUpDownRefreshSolidAnim, forKey:"cloudUpDownRefreshSolidAnim")
        
        ////CloudSolid animation
        let cloudSolidOpacityAnim         = CAKeyframeAnimation(keyPath:"opacity")
        cloudSolidOpacityAnim.values      = [1, 1, 1, 0]
        cloudSolidOpacityAnim.keyTimes    = [0, 0.333, 0.667, 1]
        cloudSolidOpacityAnim.duration    = 3
        cloudSolidOpacityAnim.repeatCount = Float.infinity
        
        let cloudSolidRefreshSolidAnim : CAAnimationGroup = QCMethod.group(animations: [cloudSolidOpacityAnim], fillMode:fillMode)
        layers["cloudSolid"]?.add(cloudSolidRefreshSolidAnim, forKey:"cloudSolidRefreshSolidAnim")
        
        ////CloudSolidBackground animation
        let cloudSolidBackgroundOpacityAnim    = CAKeyframeAnimation(keyPath:"opacity")
        cloudSolidBackgroundOpacityAnim.values = [0, 0, 1, 1]
        cloudSolidBackgroundOpacityAnim.keyTimes = [0, 0.333, 0.667, 1]
        cloudSolidBackgroundOpacityAnim.duration = 3
        cloudSolidBackgroundOpacityAnim.repeatCount = Float.infinity
        
        let cloudSolidBackgroundHiddenAnim    = CAKeyframeAnimation(keyPath:"hidden")
        cloudSolidBackgroundHiddenAnim.values = [true, false, false]
        cloudSolidBackgroundHiddenAnim.keyTimes = [0, 0.333, 1]
        cloudSolidBackgroundHiddenAnim.duration = 3
        
        let cloudSolidBackgroundRefreshSolidAnim : CAAnimationGroup = QCMethod.group(animations: [cloudSolidBackgroundOpacityAnim, cloudSolidBackgroundHiddenAnim], fillMode:fillMode)
        layers["cloudSolidBackground"]?.add(cloudSolidBackgroundRefreshSolidAnim, forKey:"cloudSolidBackgroundRefreshSolidAnim")
        
        ////CloudSolidStroke animation
        let cloudSolidStrokeStrokeEndAnim      = CAKeyframeAnimation(keyPath:"strokeEnd")
        cloudSolidStrokeStrokeEndAnim.values   = [-0.01, 1, 1, 1]
        cloudSolidStrokeStrokeEndAnim.keyTimes = [0, 0.333, 0.667, 1]
        cloudSolidStrokeStrokeEndAnim.duration = 3
        cloudSolidStrokeStrokeEndAnim.repeatCount = Float.infinity
        
        let cloudSolidStrokeRefreshSolidAnim : CAAnimationGroup = QCMethod.group(animations: [cloudSolidStrokeStrokeEndAnim], fillMode:fillMode)
        layers["cloudSolidStroke"]?.add(cloudSolidStrokeRefreshSolidAnim, forKey:"cloudSolidStrokeRefreshSolidAnim")
        
        ////CloudStatic animation
        let cloudStaticHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
        cloudStaticHiddenAnim.values   = [true, true]
        cloudStaticHiddenAnim.keyTimes = [0, 1]
        cloudStaticHiddenAnim.duration = 3
        
        let cloudStaticRefreshSolidAnim : CAAnimationGroup = QCMethod.group(animations: [cloudStaticHiddenAnim], fillMode:fillMode)
        layers["cloudStatic"]?.add(cloudStaticRefreshSolidAnim, forKey:"cloudStaticRefreshSolidAnim")
    }
    
    func addRefreshUpDownAnimation(){
        let fillMode : String = kCAFillModeForwards
        
        ////An infinity animation
        
        ////CloudGradient animation
        let cloudGradientHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
        cloudGradientHiddenAnim.values   = [true, true]
        cloudGradientHiddenAnim.keyTimes = [0, 1]
        cloudGradientHiddenAnim.duration = 3
        
        let cloudGradientRefreshUpDownAnim : CAAnimationGroup = QCMethod.group(animations: [cloudGradientHiddenAnim], fillMode:fillMode)
        layers["cloudGradient"]?.add(cloudGradientRefreshUpDownAnim, forKey:"cloudGradientRefreshUpDownAnim")
        
        let cloudUpDown = layers["cloudUpDown"] as! CALayer
        
        ////CloudUpDown animation
        let cloudUpDownPositionAnim          = CAKeyframeAnimation(keyPath:"position")
        cloudUpDownPositionAnim.values       = [NSValue(cgPoint: CGPoint(x: 0.5 * cloudUpDown.superlayer!.bounds.width, y: 0.5 * cloudUpDown.superlayer!.bounds.height)), NSValue(cgPoint: CGPoint(x: 0.5 * cloudUpDown.superlayer!.bounds.width, y: 0.33333 * cloudUpDown.superlayer!.bounds.height)), NSValue(cgPoint: CGPoint(x: 0.5 * cloudUpDown.superlayer!.bounds.width, y: 0.5 * cloudUpDown.superlayer!.bounds.height)), NSValue(cgPoint: CGPoint(x: 0.5 * cloudUpDown.superlayer!.bounds.width, y: 0.33333 * cloudUpDown.superlayer!.bounds.height))]
        cloudUpDownPositionAnim.keyTimes     = [0, 0.333, 0.667, 1]
        cloudUpDownPositionAnim.duration     = 3
        cloudUpDownPositionAnim.repeatCount  = Float.infinity
        cloudUpDownPositionAnim.autoreverses = true
        
        let cloudUpDownRefreshUpDownAnim : CAAnimationGroup = QCMethod.group(animations: [cloudUpDownPositionAnim], fillMode:fillMode)
        cloudUpDown.add(cloudUpDownRefreshUpDownAnim, forKey:"cloudUpDownRefreshUpDownAnim")
        
        ////CloudUpDownBackground animation
        let cloudUpDownBackgroundOpacityAnim = CAKeyframeAnimation(keyPath:"opacity")
        cloudUpDownBackgroundOpacityAnim.values = [1, 1]
        cloudUpDownBackgroundOpacityAnim.keyTimes = [0, 1]
        cloudUpDownBackgroundOpacityAnim.duration = 3
        
        let cloudUpDownBackgroundRefreshUpDownAnim : CAAnimationGroup = QCMethod.group(animations: [cloudUpDownBackgroundOpacityAnim], fillMode:fillMode)
        layers["cloudUpDownBackground"]?.add(cloudUpDownBackgroundRefreshUpDownAnim, forKey:"cloudUpDownBackgroundRefreshUpDownAnim")
        
        ////CloudSolid animation
        let cloudSolidHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
        cloudSolidHiddenAnim.values   = [true, true]
        cloudSolidHiddenAnim.keyTimes = [0, 1]
        cloudSolidHiddenAnim.duration = 3
        
        let cloudSolidRefreshUpDownAnim : CAAnimationGroup = QCMethod.group(animations: [cloudSolidHiddenAnim], fillMode:fillMode)
        layers["cloudSolid"]?.add(cloudSolidRefreshUpDownAnim, forKey:"cloudSolidRefreshUpDownAnim")
        
        ////CloudStatic animation
        let cloudStaticHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
        cloudStaticHiddenAnim.values   = [true, true]
        cloudStaticHiddenAnim.keyTimes = [0, 1]
        cloudStaticHiddenAnim.duration = 3
        
        let cloudStaticRefreshUpDownAnim : CAAnimationGroup = QCMethod.group(animations: [cloudStaticHiddenAnim], fillMode:fillMode)
        layers["cloudStatic"]?.add(cloudStaticRefreshUpDownAnim, forKey:"cloudStaticRefreshUpDownAnim")
    }
    
    //MARK: - Animation Cleanup
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool){
        if let completionBlock = completionBlocks[anim]{
            completionBlocks.removeValue(forKey: anim)
            if (flag && updateLayerValueForCompletedAnimation) || anim.value(forKey: "needEndAnim") as! Bool{
                updateLayerValues(forAnimationId: anim.value(forKey: "animId") as! String)
                removeAnimations(forAnimationId: anim.value(forKey: "animId") as! String)
            }
            completionBlock(flag)
        }
    }
    
    func updateLayerValues(forAnimationId identifier: String){
        if identifier == "refreshGradient"{
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudGradient"] as! CALayer).animation(forKey: "cloudGradientRefreshGradientAnim"), theLayer:(layers["cloudGradient"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudGradientBackground"] as! CALayer).animation(forKey: "cloudGradientBackgroundRefreshGradientAnim"), theLayer:(layers["cloudGradientBackground"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudGradientStroke"] as! CALayer).animation(forKey: "cloudGradientStrokeRefreshGradientAnim"), theLayer:(layers["cloudGradientStroke"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudUpDown"] as! CALayer).animation(forKey: "cloudUpDownRefreshGradientAnim"), theLayer:(layers["cloudUpDown"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudSolid"] as! CALayer).animation(forKey: "cloudSolidRefreshGradientAnim"), theLayer:(layers["cloudSolid"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudStatic"] as! CALayer).animation(forKey: "cloudStaticRefreshGradientAnim"), theLayer:(layers["cloudStatic"] as! CALayer))
        }
        else if identifier == "refreshSolid"{
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudGradient"] as! CALayer).animation(forKey: "cloudGradientRefreshSolidAnim"), theLayer:(layers["cloudGradient"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudUpDown"] as! CALayer).animation(forKey: "cloudUpDownRefreshSolidAnim"), theLayer:(layers["cloudUpDown"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudSolid"] as! CALayer).animation(forKey: "cloudSolidRefreshSolidAnim"), theLayer:(layers["cloudSolid"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudSolidBackground"] as! CALayer).animation(forKey: "cloudSolidBackgroundRefreshSolidAnim"), theLayer:(layers["cloudSolidBackground"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudSolidStroke"] as! CALayer).animation(forKey: "cloudSolidStrokeRefreshSolidAnim"), theLayer:(layers["cloudSolidStroke"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudStatic"] as! CALayer).animation(forKey: "cloudStaticRefreshSolidAnim"), theLayer:(layers["cloudStatic"] as! CALayer))
        }
        else if identifier == "refreshUpDown"{
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudGradient"] as! CALayer).animation(forKey: "cloudGradientRefreshUpDownAnim"), theLayer:(layers["cloudGradient"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudUpDown"] as! CALayer).animation(forKey: "cloudUpDownRefreshUpDownAnim"), theLayer:(layers["cloudUpDown"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudUpDownBackground"] as! CALayer).animation(forKey: "cloudUpDownBackgroundRefreshUpDownAnim"), theLayer:(layers["cloudUpDownBackground"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudSolid"] as! CALayer).animation(forKey: "cloudSolidRefreshUpDownAnim"), theLayer:(layers["cloudSolid"] as! CALayer))
            QCMethod.updateValueFromPresentationLayer(forAnimation: (layers["cloudStatic"] as! CALayer).animation(forKey: "cloudStaticRefreshUpDownAnim"), theLayer:(layers["cloudStatic"] as! CALayer))
        }
    }
    
    func removeAnimations(forAnimationId identifier: String){
        if identifier == "refreshGradient"{
            (layers["cloudGradient"] as! CALayer).removeAnimation(forKey: "cloudGradientRefreshGradientAnim")
            (layers["cloudGradientBackground"] as! CALayer).removeAnimation(forKey: "cloudGradientBackgroundRefreshGradientAnim")
            (layers["cloudGradientStroke"] as! CALayer).removeAnimation(forKey: "cloudGradientStrokeRefreshGradientAnim")
            (layers["cloudUpDown"] as! CALayer).removeAnimation(forKey: "cloudUpDownRefreshGradientAnim")
            (layers["cloudSolid"] as! CALayer).removeAnimation(forKey: "cloudSolidRefreshGradientAnim")
            (layers["cloudStatic"] as! CALayer).removeAnimation(forKey: "cloudStaticRefreshGradientAnim")
        }
        else if identifier == "refreshSolid"{
            (layers["cloudGradient"] as! CALayer).removeAnimation(forKey: "cloudGradientRefreshSolidAnim")
            (layers["cloudUpDown"] as! CALayer).removeAnimation(forKey: "cloudUpDownRefreshSolidAnim")
            (layers["cloudSolid"] as! CALayer).removeAnimation(forKey: "cloudSolidRefreshSolidAnim")
            (layers["cloudSolidBackground"] as! CALayer).removeAnimation(forKey: "cloudSolidBackgroundRefreshSolidAnim")
            (layers["cloudSolidStroke"] as! CALayer).removeAnimation(forKey: "cloudSolidStrokeRefreshSolidAnim")
            (layers["cloudStatic"] as! CALayer).removeAnimation(forKey: "cloudStaticRefreshSolidAnim")
        }
        else if identifier == "refreshUpDown"{
            (layers["cloudGradient"] as! CALayer).removeAnimation(forKey: "cloudGradientRefreshUpDownAnim")
            (layers["cloudUpDown"] as! CALayer).removeAnimation(forKey: "cloudUpDownRefreshUpDownAnim")
            (layers["cloudUpDownBackground"] as! CALayer).removeAnimation(forKey: "cloudUpDownBackgroundRefreshUpDownAnim")
            (layers["cloudSolid"] as! CALayer).removeAnimation(forKey: "cloudSolidRefreshUpDownAnim")
            (layers["cloudStatic"] as! CALayer).removeAnimation(forKey: "cloudStaticRefreshUpDownAnim")
        }
    }
    
    func removeAllAnimations(){
        for layer in layers.values{
            (layer as! CALayer).removeAllAnimations()
        }
    }
    
    //MARK: - Bezier Path
    
    func cloudGradientBackgroundPath(bounds: CGRect) -> UIBezierPath{
        let cloudGradientBackgroundPath = UIBezierPath()
        let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
        
        cloudGradientBackgroundPath.move(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudGradientBackgroundPath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudGradientBackgroundPath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.35188 * w, y: minY + 0.79494 * h), controlPoint1:CGPoint(x:minX + 0.2573 * w, y: minY + h), controlPoint2:CGPoint(x:minX + 0.31433 * w, y: minY + 0.9038 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.51599 * w, y: minY + 0.34937 * h), controlPoint1:CGPoint(x:minX + 0.3936 * w, y: minY + 0.67595 * h), controlPoint2:CGPoint(x:minX + 0.49652 * w, y: minY + 0.39241 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.62587 * w, y: minY + 0.21266 * h), controlPoint1:CGPoint(x:minX + 0.53686 * w, y: minY + 0.2962 * h), controlPoint2:CGPoint(x:minX + 0.57858 * w, y: minY + 0.23544 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.5146 * w, y: minY + 0.03544 * h), controlPoint1:CGPoint(x:minX + 0.60083 * w, y: minY + 0.13671 * h), controlPoint2:CGPoint(x:minX + 0.56328 * w, y: minY + 0.07342 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.41864 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.48261 * w, y: minY + 0.01013 * h), controlPoint2:CGPoint(x:minX + 0.45063 * w, y: minY))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.19611 * w, y: minY + 0.26582 * h), controlPoint1:CGPoint(x:minX + 0.32406 * w, y: minY), controlPoint2:CGPoint(x:minX + 0.23505 * w, y: minY + 0.09873 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.19054 * w, y: minY + 0.28861 * h), controlPoint2:CGPoint(x:minX + 0.18637 * w, y: minY + 0.31392 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.0153 * w, y: minY + 0.53671 * h), controlPoint1:CGPoint(x:minX + 0.11127 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.04451 * w, y: minY + 0.41013 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX, y: minY + 0.66835 * h), controlPoint1:CGPoint(x:minX + 0.00556 * w, y: minY + 0.57975 * h), controlPoint2:CGPoint(x:minX, y: minY + 0.62532 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.10987 * w, y: minY + 0.97215 * h), controlPoint1:CGPoint(x:minX, y: minY + 0.79747 * h), controlPoint2:CGPoint(x:minX + 0.04172 * w, y: minY + 0.91899 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.17803 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.13074 * w, y: minY + 0.98987 * h), controlPoint2:CGPoint(x:minX + 0.15438 * w, y: minY + 0.99747 * h))
        cloudGradientBackgroundPath.addLine(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudGradientBackgroundPath.close()
        cloudGradientBackgroundPath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudGradientBackgroundPath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudGradientBackgroundPath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.89569 * w, y: minY + 0.56962 * h), controlPoint1:CGPoint(x:minX + 0.91794 * w, y: minY + 0.57722 * h), controlPoint2:CGPoint(x:minX + 0.90682 * w, y: minY + 0.57215 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.78164 * w, y: minY + 0.31392 * h), controlPoint1:CGPoint(x:minX + 0.88317 * w, y: minY + 0.46076 * h), controlPoint2:CGPoint(x:minX + 0.84284 * w, y: minY + 0.36203 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.70376 * w, y: minY + 0.28354 * h), controlPoint1:CGPoint(x:minX + 0.75661 * w, y: minY + 0.29367 * h), controlPoint2:CGPoint(x:minX + 0.73018 * w, y: minY + 0.28354 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.68428 * w, y: minY + 0.28354 * h), controlPoint2:CGPoint(x:minX + 0.6662 * w, y: minY + 0.28861 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint2:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h), controlPoint1:CGPoint(x:minX + 0.59944 * w, y: minY + 0.32405 * h), controlPoint2:CGPoint(x:minX + 0.57163 * w, y: minY + 0.37468 * h))
        cloudGradientBackgroundPath.addLine(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h))
        cloudGradientBackgroundPath.addLine(to: CGPoint(x:minX + 0.4548 * w, y: minY + 0.6962 * h))
        cloudGradientBackgroundPath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudGradientBackgroundPath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.32823 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.363 * w, y: minY + 0.94177 * h), controlPoint2:CGPoint(x:minX + 0.34771 * w, y: minY + 0.97468 * h))
        cloudGradientBackgroundPath.addLine(to: CGPoint(x:minX + 0.89291 * w, y: minY + h))
        cloudGradientBackgroundPath.addLine(to: CGPoint(x:minX + 0.8943 * w, y: minY + h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.99026 * w, y: minY + 0.86835 * h), controlPoint1:CGPoint(x:minX + 0.93602 * w, y: minY + 0.99241 * h), controlPoint2:CGPoint(x:minX + 0.97357 * w, y: minY + 0.94177 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.78228 * h), controlPoint1:CGPoint(x:minX + 0.99722 * w, y: minY + 0.84051 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.81266 * h))
        cloudGradientBackgroundPath.addCurve(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h), controlPoint1:CGPoint(x:minX + w, y: minY + 0.69873 * h), controlPoint2:CGPoint(x:minX + 0.97218 * w, y: minY + 0.62025 * h))
        cloudGradientBackgroundPath.close()
        cloudGradientBackgroundPath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        
        return cloudGradientBackgroundPath
    }
    
    func cloudGradientStrokePath(bounds: CGRect) -> UIBezierPath{
        let cloudGradientStrokePath = UIBezierPath()
        let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
        
        cloudGradientStrokePath.move(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudGradientStrokePath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudGradientStrokePath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.35188 * w, y: minY + 0.79494 * h), controlPoint1:CGPoint(x:minX + 0.2573 * w, y: minY + h), controlPoint2:CGPoint(x:minX + 0.31433 * w, y: minY + 0.9038 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.51599 * w, y: minY + 0.34937 * h), controlPoint1:CGPoint(x:minX + 0.3936 * w, y: minY + 0.67595 * h), controlPoint2:CGPoint(x:minX + 0.49652 * w, y: minY + 0.39241 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.62587 * w, y: minY + 0.21266 * h), controlPoint1:CGPoint(x:minX + 0.53686 * w, y: minY + 0.2962 * h), controlPoint2:CGPoint(x:minX + 0.57858 * w, y: minY + 0.23544 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.5146 * w, y: minY + 0.03544 * h), controlPoint1:CGPoint(x:minX + 0.60083 * w, y: minY + 0.13671 * h), controlPoint2:CGPoint(x:minX + 0.56328 * w, y: minY + 0.07342 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.41864 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.48261 * w, y: minY + 0.01013 * h), controlPoint2:CGPoint(x:minX + 0.45063 * w, y: minY))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.19611 * w, y: minY + 0.26582 * h), controlPoint1:CGPoint(x:minX + 0.32406 * w, y: minY), controlPoint2:CGPoint(x:minX + 0.23505 * w, y: minY + 0.09873 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.19054 * w, y: minY + 0.28861 * h), controlPoint2:CGPoint(x:minX + 0.18637 * w, y: minY + 0.31392 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.0153 * w, y: minY + 0.53671 * h), controlPoint1:CGPoint(x:minX + 0.11127 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.04451 * w, y: minY + 0.41013 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX, y: minY + 0.66835 * h), controlPoint1:CGPoint(x:minX + 0.00556 * w, y: minY + 0.57975 * h), controlPoint2:CGPoint(x:minX, y: minY + 0.62532 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.10987 * w, y: minY + 0.97215 * h), controlPoint1:CGPoint(x:minX, y: minY + 0.79747 * h), controlPoint2:CGPoint(x:minX + 0.04172 * w, y: minY + 0.91899 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.17803 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.13074 * w, y: minY + 0.98987 * h), controlPoint2:CGPoint(x:minX + 0.15438 * w, y: minY + 0.99747 * h))
        cloudGradientStrokePath.addLine(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudGradientStrokePath.close()
        cloudGradientStrokePath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudGradientStrokePath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudGradientStrokePath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.89569 * w, y: minY + 0.56962 * h), controlPoint1:CGPoint(x:minX + 0.91794 * w, y: minY + 0.57722 * h), controlPoint2:CGPoint(x:minX + 0.90682 * w, y: minY + 0.57215 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.78164 * w, y: minY + 0.31392 * h), controlPoint1:CGPoint(x:minX + 0.88317 * w, y: minY + 0.46076 * h), controlPoint2:CGPoint(x:minX + 0.84284 * w, y: minY + 0.36203 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.70376 * w, y: minY + 0.28354 * h), controlPoint1:CGPoint(x:minX + 0.75661 * w, y: minY + 0.29367 * h), controlPoint2:CGPoint(x:minX + 0.73018 * w, y: minY + 0.28354 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.68428 * w, y: minY + 0.28354 * h), controlPoint2:CGPoint(x:minX + 0.6662 * w, y: minY + 0.28861 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint2:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h), controlPoint1:CGPoint(x:minX + 0.59944 * w, y: minY + 0.32405 * h), controlPoint2:CGPoint(x:minX + 0.57163 * w, y: minY + 0.37468 * h))
        cloudGradientStrokePath.addLine(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h))
        cloudGradientStrokePath.addLine(to: CGPoint(x:minX + 0.4548 * w, y: minY + 0.6962 * h))
        cloudGradientStrokePath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudGradientStrokePath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.32823 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.363 * w, y: minY + 0.94177 * h), controlPoint2:CGPoint(x:minX + 0.34771 * w, y: minY + 0.97468 * h))
        cloudGradientStrokePath.addLine(to: CGPoint(x:minX + 0.89291 * w, y: minY + h))
        cloudGradientStrokePath.addLine(to: CGPoint(x:minX + 0.8943 * w, y: minY + h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.99026 * w, y: minY + 0.86835 * h), controlPoint1:CGPoint(x:minX + 0.93602 * w, y: minY + 0.99241 * h), controlPoint2:CGPoint(x:minX + 0.97357 * w, y: minY + 0.94177 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.78228 * h), controlPoint1:CGPoint(x:minX + 0.99722 * w, y: minY + 0.84051 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.81266 * h))
        cloudGradientStrokePath.addCurve(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h), controlPoint1:CGPoint(x:minX + w, y: minY + 0.69873 * h), controlPoint2:CGPoint(x:minX + 0.97218 * w, y: minY + 0.62025 * h))
        cloudGradientStrokePath.close()
        cloudGradientStrokePath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        
        return cloudGradientStrokePath
    }
    
    func cloudUpDownBackgroundPath(bounds: CGRect) -> UIBezierPath{
        let cloudUpDownBackgroundPath = UIBezierPath()
        let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
        
        cloudUpDownBackgroundPath.move(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudUpDownBackgroundPath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudUpDownBackgroundPath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.35188 * w, y: minY + 0.79494 * h), controlPoint1:CGPoint(x:minX + 0.2573 * w, y: minY + h), controlPoint2:CGPoint(x:minX + 0.31433 * w, y: minY + 0.9038 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.51599 * w, y: minY + 0.34937 * h), controlPoint1:CGPoint(x:minX + 0.3936 * w, y: minY + 0.67595 * h), controlPoint2:CGPoint(x:minX + 0.49652 * w, y: minY + 0.39241 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.62587 * w, y: minY + 0.21266 * h), controlPoint1:CGPoint(x:minX + 0.53686 * w, y: minY + 0.2962 * h), controlPoint2:CGPoint(x:minX + 0.57858 * w, y: minY + 0.23544 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.5146 * w, y: minY + 0.03544 * h), controlPoint1:CGPoint(x:minX + 0.60083 * w, y: minY + 0.13671 * h), controlPoint2:CGPoint(x:minX + 0.56328 * w, y: minY + 0.07342 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.41864 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.48261 * w, y: minY + 0.01013 * h), controlPoint2:CGPoint(x:minX + 0.45063 * w, y: minY))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.19611 * w, y: minY + 0.26582 * h), controlPoint1:CGPoint(x:minX + 0.32406 * w, y: minY), controlPoint2:CGPoint(x:minX + 0.23505 * w, y: minY + 0.09873 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.19054 * w, y: minY + 0.28861 * h), controlPoint2:CGPoint(x:minX + 0.18637 * w, y: minY + 0.31392 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.0153 * w, y: minY + 0.53671 * h), controlPoint1:CGPoint(x:minX + 0.11127 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.04451 * w, y: minY + 0.41013 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX, y: minY + 0.66835 * h), controlPoint1:CGPoint(x:minX + 0.00556 * w, y: minY + 0.57975 * h), controlPoint2:CGPoint(x:minX, y: minY + 0.62532 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.10987 * w, y: minY + 0.97215 * h), controlPoint1:CGPoint(x:minX, y: minY + 0.79747 * h), controlPoint2:CGPoint(x:minX + 0.04172 * w, y: minY + 0.91899 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.17803 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.13074 * w, y: minY + 0.98987 * h), controlPoint2:CGPoint(x:minX + 0.15438 * w, y: minY + 0.99747 * h))
        cloudUpDownBackgroundPath.addLine(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudUpDownBackgroundPath.close()
        cloudUpDownBackgroundPath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudUpDownBackgroundPath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudUpDownBackgroundPath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.89569 * w, y: minY + 0.56962 * h), controlPoint1:CGPoint(x:minX + 0.91794 * w, y: minY + 0.57722 * h), controlPoint2:CGPoint(x:minX + 0.90682 * w, y: minY + 0.57215 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.78164 * w, y: minY + 0.31392 * h), controlPoint1:CGPoint(x:minX + 0.88317 * w, y: minY + 0.46076 * h), controlPoint2:CGPoint(x:minX + 0.84284 * w, y: minY + 0.36203 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.70376 * w, y: minY + 0.28354 * h), controlPoint1:CGPoint(x:minX + 0.75661 * w, y: minY + 0.29367 * h), controlPoint2:CGPoint(x:minX + 0.73018 * w, y: minY + 0.28354 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.68428 * w, y: minY + 0.28354 * h), controlPoint2:CGPoint(x:minX + 0.6662 * w, y: minY + 0.28861 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint2:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h), controlPoint1:CGPoint(x:minX + 0.59944 * w, y: minY + 0.32405 * h), controlPoint2:CGPoint(x:minX + 0.57163 * w, y: minY + 0.37468 * h))
        cloudUpDownBackgroundPath.addLine(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h))
        cloudUpDownBackgroundPath.addLine(to: CGPoint(x:minX + 0.4548 * w, y: minY + 0.6962 * h))
        cloudUpDownBackgroundPath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudUpDownBackgroundPath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.32823 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.363 * w, y: minY + 0.94177 * h), controlPoint2:CGPoint(x:minX + 0.34771 * w, y: minY + 0.97468 * h))
        cloudUpDownBackgroundPath.addLine(to: CGPoint(x:minX + 0.89291 * w, y: minY + h))
        cloudUpDownBackgroundPath.addLine(to: CGPoint(x:minX + 0.8943 * w, y: minY + h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.99026 * w, y: minY + 0.86835 * h), controlPoint1:CGPoint(x:minX + 0.93602 * w, y: minY + 0.99241 * h), controlPoint2:CGPoint(x:minX + 0.97357 * w, y: minY + 0.94177 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.78228 * h), controlPoint1:CGPoint(x:minX + 0.99722 * w, y: minY + 0.84051 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.81266 * h))
        cloudUpDownBackgroundPath.addCurve(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h), controlPoint1:CGPoint(x:minX + w, y: minY + 0.69873 * h), controlPoint2:CGPoint(x:minX + 0.97218 * w, y: minY + 0.62025 * h))
        cloudUpDownBackgroundPath.close()
        cloudUpDownBackgroundPath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        
        return cloudUpDownBackgroundPath
    }
    
    func cloudUpDownStrokePath(bounds: CGRect) -> UIBezierPath{
        let cloudUpDownStrokePath = UIBezierPath()
        let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
        
        cloudUpDownStrokePath.move(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudUpDownStrokePath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudUpDownStrokePath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.35188 * w, y: minY + 0.79494 * h), controlPoint1:CGPoint(x:minX + 0.2573 * w, y: minY + h), controlPoint2:CGPoint(x:minX + 0.31433 * w, y: minY + 0.9038 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.51599 * w, y: minY + 0.34937 * h), controlPoint1:CGPoint(x:minX + 0.3936 * w, y: minY + 0.67595 * h), controlPoint2:CGPoint(x:minX + 0.49652 * w, y: minY + 0.39241 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.62587 * w, y: minY + 0.21266 * h), controlPoint1:CGPoint(x:minX + 0.53686 * w, y: minY + 0.2962 * h), controlPoint2:CGPoint(x:minX + 0.57858 * w, y: minY + 0.23544 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.5146 * w, y: minY + 0.03544 * h), controlPoint1:CGPoint(x:minX + 0.60083 * w, y: minY + 0.13671 * h), controlPoint2:CGPoint(x:minX + 0.56328 * w, y: minY + 0.07342 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.41864 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.48261 * w, y: minY + 0.01013 * h), controlPoint2:CGPoint(x:minX + 0.45063 * w, y: minY))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.19611 * w, y: minY + 0.26582 * h), controlPoint1:CGPoint(x:minX + 0.32406 * w, y: minY), controlPoint2:CGPoint(x:minX + 0.23505 * w, y: minY + 0.09873 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.19054 * w, y: minY + 0.28861 * h), controlPoint2:CGPoint(x:minX + 0.18637 * w, y: minY + 0.31392 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.0153 * w, y: minY + 0.53671 * h), controlPoint1:CGPoint(x:minX + 0.11127 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.04451 * w, y: minY + 0.41013 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX, y: minY + 0.66835 * h), controlPoint1:CGPoint(x:minX + 0.00556 * w, y: minY + 0.57975 * h), controlPoint2:CGPoint(x:minX, y: minY + 0.62532 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.10987 * w, y: minY + 0.97215 * h), controlPoint1:CGPoint(x:minX, y: minY + 0.79747 * h), controlPoint2:CGPoint(x:minX + 0.04172 * w, y: minY + 0.91899 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.17803 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.13074 * w, y: minY + 0.98987 * h), controlPoint2:CGPoint(x:minX + 0.15438 * w, y: minY + 0.99747 * h))
        cloudUpDownStrokePath.addLine(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudUpDownStrokePath.close()
        cloudUpDownStrokePath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudUpDownStrokePath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudUpDownStrokePath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.89569 * w, y: minY + 0.56962 * h), controlPoint1:CGPoint(x:minX + 0.91794 * w, y: minY + 0.57722 * h), controlPoint2:CGPoint(x:minX + 0.90682 * w, y: minY + 0.57215 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.78164 * w, y: minY + 0.31392 * h), controlPoint1:CGPoint(x:minX + 0.88317 * w, y: minY + 0.46076 * h), controlPoint2:CGPoint(x:minX + 0.84284 * w, y: minY + 0.36203 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.70376 * w, y: minY + 0.28354 * h), controlPoint1:CGPoint(x:minX + 0.75661 * w, y: minY + 0.29367 * h), controlPoint2:CGPoint(x:minX + 0.73018 * w, y: minY + 0.28354 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.68428 * w, y: minY + 0.28354 * h), controlPoint2:CGPoint(x:minX + 0.6662 * w, y: minY + 0.28861 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint2:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h), controlPoint1:CGPoint(x:minX + 0.59944 * w, y: minY + 0.32405 * h), controlPoint2:CGPoint(x:minX + 0.57163 * w, y: minY + 0.37468 * h))
        cloudUpDownStrokePath.addLine(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h))
        cloudUpDownStrokePath.addLine(to: CGPoint(x:minX + 0.4548 * w, y: minY + 0.6962 * h))
        cloudUpDownStrokePath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudUpDownStrokePath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.32823 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.363 * w, y: minY + 0.94177 * h), controlPoint2:CGPoint(x:minX + 0.34771 * w, y: minY + 0.97468 * h))
        cloudUpDownStrokePath.addLine(to: CGPoint(x:minX + 0.89291 * w, y: minY + h))
        cloudUpDownStrokePath.addLine(to: CGPoint(x:minX + 0.8943 * w, y: minY + h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.99026 * w, y: minY + 0.86835 * h), controlPoint1:CGPoint(x:minX + 0.93602 * w, y: minY + 0.99241 * h), controlPoint2:CGPoint(x:minX + 0.97357 * w, y: minY + 0.94177 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.78228 * h), controlPoint1:CGPoint(x:minX + 0.99722 * w, y: minY + 0.84051 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.81266 * h))
        cloudUpDownStrokePath.addCurve(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h), controlPoint1:CGPoint(x:minX + w, y: minY + 0.69873 * h), controlPoint2:CGPoint(x:minX + 0.97218 * w, y: minY + 0.62025 * h))
        cloudUpDownStrokePath.close()
        cloudUpDownStrokePath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        
        return cloudUpDownStrokePath
    }
    
    func cloudSolidBackgroundPath(bounds: CGRect) -> UIBezierPath{
        let cloudSolidBackgroundPath = UIBezierPath()
        let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
        
        cloudSolidBackgroundPath.move(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudSolidBackgroundPath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudSolidBackgroundPath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.35188 * w, y: minY + 0.79494 * h), controlPoint1:CGPoint(x:minX + 0.2573 * w, y: minY + h), controlPoint2:CGPoint(x:minX + 0.31433 * w, y: minY + 0.9038 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.51599 * w, y: minY + 0.34937 * h), controlPoint1:CGPoint(x:minX + 0.3936 * w, y: minY + 0.67595 * h), controlPoint2:CGPoint(x:minX + 0.49652 * w, y: minY + 0.39241 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.62587 * w, y: minY + 0.21266 * h), controlPoint1:CGPoint(x:minX + 0.53686 * w, y: minY + 0.2962 * h), controlPoint2:CGPoint(x:minX + 0.57858 * w, y: minY + 0.23544 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.5146 * w, y: minY + 0.03544 * h), controlPoint1:CGPoint(x:minX + 0.60083 * w, y: minY + 0.13671 * h), controlPoint2:CGPoint(x:minX + 0.56328 * w, y: minY + 0.07342 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.41864 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.48261 * w, y: minY + 0.01013 * h), controlPoint2:CGPoint(x:minX + 0.45063 * w, y: minY))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.19611 * w, y: minY + 0.26582 * h), controlPoint1:CGPoint(x:minX + 0.32406 * w, y: minY), controlPoint2:CGPoint(x:minX + 0.23505 * w, y: minY + 0.09873 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.19054 * w, y: minY + 0.28861 * h), controlPoint2:CGPoint(x:minX + 0.18637 * w, y: minY + 0.31392 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.0153 * w, y: minY + 0.53671 * h), controlPoint1:CGPoint(x:minX + 0.11127 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.04451 * w, y: minY + 0.41013 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX, y: minY + 0.66835 * h), controlPoint1:CGPoint(x:minX + 0.00556 * w, y: minY + 0.57975 * h), controlPoint2:CGPoint(x:minX, y: minY + 0.62532 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.10987 * w, y: minY + 0.97215 * h), controlPoint1:CGPoint(x:minX, y: minY + 0.79747 * h), controlPoint2:CGPoint(x:minX + 0.04172 * w, y: minY + 0.91899 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.17803 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.13074 * w, y: minY + 0.98987 * h), controlPoint2:CGPoint(x:minX + 0.15438 * w, y: minY + 0.99747 * h))
        cloudSolidBackgroundPath.addLine(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudSolidBackgroundPath.close()
        cloudSolidBackgroundPath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudSolidBackgroundPath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudSolidBackgroundPath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.89569 * w, y: minY + 0.56962 * h), controlPoint1:CGPoint(x:minX + 0.91794 * w, y: minY + 0.57722 * h), controlPoint2:CGPoint(x:minX + 0.90682 * w, y: minY + 0.57215 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.78164 * w, y: minY + 0.31392 * h), controlPoint1:CGPoint(x:minX + 0.88317 * w, y: minY + 0.46076 * h), controlPoint2:CGPoint(x:minX + 0.84284 * w, y: minY + 0.36203 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.70376 * w, y: minY + 0.28354 * h), controlPoint1:CGPoint(x:minX + 0.75661 * w, y: minY + 0.29367 * h), controlPoint2:CGPoint(x:minX + 0.73018 * w, y: minY + 0.28354 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.68428 * w, y: minY + 0.28354 * h), controlPoint2:CGPoint(x:minX + 0.6662 * w, y: minY + 0.28861 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint2:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h), controlPoint1:CGPoint(x:minX + 0.59944 * w, y: minY + 0.32405 * h), controlPoint2:CGPoint(x:minX + 0.57163 * w, y: minY + 0.37468 * h))
        cloudSolidBackgroundPath.addLine(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h))
        cloudSolidBackgroundPath.addLine(to: CGPoint(x:minX + 0.4548 * w, y: minY + 0.6962 * h))
        cloudSolidBackgroundPath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudSolidBackgroundPath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.32823 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.363 * w, y: minY + 0.94177 * h), controlPoint2:CGPoint(x:minX + 0.34771 * w, y: minY + 0.97468 * h))
        cloudSolidBackgroundPath.addLine(to: CGPoint(x:minX + 0.89291 * w, y: minY + h))
        cloudSolidBackgroundPath.addLine(to: CGPoint(x:minX + 0.8943 * w, y: minY + h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.99026 * w, y: minY + 0.86835 * h), controlPoint1:CGPoint(x:minX + 0.93602 * w, y: minY + 0.99241 * h), controlPoint2:CGPoint(x:minX + 0.97357 * w, y: minY + 0.94177 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.78228 * h), controlPoint1:CGPoint(x:minX + 0.99722 * w, y: minY + 0.84051 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.81266 * h))
        cloudSolidBackgroundPath.addCurve(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h), controlPoint1:CGPoint(x:minX + w, y: minY + 0.69873 * h), controlPoint2:CGPoint(x:minX + 0.97218 * w, y: minY + 0.62025 * h))
        cloudSolidBackgroundPath.close()
        cloudSolidBackgroundPath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        
        return cloudSolidBackgroundPath
    }
    
    func cloudSolidStrokePath(bounds: CGRect) -> UIBezierPath{
        let cloudSolidStrokePath = UIBezierPath()
        let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
        
        cloudSolidStrokePath.move(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudSolidStrokePath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudSolidStrokePath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.35188 * w, y: minY + 0.79494 * h), controlPoint1:CGPoint(x:minX + 0.2573 * w, y: minY + h), controlPoint2:CGPoint(x:minX + 0.31433 * w, y: minY + 0.9038 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.51599 * w, y: minY + 0.34937 * h), controlPoint1:CGPoint(x:minX + 0.3936 * w, y: minY + 0.67595 * h), controlPoint2:CGPoint(x:minX + 0.49652 * w, y: minY + 0.39241 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.62587 * w, y: minY + 0.21266 * h), controlPoint1:CGPoint(x:minX + 0.53686 * w, y: minY + 0.2962 * h), controlPoint2:CGPoint(x:minX + 0.57858 * w, y: minY + 0.23544 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.5146 * w, y: minY + 0.03544 * h), controlPoint1:CGPoint(x:minX + 0.60083 * w, y: minY + 0.13671 * h), controlPoint2:CGPoint(x:minX + 0.56328 * w, y: minY + 0.07342 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.41864 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.48261 * w, y: minY + 0.01013 * h), controlPoint2:CGPoint(x:minX + 0.45063 * w, y: minY))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.19611 * w, y: minY + 0.26582 * h), controlPoint1:CGPoint(x:minX + 0.32406 * w, y: minY), controlPoint2:CGPoint(x:minX + 0.23505 * w, y: minY + 0.09873 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.19054 * w, y: minY + 0.28861 * h), controlPoint2:CGPoint(x:minX + 0.18637 * w, y: minY + 0.31392 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.0153 * w, y: minY + 0.53671 * h), controlPoint1:CGPoint(x:minX + 0.11127 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.04451 * w, y: minY + 0.41013 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX, y: minY + 0.66835 * h), controlPoint1:CGPoint(x:minX + 0.00556 * w, y: minY + 0.57975 * h), controlPoint2:CGPoint(x:minX, y: minY + 0.62532 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.10987 * w, y: minY + 0.97215 * h), controlPoint1:CGPoint(x:minX, y: minY + 0.79747 * h), controlPoint2:CGPoint(x:minX + 0.04172 * w, y: minY + 0.91899 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.17803 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.13074 * w, y: minY + 0.98987 * h), controlPoint2:CGPoint(x:minX + 0.15438 * w, y: minY + 0.99747 * h))
        cloudSolidStrokePath.addLine(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudSolidStrokePath.close()
        cloudSolidStrokePath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudSolidStrokePath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudSolidStrokePath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.89569 * w, y: minY + 0.56962 * h), controlPoint1:CGPoint(x:minX + 0.91794 * w, y: minY + 0.57722 * h), controlPoint2:CGPoint(x:minX + 0.90682 * w, y: minY + 0.57215 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.78164 * w, y: minY + 0.31392 * h), controlPoint1:CGPoint(x:minX + 0.88317 * w, y: minY + 0.46076 * h), controlPoint2:CGPoint(x:minX + 0.84284 * w, y: minY + 0.36203 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.70376 * w, y: minY + 0.28354 * h), controlPoint1:CGPoint(x:minX + 0.75661 * w, y: minY + 0.29367 * h), controlPoint2:CGPoint(x:minX + 0.73018 * w, y: minY + 0.28354 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.68428 * w, y: minY + 0.28354 * h), controlPoint2:CGPoint(x:minX + 0.6662 * w, y: minY + 0.28861 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint2:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h), controlPoint1:CGPoint(x:minX + 0.59944 * w, y: minY + 0.32405 * h), controlPoint2:CGPoint(x:minX + 0.57163 * w, y: minY + 0.37468 * h))
        cloudSolidStrokePath.addLine(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h))
        cloudSolidStrokePath.addLine(to: CGPoint(x:minX + 0.4548 * w, y: minY + 0.6962 * h))
        cloudSolidStrokePath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudSolidStrokePath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.32823 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.363 * w, y: minY + 0.94177 * h), controlPoint2:CGPoint(x:minX + 0.34771 * w, y: minY + 0.97468 * h))
        cloudSolidStrokePath.addLine(to: CGPoint(x:minX + 0.89291 * w, y: minY + h))
        cloudSolidStrokePath.addLine(to: CGPoint(x:minX + 0.8943 * w, y: minY + h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.99026 * w, y: minY + 0.86835 * h), controlPoint1:CGPoint(x:minX + 0.93602 * w, y: minY + 0.99241 * h), controlPoint2:CGPoint(x:minX + 0.97357 * w, y: minY + 0.94177 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.78228 * h), controlPoint1:CGPoint(x:minX + 0.99722 * w, y: minY + 0.84051 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.81266 * h))
        cloudSolidStrokePath.addCurve(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h), controlPoint1:CGPoint(x:minX + w, y: minY + 0.69873 * h), controlPoint2:CGPoint(x:minX + 0.97218 * w, y: minY + 0.62025 * h))
        cloudSolidStrokePath.close()
        cloudSolidStrokePath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        
        return cloudSolidStrokePath
    }
    
    func cloudStaticBackgroundPath(bounds: CGRect) -> UIBezierPath{
        let cloudStaticBackgroundPath = UIBezierPath()
        let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
        
        cloudStaticBackgroundPath.move(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudStaticBackgroundPath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudStaticBackgroundPath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.35188 * w, y: minY + 0.79494 * h), controlPoint1:CGPoint(x:minX + 0.2573 * w, y: minY + h), controlPoint2:CGPoint(x:minX + 0.31433 * w, y: minY + 0.9038 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.51599 * w, y: minY + 0.34937 * h), controlPoint1:CGPoint(x:minX + 0.3936 * w, y: minY + 0.67595 * h), controlPoint2:CGPoint(x:minX + 0.49652 * w, y: minY + 0.39241 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.62587 * w, y: minY + 0.21266 * h), controlPoint1:CGPoint(x:minX + 0.53686 * w, y: minY + 0.2962 * h), controlPoint2:CGPoint(x:minX + 0.57858 * w, y: minY + 0.23544 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.5146 * w, y: minY + 0.03544 * h), controlPoint1:CGPoint(x:minX + 0.60083 * w, y: minY + 0.13671 * h), controlPoint2:CGPoint(x:minX + 0.56328 * w, y: minY + 0.07342 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.41864 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.48261 * w, y: minY + 0.01013 * h), controlPoint2:CGPoint(x:minX + 0.45063 * w, y: minY))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.19611 * w, y: minY + 0.26582 * h), controlPoint1:CGPoint(x:minX + 0.32406 * w, y: minY), controlPoint2:CGPoint(x:minX + 0.23505 * w, y: minY + 0.09873 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.19054 * w, y: minY + 0.28861 * h), controlPoint2:CGPoint(x:minX + 0.18637 * w, y: minY + 0.31392 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.0153 * w, y: minY + 0.53671 * h), controlPoint1:CGPoint(x:minX + 0.11127 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.04451 * w, y: minY + 0.41013 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX, y: minY + 0.66835 * h), controlPoint1:CGPoint(x:minX + 0.00556 * w, y: minY + 0.57975 * h), controlPoint2:CGPoint(x:minX, y: minY + 0.62532 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.10987 * w, y: minY + 0.97215 * h), controlPoint1:CGPoint(x:minX, y: minY + 0.79747 * h), controlPoint2:CGPoint(x:minX + 0.04172 * w, y: minY + 0.91899 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.17803 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.13074 * w, y: minY + 0.98987 * h), controlPoint2:CGPoint(x:minX + 0.15438 * w, y: minY + 0.99747 * h))
        cloudStaticBackgroundPath.addLine(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudStaticBackgroundPath.close()
        cloudStaticBackgroundPath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudStaticBackgroundPath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudStaticBackgroundPath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.89569 * w, y: minY + 0.56962 * h), controlPoint1:CGPoint(x:minX + 0.91794 * w, y: minY + 0.57722 * h), controlPoint2:CGPoint(x:minX + 0.90682 * w, y: minY + 0.57215 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.78164 * w, y: minY + 0.31392 * h), controlPoint1:CGPoint(x:minX + 0.88317 * w, y: minY + 0.46076 * h), controlPoint2:CGPoint(x:minX + 0.84284 * w, y: minY + 0.36203 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.70376 * w, y: minY + 0.28354 * h), controlPoint1:CGPoint(x:minX + 0.75661 * w, y: minY + 0.29367 * h), controlPoint2:CGPoint(x:minX + 0.73018 * w, y: minY + 0.28354 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.68428 * w, y: minY + 0.28354 * h), controlPoint2:CGPoint(x:minX + 0.6662 * w, y: minY + 0.28861 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint2:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h), controlPoint1:CGPoint(x:minX + 0.59944 * w, y: minY + 0.32405 * h), controlPoint2:CGPoint(x:minX + 0.57163 * w, y: minY + 0.37468 * h))
        cloudStaticBackgroundPath.addLine(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h))
        cloudStaticBackgroundPath.addLine(to: CGPoint(x:minX + 0.4548 * w, y: minY + 0.6962 * h))
        cloudStaticBackgroundPath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudStaticBackgroundPath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.32823 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.363 * w, y: minY + 0.94177 * h), controlPoint2:CGPoint(x:minX + 0.34771 * w, y: minY + 0.97468 * h))
        cloudStaticBackgroundPath.addLine(to: CGPoint(x:minX + 0.89291 * w, y: minY + h))
        cloudStaticBackgroundPath.addLine(to: CGPoint(x:minX + 0.8943 * w, y: minY + h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.99026 * w, y: minY + 0.86835 * h), controlPoint1:CGPoint(x:minX + 0.93602 * w, y: minY + 0.99241 * h), controlPoint2:CGPoint(x:minX + 0.97357 * w, y: minY + 0.94177 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.78228 * h), controlPoint1:CGPoint(x:minX + 0.99722 * w, y: minY + 0.84051 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.81266 * h))
        cloudStaticBackgroundPath.addCurve(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h), controlPoint1:CGPoint(x:minX + w, y: minY + 0.69873 * h), controlPoint2:CGPoint(x:minX + 0.97218 * w, y: minY + 0.62025 * h))
        cloudStaticBackgroundPath.close()
        cloudStaticBackgroundPath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        
        return cloudStaticBackgroundPath
    }
    
    func cloudStaticStrokePath(bounds: CGRect) -> UIBezierPath{
        let cloudStaticStrokePath = UIBezierPath()
        let minX = CGFloat(bounds.minX), minY = bounds.minY, w = bounds.width, h = bounds.height;
        
        cloudStaticStrokePath.move(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudStaticStrokePath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudStaticStrokePath.addLine(to: CGPoint(x:minX + 0.1822 * w, y: minY + h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.35188 * w, y: minY + 0.79494 * h), controlPoint1:CGPoint(x:minX + 0.2573 * w, y: minY + h), controlPoint2:CGPoint(x:minX + 0.31433 * w, y: minY + 0.9038 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.51599 * w, y: minY + 0.34937 * h), controlPoint1:CGPoint(x:minX + 0.3936 * w, y: minY + 0.67595 * h), controlPoint2:CGPoint(x:minX + 0.49652 * w, y: minY + 0.39241 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.62587 * w, y: minY + 0.21266 * h), controlPoint1:CGPoint(x:minX + 0.53686 * w, y: minY + 0.2962 * h), controlPoint2:CGPoint(x:minX + 0.57858 * w, y: minY + 0.23544 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.5146 * w, y: minY + 0.03544 * h), controlPoint1:CGPoint(x:minX + 0.60083 * w, y: minY + 0.13671 * h), controlPoint2:CGPoint(x:minX + 0.56328 * w, y: minY + 0.07342 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.41864 * w, y: minY), controlPoint1:CGPoint(x:minX + 0.48261 * w, y: minY + 0.01013 * h), controlPoint2:CGPoint(x:minX + 0.45063 * w, y: minY))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.19611 * w, y: minY + 0.26582 * h), controlPoint1:CGPoint(x:minX + 0.32406 * w, y: minY), controlPoint2:CGPoint(x:minX + 0.23505 * w, y: minY + 0.09873 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.19054 * w, y: minY + 0.28861 * h), controlPoint2:CGPoint(x:minX + 0.18637 * w, y: minY + 0.31392 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h), controlPoint1:CGPoint(x:minX + 0.18359 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.1822 * w, y: minY + 0.33671 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.0153 * w, y: minY + 0.53671 * h), controlPoint1:CGPoint(x:minX + 0.11127 * w, y: minY + 0.33671 * h), controlPoint2:CGPoint(x:minX + 0.04451 * w, y: minY + 0.41013 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX, y: minY + 0.66835 * h), controlPoint1:CGPoint(x:minX + 0.00556 * w, y: minY + 0.57975 * h), controlPoint2:CGPoint(x:minX, y: minY + 0.62532 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.10987 * w, y: minY + 0.97215 * h), controlPoint1:CGPoint(x:minX, y: minY + 0.79747 * h), controlPoint2:CGPoint(x:minX + 0.04172 * w, y: minY + 0.91899 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.17803 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.13074 * w, y: minY + 0.98987 * h), controlPoint2:CGPoint(x:minX + 0.15438 * w, y: minY + 0.99747 * h))
        cloudStaticStrokePath.addLine(to: CGPoint(x:minX + 0.17803 * w, y: minY + h))
        cloudStaticStrokePath.close()
        cloudStaticStrokePath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudStaticStrokePath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudStaticStrokePath.addLine(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.89569 * w, y: minY + 0.56962 * h), controlPoint1:CGPoint(x:minX + 0.91794 * w, y: minY + 0.57722 * h), controlPoint2:CGPoint(x:minX + 0.90682 * w, y: minY + 0.57215 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.78164 * w, y: minY + 0.31392 * h), controlPoint1:CGPoint(x:minX + 0.88317 * w, y: minY + 0.46076 * h), controlPoint2:CGPoint(x:minX + 0.84284 * w, y: minY + 0.36203 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.70376 * w, y: minY + 0.28354 * h), controlPoint1:CGPoint(x:minX + 0.75661 * w, y: minY + 0.29367 * h), controlPoint2:CGPoint(x:minX + 0.73018 * w, y: minY + 0.28354 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.68428 * w, y: minY + 0.28354 * h), controlPoint2:CGPoint(x:minX + 0.6662 * w, y: minY + 0.28861 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint1:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h), controlPoint2:CGPoint(x:minX + 0.64812 * w, y: minY + 0.29873 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h), controlPoint1:CGPoint(x:minX + 0.59944 * w, y: minY + 0.32405 * h), controlPoint2:CGPoint(x:minX + 0.57163 * w, y: minY + 0.37468 * h))
        cloudStaticStrokePath.addLine(to: CGPoint(x:minX + 0.54798 * w, y: minY + 0.43797 * h))
        cloudStaticStrokePath.addLine(to: CGPoint(x:minX + 0.4548 * w, y: minY + 0.6962 * h))
        cloudStaticStrokePath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudStaticStrokePath.addLine(to: CGPoint(x:minX + 0.37691 * w, y: minY + 0.90886 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.32823 * w, y: minY + h), controlPoint1:CGPoint(x:minX + 0.363 * w, y: minY + 0.94177 * h), controlPoint2:CGPoint(x:minX + 0.34771 * w, y: minY + 0.97468 * h))
        cloudStaticStrokePath.addLine(to: CGPoint(x:minX + 0.89291 * w, y: minY + h))
        cloudStaticStrokePath.addLine(to: CGPoint(x:minX + 0.8943 * w, y: minY + h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.99026 * w, y: minY + 0.86835 * h), controlPoint1:CGPoint(x:minX + 0.93602 * w, y: minY + 0.99241 * h), controlPoint2:CGPoint(x:minX + 0.97357 * w, y: minY + 0.94177 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + w, y: minY + 0.78228 * h), controlPoint1:CGPoint(x:minX + 0.99722 * w, y: minY + 0.84051 * h), controlPoint2:CGPoint(x:minX + w, y: minY + 0.81266 * h))
        cloudStaticStrokePath.addCurve(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h), controlPoint1:CGPoint(x:minX + w, y: minY + 0.69873 * h), controlPoint2:CGPoint(x:minX + 0.97218 * w, y: minY + 0.62025 * h))
        cloudStaticStrokePath.close()
        cloudStaticStrokePath.move(to: CGPoint(x:minX + 0.92907 * w, y: minY + 0.58481 * h))
        
        return cloudStaticStrokePath
    }
}
