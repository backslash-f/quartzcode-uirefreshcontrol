//
//  CustomUIRefreshControl.swift
//
//  Code generated using QuartzCode 1.39.16 on 5/10/16.
//  www.quartzcodeapp.com
//

import UIKit

@IBDesignable
class CustomUIRefreshControl: UIView {
	
	var updateLayerValueForCompletedAnimation : Bool = false
	var completionBlocks : Dictionary<CAAnimation, (Bool) -> Void> = [:]
	var layers : Dictionary<String, AnyObject> = [:]
	
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
		
		resetLayerPropertiesForLayerIdentifiers(nil)
		setupLayerFrames()
	}
	
	func resetLayerPropertiesForLayerIdentifiers(layerIds: [String]!){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if layerIds == nil || layerIds.contains("cloudGradientBackground"){
			let cloudGradientBackground = layers["cloudGradientBackground"] as! CAShapeLayer
			cloudGradientBackground.opacity       = 0
			cloudGradientBackground.fillColor     = nil
			cloudGradientBackground.lineWidth     = 0
			
			let cloudGradientBackgroundGradient = layers["cloudGradientBackgroundGradient"] as! CAGradientLayer
			let cloudGradientBackgroundMask       = CAShapeLayer()
			cloudGradientBackgroundMask.path      = cloudGradientBackground.path
			cloudGradientBackgroundGradient.mask  = cloudGradientBackgroundMask
			cloudGradientBackgroundGradient.frame = cloudGradientBackground.bounds
			let cloudGradientBackgroundGradientColors : Array <AnyObject> = [UIColor(red:0.0627, green: 0.584, blue:0.827, alpha:1).CGColor, UIColor.whiteColor().CGColor]
			cloudGradientBackgroundGradient.colors = cloudGradientBackgroundGradientColors
			cloudGradientBackgroundGradient.startPoint = CGPointMake(0.5, 1)
			cloudGradientBackgroundGradient.endPoint = CGPointMake(0.5, 0)
		}
		if layerIds == nil || layerIds.contains("cloudGradientStroke"){
			let cloudGradientStroke = layers["cloudGradientStroke"] as! CAShapeLayer
			cloudGradientStroke.lineCap     = kCALineCapRound
			cloudGradientStroke.fillColor   = nil
			cloudGradientStroke.strokeColor = UIColor(red:0.0549, green: 0.522, blue:0.741, alpha:1).CGColor
		}
		if layerIds == nil || layerIds.contains("cloudUpDownBackground"){
			let cloudUpDownBackground = layers["cloudUpDownBackground"] as! CAShapeLayer
			cloudUpDownBackground.opacity   = 0
			cloudUpDownBackground.fillColor = UIColor(red:0.0627, green: 0.584, blue:0.827, alpha:1).CGColor
			cloudUpDownBackground.lineWidth = 0
		}
		if layerIds == nil || layerIds.contains("cloudUpDownStroke"){
			let cloudUpDownStroke = layers["cloudUpDownStroke"] as! CAShapeLayer
			cloudUpDownStroke.lineCap     = kCALineCapRound
			cloudUpDownStroke.fillColor   = nil
			cloudUpDownStroke.strokeColor = UIColor(red:0.0549, green: 0.522, blue:0.741, alpha:1).CGColor
		}
		if layerIds == nil || layerIds.contains("cloudSolidBackground"){
			let cloudSolidBackground = layers["cloudSolidBackground"] as! CAShapeLayer
			cloudSolidBackground.opacity   = 0
			cloudSolidBackground.fillColor = UIColor(red:0.0627, green: 0.584, blue:0.827, alpha:1).CGColor
			cloudSolidBackground.lineWidth = 0
		}
		if layerIds == nil || layerIds.contains("cloudSolidStroke"){
			let cloudSolidStroke = layers["cloudSolidStroke"] as! CAShapeLayer
			cloudSolidStroke.lineCap     = kCALineCapRound
			cloudSolidStroke.fillColor   = nil
			cloudSolidStroke.strokeColor = UIColor(red:0.0549, green: 0.522, blue:0.741, alpha:1).CGColor
		}
		if layerIds == nil || layerIds.contains("cloudStaticBackground"){
			let cloudStaticBackground = layers["cloudStaticBackground"] as! CAShapeLayer
			cloudStaticBackground.fillColor = UIColor(red:0.0627, green: 0.584, blue:0.827, alpha:1).CGColor
			cloudStaticBackground.lineWidth = 0
		}
		if layerIds == nil || layerIds.contains("cloudStaticStroke"){
			let cloudStaticStroke = layers["cloudStaticStroke"] as! CAShapeLayer
			cloudStaticStroke.lineCap     = kCALineCapRound
			cloudStaticStroke.fillColor   = nil
			cloudStaticStroke.strokeColor = UIColor(red:0.0549, green: 0.522, blue:0.741, alpha:1).CGColor
		}
		
		CATransaction.commit()
	}
	
	func setupLayerFrames(){
		CATransaction.begin()
		CATransaction.setDisableActions(true)
		
		if let cloudGradient : CALayer = layers["cloudGradient"] as? CALayer{
			cloudGradient.frame = CGRectMake(0.04167 * cloudGradient.superlayer!.bounds.width, 0.24986 * cloudGradient.superlayer!.bounds.height, 0.91667 * cloudGradient.superlayer!.bounds.width, 0.50023 * cloudGradient.superlayer!.bounds.height)
		}
		
		if let cloudGradientBackground : CAShapeLayer = layers["cloudGradientBackground"] as? CAShapeLayer{
			cloudGradientBackground.frame = CGRectMake(0, 0.00045 * cloudGradientBackground.superlayer!.bounds.height,  cloudGradientBackground.superlayer!.bounds.width, 0.99955 * cloudGradientBackground.superlayer!.bounds.height)
			cloudGradientBackground.path  = cloudGradientBackgroundPathWithBounds((layers["cloudGradientBackground"] as! CAShapeLayer).bounds).CGPath
			let cloudGradientBackgroundGradient = layers["cloudGradientBackgroundGradient"] as! CAGradientLayer
			cloudGradientBackgroundGradient.frame = cloudGradientBackground.bounds
			(cloudGradientBackgroundGradient.mask as! CAShapeLayer).path = cloudGradientBackground.path
		}
		
		if let cloudGradientStroke : CAShapeLayer = layers["cloudGradientStroke"] as? CAShapeLayer{
			cloudGradientStroke.frame = CGRectMake(0, 0,  cloudGradientStroke.superlayer!.bounds.width, 0.99955 * cloudGradientStroke.superlayer!.bounds.height)
			cloudGradientStroke.path  = cloudGradientStrokePathWithBounds((layers["cloudGradientStroke"] as! CAShapeLayer).bounds).CGPath
		}
		
		if let cloudUpDown : CALayer = layers["cloudUpDown"] as? CALayer{
			cloudUpDown.frame = CGRectMake(0.04558 * cloudUpDown.superlayer!.bounds.width, 0.25035 * cloudUpDown.superlayer!.bounds.height, 0.90884 * cloudUpDown.superlayer!.bounds.width, 0.49929 * cloudUpDown.superlayer!.bounds.height)
		}
		
		if let cloudUpDownBackground : CAShapeLayer = layers["cloudUpDownBackground"] as? CAShapeLayer{
			cloudUpDownBackground.frame = CGRectMake(0, 0,  cloudUpDownBackground.superlayer!.bounds.width, 1 * cloudUpDownBackground.superlayer!.bounds.height)
			cloudUpDownBackground.path  = cloudUpDownBackgroundPathWithBounds((layers["cloudUpDownBackground"] as! CAShapeLayer).bounds).CGPath
		}
		
		if let cloudUpDownStroke : CAShapeLayer = layers["cloudUpDownStroke"] as? CAShapeLayer{
			cloudUpDownStroke.frame = CGRectMake(0, 0,  cloudUpDownStroke.superlayer!.bounds.width, 1 * cloudUpDownStroke.superlayer!.bounds.height)
			cloudUpDownStroke.path  = cloudUpDownStrokePathWithBounds((layers["cloudUpDownStroke"] as! CAShapeLayer).bounds).CGPath
		}
		
		if let cloudSolid : CALayer = layers["cloudSolid"] as? CALayer{
			cloudSolid.frame = CGRectMake(0.04558 * cloudSolid.superlayer!.bounds.width, 0.24202 * cloudSolid.superlayer!.bounds.height, 0.90884 * cloudSolid.superlayer!.bounds.width, 0.50763 * cloudSolid.superlayer!.bounds.height)
		}
		
		if let cloudSolidBackground : CAShapeLayer = layers["cloudSolidBackground"] as? CAShapeLayer{
			cloudSolidBackground.frame = CGRectMake(0, 0,  cloudSolidBackground.superlayer!.bounds.width, 0.98358 * cloudSolidBackground.superlayer!.bounds.height)
			cloudSolidBackground.path  = cloudSolidBackgroundPathWithBounds((layers["cloudSolidBackground"] as! CAShapeLayer).bounds).CGPath
		}
		
		if let cloudSolidStroke : CAShapeLayer = layers["cloudSolidStroke"] as? CAShapeLayer{
			cloudSolidStroke.frame = CGRectMake(0, 0.01642 * cloudSolidStroke.superlayer!.bounds.height,  cloudSolidStroke.superlayer!.bounds.width, 0.98358 * cloudSolidStroke.superlayer!.bounds.height)
			cloudSolidStroke.path  = cloudSolidStrokePathWithBounds((layers["cloudSolidStroke"] as! CAShapeLayer).bounds).CGPath
		}
		
		if let cloudStatic : CALayer = layers["cloudStatic"] as? CALayer{
			cloudStatic.frame = CGRectMake(0.04558 * cloudStatic.superlayer!.bounds.width, 0.25035 * cloudStatic.superlayer!.bounds.height, 0.90884 * cloudStatic.superlayer!.bounds.width, 0.49929 * cloudStatic.superlayer!.bounds.height)
		}
		
		if let cloudStaticBackground : CAShapeLayer = layers["cloudStaticBackground"] as? CAShapeLayer{
			cloudStaticBackground.frame = CGRectMake(0, 0,  cloudStaticBackground.superlayer!.bounds.width, 1 * cloudStaticBackground.superlayer!.bounds.height)
			cloudStaticBackground.path  = cloudStaticBackgroundPathWithBounds((layers["cloudStaticBackground"] as! CAShapeLayer).bounds).CGPath
		}
		
		if let cloudStaticStroke : CAShapeLayer = layers["cloudStaticStroke"] as? CAShapeLayer{
			cloudStaticStroke.frame = CGRectMake(0, 0,  cloudStaticStroke.superlayer!.bounds.width, 1 * cloudStaticStroke.superlayer!.bounds.height)
			cloudStaticStroke.path  = cloudStaticStrokePathWithBounds((layers["cloudStaticStroke"] as! CAShapeLayer).bounds).CGPath
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
		
		let cloudGradientRefreshGradientAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudGradientOpacityAnim], fillMode:fillMode)
		layers["cloudGradient"]?.addAnimation(cloudGradientRefreshGradientAnim, forKey:"cloudGradientRefreshGradientAnim")
		
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
		
		let cloudGradientBackgroundRefreshGradientAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudGradientBackgroundOpacityAnim, cloudGradientBackgroundHiddenAnim], fillMode:fillMode)
		layers["cloudGradientBackground"]?.addAnimation(cloudGradientBackgroundRefreshGradientAnim, forKey:"cloudGradientBackgroundRefreshGradientAnim")
		
		////CloudGradientStroke animation
		let cloudGradientStrokeStrokeEndAnim = CAKeyframeAnimation(keyPath:"strokeEnd")
		cloudGradientStrokeStrokeEndAnim.values = [-0.01, 1, 1]
		cloudGradientStrokeStrokeEndAnim.keyTimes = [0, 0.333, 1]
		cloudGradientStrokeStrokeEndAnim.duration = 3
		cloudGradientStrokeStrokeEndAnim.repeatCount = Float.infinity
		
		let cloudGradientStrokeRefreshGradientAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudGradientStrokeStrokeEndAnim], fillMode:fillMode)
		layers["cloudGradientStroke"]?.addAnimation(cloudGradientStrokeRefreshGradientAnim, forKey:"cloudGradientStrokeRefreshGradientAnim")
		
		////CloudUpDown animation
		let cloudUpDownHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
		cloudUpDownHiddenAnim.values   = [true, true]
		cloudUpDownHiddenAnim.keyTimes = [0, 1]
		cloudUpDownHiddenAnim.duration = 3
		
		let cloudUpDownRefreshGradientAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudUpDownHiddenAnim], fillMode:fillMode)
		layers["cloudUpDown"]?.addAnimation(cloudUpDownRefreshGradientAnim, forKey:"cloudUpDownRefreshGradientAnim")
		
		////CloudSolid animation
		let cloudSolidHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
		cloudSolidHiddenAnim.values   = [true, true]
		cloudSolidHiddenAnim.keyTimes = [0, 1]
		cloudSolidHiddenAnim.duration = 3
		
		let cloudSolidRefreshGradientAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudSolidHiddenAnim], fillMode:fillMode)
		layers["cloudSolid"]?.addAnimation(cloudSolidRefreshGradientAnim, forKey:"cloudSolidRefreshGradientAnim")
		
		////CloudStatic animation
		let cloudStaticHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
		cloudStaticHiddenAnim.values   = [true, true]
		cloudStaticHiddenAnim.keyTimes = [0, 1]
		cloudStaticHiddenAnim.duration = 3
		
		let cloudStaticRefreshGradientAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudStaticHiddenAnim], fillMode:fillMode)
		layers["cloudStatic"]?.addAnimation(cloudStaticRefreshGradientAnim, forKey:"cloudStaticRefreshGradientAnim")
	}
	
	func addRefreshSolidAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		////CloudGradient animation
		let cloudGradientHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
		cloudGradientHiddenAnim.values   = [true, true]
		cloudGradientHiddenAnim.keyTimes = [0, 1]
		cloudGradientHiddenAnim.duration = 3
		
		let cloudGradientRefreshSolidAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudGradientHiddenAnim], fillMode:fillMode)
		layers["cloudGradient"]?.addAnimation(cloudGradientRefreshSolidAnim, forKey:"cloudGradientRefreshSolidAnim")
		
		////CloudUpDown animation
		let cloudUpDownHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
		cloudUpDownHiddenAnim.values   = [true, true]
		cloudUpDownHiddenAnim.keyTimes = [0, 1]
		cloudUpDownHiddenAnim.duration = 3
		
		let cloudUpDownRefreshSolidAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudUpDownHiddenAnim], fillMode:fillMode)
		layers["cloudUpDown"]?.addAnimation(cloudUpDownRefreshSolidAnim, forKey:"cloudUpDownRefreshSolidAnim")
		
		////CloudSolid animation
		let cloudSolidOpacityAnim         = CAKeyframeAnimation(keyPath:"opacity")
		cloudSolidOpacityAnim.values      = [1, 1, 1, 0]
		cloudSolidOpacityAnim.keyTimes    = [0, 0.333, 0.667, 1]
		cloudSolidOpacityAnim.duration    = 3
		cloudSolidOpacityAnim.repeatCount = Float.infinity
		
		let cloudSolidRefreshSolidAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudSolidOpacityAnim], fillMode:fillMode)
		layers["cloudSolid"]?.addAnimation(cloudSolidRefreshSolidAnim, forKey:"cloudSolidRefreshSolidAnim")
		
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
		
		let cloudSolidBackgroundRefreshSolidAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudSolidBackgroundOpacityAnim, cloudSolidBackgroundHiddenAnim], fillMode:fillMode)
		layers["cloudSolidBackground"]?.addAnimation(cloudSolidBackgroundRefreshSolidAnim, forKey:"cloudSolidBackgroundRefreshSolidAnim")
		
		////CloudSolidStroke animation
		let cloudSolidStrokeStrokeEndAnim      = CAKeyframeAnimation(keyPath:"strokeEnd")
		cloudSolidStrokeStrokeEndAnim.values   = [-0.01, 1, 1, 1]
		cloudSolidStrokeStrokeEndAnim.keyTimes = [0, 0.333, 0.667, 1]
		cloudSolidStrokeStrokeEndAnim.duration = 3
		cloudSolidStrokeStrokeEndAnim.repeatCount = Float.infinity
		
		let cloudSolidStrokeRefreshSolidAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudSolidStrokeStrokeEndAnim], fillMode:fillMode)
		layers["cloudSolidStroke"]?.addAnimation(cloudSolidStrokeRefreshSolidAnim, forKey:"cloudSolidStrokeRefreshSolidAnim")
		
		////CloudStatic animation
		let cloudStaticHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
		cloudStaticHiddenAnim.values   = [true, true]
		cloudStaticHiddenAnim.keyTimes = [0, 1]
		cloudStaticHiddenAnim.duration = 3
		
		let cloudStaticRefreshSolidAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudStaticHiddenAnim], fillMode:fillMode)
		layers["cloudStatic"]?.addAnimation(cloudStaticRefreshSolidAnim, forKey:"cloudStaticRefreshSolidAnim")
	}
	
	func addRefreshUpDownAnimation(){
		let fillMode : String = kCAFillModeForwards
		
		////An infinity animation
		
		////CloudGradient animation
		let cloudGradientHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
		cloudGradientHiddenAnim.values   = [true, true]
		cloudGradientHiddenAnim.keyTimes = [0, 1]
		cloudGradientHiddenAnim.duration = 3
		
		let cloudGradientRefreshUpDownAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudGradientHiddenAnim], fillMode:fillMode)
		layers["cloudGradient"]?.addAnimation(cloudGradientRefreshUpDownAnim, forKey:"cloudGradientRefreshUpDownAnim")
		
		let cloudUpDown = layers["cloudUpDown"] as! CALayer
		
		////CloudUpDown animation
		let cloudUpDownPositionAnim          = CAKeyframeAnimation(keyPath:"position")
		cloudUpDownPositionAnim.values       = [NSValue(CGPoint: CGPointMake(0.5 * cloudUpDown.superlayer!.bounds.width, 0.5 * cloudUpDown.superlayer!.bounds.height)), NSValue(CGPoint: CGPointMake(0.5 * cloudUpDown.superlayer!.bounds.width, 0.33333 * cloudUpDown.superlayer!.bounds.height)), NSValue(CGPoint: CGPointMake(0.5 * cloudUpDown.superlayer!.bounds.width, 0.5 * cloudUpDown.superlayer!.bounds.height)), NSValue(CGPoint: CGPointMake(0.5 * cloudUpDown.superlayer!.bounds.width, 0.33333 * cloudUpDown.superlayer!.bounds.height))]
		cloudUpDownPositionAnim.keyTimes     = [0, 0.333, 0.667, 1]
		cloudUpDownPositionAnim.duration     = 3
		cloudUpDownPositionAnim.repeatCount  = Float.infinity
		cloudUpDownPositionAnim.autoreverses = true
		
		let cloudUpDownRefreshUpDownAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudUpDownPositionAnim], fillMode:fillMode)
		cloudUpDown.addAnimation(cloudUpDownRefreshUpDownAnim, forKey:"cloudUpDownRefreshUpDownAnim")
		
		////CloudUpDownBackground animation
		let cloudUpDownBackgroundOpacityAnim = CAKeyframeAnimation(keyPath:"opacity")
		cloudUpDownBackgroundOpacityAnim.values = [1, 1]
		cloudUpDownBackgroundOpacityAnim.keyTimes = [0, 1]
		cloudUpDownBackgroundOpacityAnim.duration = 3
		
		let cloudUpDownBackgroundRefreshUpDownAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudUpDownBackgroundOpacityAnim], fillMode:fillMode)
		layers["cloudUpDownBackground"]?.addAnimation(cloudUpDownBackgroundRefreshUpDownAnim, forKey:"cloudUpDownBackgroundRefreshUpDownAnim")
		
		////CloudSolid animation
		let cloudSolidHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
		cloudSolidHiddenAnim.values   = [true, true]
		cloudSolidHiddenAnim.keyTimes = [0, 1]
		cloudSolidHiddenAnim.duration = 3
		
		let cloudSolidRefreshUpDownAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudSolidHiddenAnim], fillMode:fillMode)
		layers["cloudSolid"]?.addAnimation(cloudSolidRefreshUpDownAnim, forKey:"cloudSolidRefreshUpDownAnim")
		
		////CloudStatic animation
		let cloudStaticHiddenAnim      = CAKeyframeAnimation(keyPath:"hidden")
		cloudStaticHiddenAnim.values   = [true, true]
		cloudStaticHiddenAnim.keyTimes = [0, 1]
		cloudStaticHiddenAnim.duration = 3
		
		let cloudStaticRefreshUpDownAnim : CAAnimationGroup = QCMethod.groupAnimations([cloudStaticHiddenAnim], fillMode:fillMode)
		layers["cloudStatic"]?.addAnimation(cloudStaticRefreshUpDownAnim, forKey:"cloudStaticRefreshUpDownAnim")
	}
	
	//MARK: - Animation Cleanup
	
	override func animationDidStop(anim: CAAnimation, finished flag: Bool){
		if let completionBlock = completionBlocks[anim]{
			completionBlocks.removeValueForKey(anim)
			if (flag && updateLayerValueForCompletedAnimation) || anim.valueForKey("needEndAnim") as! Bool{
				updateLayerValuesForAnimationId(anim.valueForKey("animId") as! String)
				removeAnimationsForAnimationId(anim.valueForKey("animId") as! String)
			}
			completionBlock(flag)
		}
	}
	
	func updateLayerValuesForAnimationId(identifier: String){
		if identifier == "refreshGradient"{
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudGradient"] as! CALayer).animationForKey("cloudGradientRefreshGradientAnim"), theLayer:(layers["cloudGradient"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudGradientBackground"] as! CALayer).animationForKey("cloudGradientBackgroundRefreshGradientAnim"), theLayer:(layers["cloudGradientBackground"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudGradientStroke"] as! CALayer).animationForKey("cloudGradientStrokeRefreshGradientAnim"), theLayer:(layers["cloudGradientStroke"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudUpDown"] as! CALayer).animationForKey("cloudUpDownRefreshGradientAnim"), theLayer:(layers["cloudUpDown"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudSolid"] as! CALayer).animationForKey("cloudSolidRefreshGradientAnim"), theLayer:(layers["cloudSolid"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudStatic"] as! CALayer).animationForKey("cloudStaticRefreshGradientAnim"), theLayer:(layers["cloudStatic"] as! CALayer))
		}
		else if identifier == "refreshSolid"{
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudGradient"] as! CALayer).animationForKey("cloudGradientRefreshSolidAnim"), theLayer:(layers["cloudGradient"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudUpDown"] as! CALayer).animationForKey("cloudUpDownRefreshSolidAnim"), theLayer:(layers["cloudUpDown"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudSolid"] as! CALayer).animationForKey("cloudSolidRefreshSolidAnim"), theLayer:(layers["cloudSolid"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudSolidBackground"] as! CALayer).animationForKey("cloudSolidBackgroundRefreshSolidAnim"), theLayer:(layers["cloudSolidBackground"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudSolidStroke"] as! CALayer).animationForKey("cloudSolidStrokeRefreshSolidAnim"), theLayer:(layers["cloudSolidStroke"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudStatic"] as! CALayer).animationForKey("cloudStaticRefreshSolidAnim"), theLayer:(layers["cloudStatic"] as! CALayer))
		}
		else if identifier == "refreshUpDown"{
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudGradient"] as! CALayer).animationForKey("cloudGradientRefreshUpDownAnim"), theLayer:(layers["cloudGradient"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudUpDown"] as! CALayer).animationForKey("cloudUpDownRefreshUpDownAnim"), theLayer:(layers["cloudUpDown"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudUpDownBackground"] as! CALayer).animationForKey("cloudUpDownBackgroundRefreshUpDownAnim"), theLayer:(layers["cloudUpDownBackground"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudSolid"] as! CALayer).animationForKey("cloudSolidRefreshUpDownAnim"), theLayer:(layers["cloudSolid"] as! CALayer))
			QCMethod.updateValueFromPresentationLayerForAnimation((layers["cloudStatic"] as! CALayer).animationForKey("cloudStaticRefreshUpDownAnim"), theLayer:(layers["cloudStatic"] as! CALayer))
		}
	}
	
	func removeAnimationsForAnimationId(identifier: String){
		if identifier == "refreshGradient"{
			(layers["cloudGradient"] as! CALayer).removeAnimationForKey("cloudGradientRefreshGradientAnim")
			(layers["cloudGradientBackground"] as! CALayer).removeAnimationForKey("cloudGradientBackgroundRefreshGradientAnim")
			(layers["cloudGradientStroke"] as! CALayer).removeAnimationForKey("cloudGradientStrokeRefreshGradientAnim")
			(layers["cloudUpDown"] as! CALayer).removeAnimationForKey("cloudUpDownRefreshGradientAnim")
			(layers["cloudSolid"] as! CALayer).removeAnimationForKey("cloudSolidRefreshGradientAnim")
			(layers["cloudStatic"] as! CALayer).removeAnimationForKey("cloudStaticRefreshGradientAnim")
		}
		else if identifier == "refreshSolid"{
			(layers["cloudGradient"] as! CALayer).removeAnimationForKey("cloudGradientRefreshSolidAnim")
			(layers["cloudUpDown"] as! CALayer).removeAnimationForKey("cloudUpDownRefreshSolidAnim")
			(layers["cloudSolid"] as! CALayer).removeAnimationForKey("cloudSolidRefreshSolidAnim")
			(layers["cloudSolidBackground"] as! CALayer).removeAnimationForKey("cloudSolidBackgroundRefreshSolidAnim")
			(layers["cloudSolidStroke"] as! CALayer).removeAnimationForKey("cloudSolidStrokeRefreshSolidAnim")
			(layers["cloudStatic"] as! CALayer).removeAnimationForKey("cloudStaticRefreshSolidAnim")
		}
		else if identifier == "refreshUpDown"{
			(layers["cloudGradient"] as! CALayer).removeAnimationForKey("cloudGradientRefreshUpDownAnim")
			(layers["cloudUpDown"] as! CALayer).removeAnimationForKey("cloudUpDownRefreshUpDownAnim")
			(layers["cloudUpDownBackground"] as! CALayer).removeAnimationForKey("cloudUpDownBackgroundRefreshUpDownAnim")
			(layers["cloudSolid"] as! CALayer).removeAnimationForKey("cloudSolidRefreshUpDownAnim")
			(layers["cloudStatic"] as! CALayer).removeAnimationForKey("cloudStaticRefreshUpDownAnim")
		}
	}
	
	func removeAllAnimations(){
		for layer in layers.values{
			(layer as! CALayer).removeAllAnimations()
		}
	}
	
	//MARK: - Bezier Path
	
	func cloudGradientBackgroundPathWithBounds(bound: CGRect) -> UIBezierPath{
		let cloudGradientBackgroundPath = UIBezierPath()
		let minX = CGFloat(bound.minX), minY = bound.minY, w = bound.width, h = bound.height;
		
		cloudGradientBackgroundPath.moveToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudGradientBackgroundPath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudGradientBackgroundPath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.35188 * w, minY + 0.79494 * h), controlPoint1:CGPointMake(minX + 0.2573 * w, minY + h), controlPoint2:CGPointMake(minX + 0.31433 * w, minY + 0.9038 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.51599 * w, minY + 0.34937 * h), controlPoint1:CGPointMake(minX + 0.3936 * w, minY + 0.67595 * h), controlPoint2:CGPointMake(minX + 0.49652 * w, minY + 0.39241 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.62587 * w, minY + 0.21266 * h), controlPoint1:CGPointMake(minX + 0.53686 * w, minY + 0.2962 * h), controlPoint2:CGPointMake(minX + 0.57858 * w, minY + 0.23544 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.5146 * w, minY + 0.03544 * h), controlPoint1:CGPointMake(minX + 0.60083 * w, minY + 0.13671 * h), controlPoint2:CGPointMake(minX + 0.56328 * w, minY + 0.07342 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.41864 * w, minY), controlPoint1:CGPointMake(minX + 0.48261 * w, minY + 0.01013 * h), controlPoint2:CGPointMake(minX + 0.45063 * w, minY))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.19611 * w, minY + 0.26582 * h), controlPoint1:CGPointMake(minX + 0.32406 * w, minY), controlPoint2:CGPointMake(minX + 0.23505 * w, minY + 0.09873 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.19054 * w, minY + 0.28861 * h), controlPoint2:CGPointMake(minX + 0.18637 * w, minY + 0.31392 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.0153 * w, minY + 0.53671 * h), controlPoint1:CGPointMake(minX + 0.11127 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.04451 * w, minY + 0.41013 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX, minY + 0.66835 * h), controlPoint1:CGPointMake(minX + 0.00556 * w, minY + 0.57975 * h), controlPoint2:CGPointMake(minX, minY + 0.62532 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.10987 * w, minY + 0.97215 * h), controlPoint1:CGPointMake(minX, minY + 0.79747 * h), controlPoint2:CGPointMake(minX + 0.04172 * w, minY + 0.91899 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.17803 * w, minY + h), controlPoint1:CGPointMake(minX + 0.13074 * w, minY + 0.98987 * h), controlPoint2:CGPointMake(minX + 0.15438 * w, minY + 0.99747 * h))
		cloudGradientBackgroundPath.addLineToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudGradientBackgroundPath.closePath()
		cloudGradientBackgroundPath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudGradientBackgroundPath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudGradientBackgroundPath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.89569 * w, minY + 0.56962 * h), controlPoint1:CGPointMake(minX + 0.91794 * w, minY + 0.57722 * h), controlPoint2:CGPointMake(minX + 0.90682 * w, minY + 0.57215 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.78164 * w, minY + 0.31392 * h), controlPoint1:CGPointMake(minX + 0.88317 * w, minY + 0.46076 * h), controlPoint2:CGPointMake(minX + 0.84284 * w, minY + 0.36203 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.70376 * w, minY + 0.28354 * h), controlPoint1:CGPointMake(minX + 0.75661 * w, minY + 0.29367 * h), controlPoint2:CGPointMake(minX + 0.73018 * w, minY + 0.28354 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.68428 * w, minY + 0.28354 * h), controlPoint2:CGPointMake(minX + 0.6662 * w, minY + 0.28861 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint2:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h), controlPoint1:CGPointMake(minX + 0.59944 * w, minY + 0.32405 * h), controlPoint2:CGPointMake(minX + 0.57163 * w, minY + 0.37468 * h))
		cloudGradientBackgroundPath.addLineToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h))
		cloudGradientBackgroundPath.addLineToPoint(CGPointMake(minX + 0.4548 * w, minY + 0.6962 * h))
		cloudGradientBackgroundPath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudGradientBackgroundPath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.32823 * w, minY + h), controlPoint1:CGPointMake(minX + 0.363 * w, minY + 0.94177 * h), controlPoint2:CGPointMake(minX + 0.34771 * w, minY + 0.97468 * h))
		cloudGradientBackgroundPath.addLineToPoint(CGPointMake(minX + 0.89291 * w, minY + h))
		cloudGradientBackgroundPath.addLineToPoint(CGPointMake(minX + 0.8943 * w, minY + h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.99026 * w, minY + 0.86835 * h), controlPoint1:CGPointMake(minX + 0.93602 * w, minY + 0.99241 * h), controlPoint2:CGPointMake(minX + 0.97357 * w, minY + 0.94177 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + w, minY + 0.78228 * h), controlPoint1:CGPointMake(minX + 0.99722 * w, minY + 0.84051 * h), controlPoint2:CGPointMake(minX + w, minY + 0.81266 * h))
		cloudGradientBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h), controlPoint1:CGPointMake(minX + w, minY + 0.69873 * h), controlPoint2:CGPointMake(minX + 0.97218 * w, minY + 0.62025 * h))
		cloudGradientBackgroundPath.closePath()
		cloudGradientBackgroundPath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		
		return cloudGradientBackgroundPath
	}
	
	func cloudGradientStrokePathWithBounds(bound: CGRect) -> UIBezierPath{
		let cloudGradientStrokePath = UIBezierPath()
		let minX = CGFloat(bound.minX), minY = bound.minY, w = bound.width, h = bound.height;
		
		cloudGradientStrokePath.moveToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudGradientStrokePath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudGradientStrokePath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.35188 * w, minY + 0.79494 * h), controlPoint1:CGPointMake(minX + 0.2573 * w, minY + h), controlPoint2:CGPointMake(minX + 0.31433 * w, minY + 0.9038 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.51599 * w, minY + 0.34937 * h), controlPoint1:CGPointMake(minX + 0.3936 * w, minY + 0.67595 * h), controlPoint2:CGPointMake(minX + 0.49652 * w, minY + 0.39241 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.62587 * w, minY + 0.21266 * h), controlPoint1:CGPointMake(minX + 0.53686 * w, minY + 0.2962 * h), controlPoint2:CGPointMake(minX + 0.57858 * w, minY + 0.23544 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.5146 * w, minY + 0.03544 * h), controlPoint1:CGPointMake(minX + 0.60083 * w, minY + 0.13671 * h), controlPoint2:CGPointMake(minX + 0.56328 * w, minY + 0.07342 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.41864 * w, minY), controlPoint1:CGPointMake(minX + 0.48261 * w, minY + 0.01013 * h), controlPoint2:CGPointMake(minX + 0.45063 * w, minY))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.19611 * w, minY + 0.26582 * h), controlPoint1:CGPointMake(minX + 0.32406 * w, minY), controlPoint2:CGPointMake(minX + 0.23505 * w, minY + 0.09873 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.19054 * w, minY + 0.28861 * h), controlPoint2:CGPointMake(minX + 0.18637 * w, minY + 0.31392 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.0153 * w, minY + 0.53671 * h), controlPoint1:CGPointMake(minX + 0.11127 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.04451 * w, minY + 0.41013 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX, minY + 0.66835 * h), controlPoint1:CGPointMake(minX + 0.00556 * w, minY + 0.57975 * h), controlPoint2:CGPointMake(minX, minY + 0.62532 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.10987 * w, minY + 0.97215 * h), controlPoint1:CGPointMake(minX, minY + 0.79747 * h), controlPoint2:CGPointMake(minX + 0.04172 * w, minY + 0.91899 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.17803 * w, minY + h), controlPoint1:CGPointMake(minX + 0.13074 * w, minY + 0.98987 * h), controlPoint2:CGPointMake(minX + 0.15438 * w, minY + 0.99747 * h))
		cloudGradientStrokePath.addLineToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudGradientStrokePath.closePath()
		cloudGradientStrokePath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudGradientStrokePath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudGradientStrokePath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.89569 * w, minY + 0.56962 * h), controlPoint1:CGPointMake(minX + 0.91794 * w, minY + 0.57722 * h), controlPoint2:CGPointMake(minX + 0.90682 * w, minY + 0.57215 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.78164 * w, minY + 0.31392 * h), controlPoint1:CGPointMake(minX + 0.88317 * w, minY + 0.46076 * h), controlPoint2:CGPointMake(minX + 0.84284 * w, minY + 0.36203 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.70376 * w, minY + 0.28354 * h), controlPoint1:CGPointMake(minX + 0.75661 * w, minY + 0.29367 * h), controlPoint2:CGPointMake(minX + 0.73018 * w, minY + 0.28354 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.68428 * w, minY + 0.28354 * h), controlPoint2:CGPointMake(minX + 0.6662 * w, minY + 0.28861 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint2:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h), controlPoint1:CGPointMake(minX + 0.59944 * w, minY + 0.32405 * h), controlPoint2:CGPointMake(minX + 0.57163 * w, minY + 0.37468 * h))
		cloudGradientStrokePath.addLineToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h))
		cloudGradientStrokePath.addLineToPoint(CGPointMake(minX + 0.4548 * w, minY + 0.6962 * h))
		cloudGradientStrokePath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudGradientStrokePath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.32823 * w, minY + h), controlPoint1:CGPointMake(minX + 0.363 * w, minY + 0.94177 * h), controlPoint2:CGPointMake(minX + 0.34771 * w, minY + 0.97468 * h))
		cloudGradientStrokePath.addLineToPoint(CGPointMake(minX + 0.89291 * w, minY + h))
		cloudGradientStrokePath.addLineToPoint(CGPointMake(minX + 0.8943 * w, minY + h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.99026 * w, minY + 0.86835 * h), controlPoint1:CGPointMake(minX + 0.93602 * w, minY + 0.99241 * h), controlPoint2:CGPointMake(minX + 0.97357 * w, minY + 0.94177 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + w, minY + 0.78228 * h), controlPoint1:CGPointMake(minX + 0.99722 * w, minY + 0.84051 * h), controlPoint2:CGPointMake(minX + w, minY + 0.81266 * h))
		cloudGradientStrokePath.addCurveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h), controlPoint1:CGPointMake(minX + w, minY + 0.69873 * h), controlPoint2:CGPointMake(minX + 0.97218 * w, minY + 0.62025 * h))
		cloudGradientStrokePath.closePath()
		cloudGradientStrokePath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		
		return cloudGradientStrokePath
	}
	
	func cloudUpDownBackgroundPathWithBounds(bound: CGRect) -> UIBezierPath{
		let cloudUpDownBackgroundPath = UIBezierPath()
		let minX = CGFloat(bound.minX), minY = bound.minY, w = bound.width, h = bound.height;
		
		cloudUpDownBackgroundPath.moveToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudUpDownBackgroundPath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudUpDownBackgroundPath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.35188 * w, minY + 0.79494 * h), controlPoint1:CGPointMake(minX + 0.2573 * w, minY + h), controlPoint2:CGPointMake(minX + 0.31433 * w, minY + 0.9038 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.51599 * w, minY + 0.34937 * h), controlPoint1:CGPointMake(minX + 0.3936 * w, minY + 0.67595 * h), controlPoint2:CGPointMake(minX + 0.49652 * w, minY + 0.39241 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.62587 * w, minY + 0.21266 * h), controlPoint1:CGPointMake(minX + 0.53686 * w, minY + 0.2962 * h), controlPoint2:CGPointMake(minX + 0.57858 * w, minY + 0.23544 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.5146 * w, minY + 0.03544 * h), controlPoint1:CGPointMake(minX + 0.60083 * w, minY + 0.13671 * h), controlPoint2:CGPointMake(minX + 0.56328 * w, minY + 0.07342 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.41864 * w, minY), controlPoint1:CGPointMake(minX + 0.48261 * w, minY + 0.01013 * h), controlPoint2:CGPointMake(minX + 0.45063 * w, minY))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.19611 * w, minY + 0.26582 * h), controlPoint1:CGPointMake(minX + 0.32406 * w, minY), controlPoint2:CGPointMake(minX + 0.23505 * w, minY + 0.09873 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.19054 * w, minY + 0.28861 * h), controlPoint2:CGPointMake(minX + 0.18637 * w, minY + 0.31392 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.0153 * w, minY + 0.53671 * h), controlPoint1:CGPointMake(minX + 0.11127 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.04451 * w, minY + 0.41013 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX, minY + 0.66835 * h), controlPoint1:CGPointMake(minX + 0.00556 * w, minY + 0.57975 * h), controlPoint2:CGPointMake(minX, minY + 0.62532 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.10987 * w, minY + 0.97215 * h), controlPoint1:CGPointMake(minX, minY + 0.79747 * h), controlPoint2:CGPointMake(minX + 0.04172 * w, minY + 0.91899 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.17803 * w, minY + h), controlPoint1:CGPointMake(minX + 0.13074 * w, minY + 0.98987 * h), controlPoint2:CGPointMake(minX + 0.15438 * w, minY + 0.99747 * h))
		cloudUpDownBackgroundPath.addLineToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudUpDownBackgroundPath.closePath()
		cloudUpDownBackgroundPath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudUpDownBackgroundPath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudUpDownBackgroundPath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.89569 * w, minY + 0.56962 * h), controlPoint1:CGPointMake(minX + 0.91794 * w, minY + 0.57722 * h), controlPoint2:CGPointMake(minX + 0.90682 * w, minY + 0.57215 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.78164 * w, minY + 0.31392 * h), controlPoint1:CGPointMake(minX + 0.88317 * w, minY + 0.46076 * h), controlPoint2:CGPointMake(minX + 0.84284 * w, minY + 0.36203 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.70376 * w, minY + 0.28354 * h), controlPoint1:CGPointMake(minX + 0.75661 * w, minY + 0.29367 * h), controlPoint2:CGPointMake(minX + 0.73018 * w, minY + 0.28354 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.68428 * w, minY + 0.28354 * h), controlPoint2:CGPointMake(minX + 0.6662 * w, minY + 0.28861 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint2:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h), controlPoint1:CGPointMake(minX + 0.59944 * w, minY + 0.32405 * h), controlPoint2:CGPointMake(minX + 0.57163 * w, minY + 0.37468 * h))
		cloudUpDownBackgroundPath.addLineToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h))
		cloudUpDownBackgroundPath.addLineToPoint(CGPointMake(minX + 0.4548 * w, minY + 0.6962 * h))
		cloudUpDownBackgroundPath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudUpDownBackgroundPath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.32823 * w, minY + h), controlPoint1:CGPointMake(minX + 0.363 * w, minY + 0.94177 * h), controlPoint2:CGPointMake(minX + 0.34771 * w, minY + 0.97468 * h))
		cloudUpDownBackgroundPath.addLineToPoint(CGPointMake(minX + 0.89291 * w, minY + h))
		cloudUpDownBackgroundPath.addLineToPoint(CGPointMake(minX + 0.8943 * w, minY + h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.99026 * w, minY + 0.86835 * h), controlPoint1:CGPointMake(minX + 0.93602 * w, minY + 0.99241 * h), controlPoint2:CGPointMake(minX + 0.97357 * w, minY + 0.94177 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + w, minY + 0.78228 * h), controlPoint1:CGPointMake(minX + 0.99722 * w, minY + 0.84051 * h), controlPoint2:CGPointMake(minX + w, minY + 0.81266 * h))
		cloudUpDownBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h), controlPoint1:CGPointMake(minX + w, minY + 0.69873 * h), controlPoint2:CGPointMake(minX + 0.97218 * w, minY + 0.62025 * h))
		cloudUpDownBackgroundPath.closePath()
		cloudUpDownBackgroundPath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		
		return cloudUpDownBackgroundPath
	}
	
	func cloudUpDownStrokePathWithBounds(bound: CGRect) -> UIBezierPath{
		let cloudUpDownStrokePath = UIBezierPath()
		let minX = CGFloat(bound.minX), minY = bound.minY, w = bound.width, h = bound.height;
		
		cloudUpDownStrokePath.moveToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudUpDownStrokePath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudUpDownStrokePath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.35188 * w, minY + 0.79494 * h), controlPoint1:CGPointMake(minX + 0.2573 * w, minY + h), controlPoint2:CGPointMake(minX + 0.31433 * w, minY + 0.9038 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.51599 * w, minY + 0.34937 * h), controlPoint1:CGPointMake(minX + 0.3936 * w, minY + 0.67595 * h), controlPoint2:CGPointMake(minX + 0.49652 * w, minY + 0.39241 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.62587 * w, minY + 0.21266 * h), controlPoint1:CGPointMake(minX + 0.53686 * w, minY + 0.2962 * h), controlPoint2:CGPointMake(minX + 0.57858 * w, minY + 0.23544 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.5146 * w, minY + 0.03544 * h), controlPoint1:CGPointMake(minX + 0.60083 * w, minY + 0.13671 * h), controlPoint2:CGPointMake(minX + 0.56328 * w, minY + 0.07342 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.41864 * w, minY), controlPoint1:CGPointMake(minX + 0.48261 * w, minY + 0.01013 * h), controlPoint2:CGPointMake(minX + 0.45063 * w, minY))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.19611 * w, minY + 0.26582 * h), controlPoint1:CGPointMake(minX + 0.32406 * w, minY), controlPoint2:CGPointMake(minX + 0.23505 * w, minY + 0.09873 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.19054 * w, minY + 0.28861 * h), controlPoint2:CGPointMake(minX + 0.18637 * w, minY + 0.31392 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.0153 * w, minY + 0.53671 * h), controlPoint1:CGPointMake(minX + 0.11127 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.04451 * w, minY + 0.41013 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX, minY + 0.66835 * h), controlPoint1:CGPointMake(minX + 0.00556 * w, minY + 0.57975 * h), controlPoint2:CGPointMake(minX, minY + 0.62532 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.10987 * w, minY + 0.97215 * h), controlPoint1:CGPointMake(minX, minY + 0.79747 * h), controlPoint2:CGPointMake(minX + 0.04172 * w, minY + 0.91899 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.17803 * w, minY + h), controlPoint1:CGPointMake(minX + 0.13074 * w, minY + 0.98987 * h), controlPoint2:CGPointMake(minX + 0.15438 * w, minY + 0.99747 * h))
		cloudUpDownStrokePath.addLineToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudUpDownStrokePath.closePath()
		cloudUpDownStrokePath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudUpDownStrokePath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudUpDownStrokePath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.89569 * w, minY + 0.56962 * h), controlPoint1:CGPointMake(minX + 0.91794 * w, minY + 0.57722 * h), controlPoint2:CGPointMake(minX + 0.90682 * w, minY + 0.57215 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.78164 * w, minY + 0.31392 * h), controlPoint1:CGPointMake(minX + 0.88317 * w, minY + 0.46076 * h), controlPoint2:CGPointMake(minX + 0.84284 * w, minY + 0.36203 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.70376 * w, minY + 0.28354 * h), controlPoint1:CGPointMake(minX + 0.75661 * w, minY + 0.29367 * h), controlPoint2:CGPointMake(minX + 0.73018 * w, minY + 0.28354 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.68428 * w, minY + 0.28354 * h), controlPoint2:CGPointMake(minX + 0.6662 * w, minY + 0.28861 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint2:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h), controlPoint1:CGPointMake(minX + 0.59944 * w, minY + 0.32405 * h), controlPoint2:CGPointMake(minX + 0.57163 * w, minY + 0.37468 * h))
		cloudUpDownStrokePath.addLineToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h))
		cloudUpDownStrokePath.addLineToPoint(CGPointMake(minX + 0.4548 * w, minY + 0.6962 * h))
		cloudUpDownStrokePath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudUpDownStrokePath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.32823 * w, minY + h), controlPoint1:CGPointMake(minX + 0.363 * w, minY + 0.94177 * h), controlPoint2:CGPointMake(minX + 0.34771 * w, minY + 0.97468 * h))
		cloudUpDownStrokePath.addLineToPoint(CGPointMake(minX + 0.89291 * w, minY + h))
		cloudUpDownStrokePath.addLineToPoint(CGPointMake(minX + 0.8943 * w, minY + h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.99026 * w, minY + 0.86835 * h), controlPoint1:CGPointMake(minX + 0.93602 * w, minY + 0.99241 * h), controlPoint2:CGPointMake(minX + 0.97357 * w, minY + 0.94177 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + w, minY + 0.78228 * h), controlPoint1:CGPointMake(minX + 0.99722 * w, minY + 0.84051 * h), controlPoint2:CGPointMake(minX + w, minY + 0.81266 * h))
		cloudUpDownStrokePath.addCurveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h), controlPoint1:CGPointMake(minX + w, minY + 0.69873 * h), controlPoint2:CGPointMake(minX + 0.97218 * w, minY + 0.62025 * h))
		cloudUpDownStrokePath.closePath()
		cloudUpDownStrokePath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		
		return cloudUpDownStrokePath
	}
	
	func cloudSolidBackgroundPathWithBounds(bound: CGRect) -> UIBezierPath{
		let cloudSolidBackgroundPath = UIBezierPath()
		let minX = CGFloat(bound.minX), minY = bound.minY, w = bound.width, h = bound.height;
		
		cloudSolidBackgroundPath.moveToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudSolidBackgroundPath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudSolidBackgroundPath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.35188 * w, minY + 0.79494 * h), controlPoint1:CGPointMake(minX + 0.2573 * w, minY + h), controlPoint2:CGPointMake(minX + 0.31433 * w, minY + 0.9038 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.51599 * w, minY + 0.34937 * h), controlPoint1:CGPointMake(minX + 0.3936 * w, minY + 0.67595 * h), controlPoint2:CGPointMake(minX + 0.49652 * w, minY + 0.39241 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.62587 * w, minY + 0.21266 * h), controlPoint1:CGPointMake(minX + 0.53686 * w, minY + 0.2962 * h), controlPoint2:CGPointMake(minX + 0.57858 * w, minY + 0.23544 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.5146 * w, minY + 0.03544 * h), controlPoint1:CGPointMake(minX + 0.60083 * w, minY + 0.13671 * h), controlPoint2:CGPointMake(minX + 0.56328 * w, minY + 0.07342 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.41864 * w, minY), controlPoint1:CGPointMake(minX + 0.48261 * w, minY + 0.01013 * h), controlPoint2:CGPointMake(minX + 0.45063 * w, minY))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.19611 * w, minY + 0.26582 * h), controlPoint1:CGPointMake(minX + 0.32406 * w, minY), controlPoint2:CGPointMake(minX + 0.23505 * w, minY + 0.09873 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.19054 * w, minY + 0.28861 * h), controlPoint2:CGPointMake(minX + 0.18637 * w, minY + 0.31392 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.0153 * w, minY + 0.53671 * h), controlPoint1:CGPointMake(minX + 0.11127 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.04451 * w, minY + 0.41013 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX, minY + 0.66835 * h), controlPoint1:CGPointMake(minX + 0.00556 * w, minY + 0.57975 * h), controlPoint2:CGPointMake(minX, minY + 0.62532 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.10987 * w, minY + 0.97215 * h), controlPoint1:CGPointMake(minX, minY + 0.79747 * h), controlPoint2:CGPointMake(minX + 0.04172 * w, minY + 0.91899 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.17803 * w, minY + h), controlPoint1:CGPointMake(minX + 0.13074 * w, minY + 0.98987 * h), controlPoint2:CGPointMake(minX + 0.15438 * w, minY + 0.99747 * h))
		cloudSolidBackgroundPath.addLineToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudSolidBackgroundPath.closePath()
		cloudSolidBackgroundPath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudSolidBackgroundPath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudSolidBackgroundPath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.89569 * w, minY + 0.56962 * h), controlPoint1:CGPointMake(minX + 0.91794 * w, minY + 0.57722 * h), controlPoint2:CGPointMake(minX + 0.90682 * w, minY + 0.57215 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.78164 * w, minY + 0.31392 * h), controlPoint1:CGPointMake(minX + 0.88317 * w, minY + 0.46076 * h), controlPoint2:CGPointMake(minX + 0.84284 * w, minY + 0.36203 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.70376 * w, minY + 0.28354 * h), controlPoint1:CGPointMake(minX + 0.75661 * w, minY + 0.29367 * h), controlPoint2:CGPointMake(minX + 0.73018 * w, minY + 0.28354 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.68428 * w, minY + 0.28354 * h), controlPoint2:CGPointMake(minX + 0.6662 * w, minY + 0.28861 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint2:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h), controlPoint1:CGPointMake(minX + 0.59944 * w, minY + 0.32405 * h), controlPoint2:CGPointMake(minX + 0.57163 * w, minY + 0.37468 * h))
		cloudSolidBackgroundPath.addLineToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h))
		cloudSolidBackgroundPath.addLineToPoint(CGPointMake(minX + 0.4548 * w, minY + 0.6962 * h))
		cloudSolidBackgroundPath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudSolidBackgroundPath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.32823 * w, minY + h), controlPoint1:CGPointMake(minX + 0.363 * w, minY + 0.94177 * h), controlPoint2:CGPointMake(minX + 0.34771 * w, minY + 0.97468 * h))
		cloudSolidBackgroundPath.addLineToPoint(CGPointMake(minX + 0.89291 * w, minY + h))
		cloudSolidBackgroundPath.addLineToPoint(CGPointMake(minX + 0.8943 * w, minY + h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.99026 * w, minY + 0.86835 * h), controlPoint1:CGPointMake(minX + 0.93602 * w, minY + 0.99241 * h), controlPoint2:CGPointMake(minX + 0.97357 * w, minY + 0.94177 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + w, minY + 0.78228 * h), controlPoint1:CGPointMake(minX + 0.99722 * w, minY + 0.84051 * h), controlPoint2:CGPointMake(minX + w, minY + 0.81266 * h))
		cloudSolidBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h), controlPoint1:CGPointMake(minX + w, minY + 0.69873 * h), controlPoint2:CGPointMake(minX + 0.97218 * w, minY + 0.62025 * h))
		cloudSolidBackgroundPath.closePath()
		cloudSolidBackgroundPath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		
		return cloudSolidBackgroundPath
	}
	
	func cloudSolidStrokePathWithBounds(bound: CGRect) -> UIBezierPath{
		let cloudSolidStrokePath = UIBezierPath()
		let minX = CGFloat(bound.minX), minY = bound.minY, w = bound.width, h = bound.height;
		
		cloudSolidStrokePath.moveToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudSolidStrokePath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudSolidStrokePath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.35188 * w, minY + 0.79494 * h), controlPoint1:CGPointMake(minX + 0.2573 * w, minY + h), controlPoint2:CGPointMake(minX + 0.31433 * w, minY + 0.9038 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.51599 * w, minY + 0.34937 * h), controlPoint1:CGPointMake(minX + 0.3936 * w, minY + 0.67595 * h), controlPoint2:CGPointMake(minX + 0.49652 * w, minY + 0.39241 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.62587 * w, minY + 0.21266 * h), controlPoint1:CGPointMake(minX + 0.53686 * w, minY + 0.2962 * h), controlPoint2:CGPointMake(minX + 0.57858 * w, minY + 0.23544 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.5146 * w, minY + 0.03544 * h), controlPoint1:CGPointMake(minX + 0.60083 * w, minY + 0.13671 * h), controlPoint2:CGPointMake(minX + 0.56328 * w, minY + 0.07342 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.41864 * w, minY), controlPoint1:CGPointMake(minX + 0.48261 * w, minY + 0.01013 * h), controlPoint2:CGPointMake(minX + 0.45063 * w, minY))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.19611 * w, minY + 0.26582 * h), controlPoint1:CGPointMake(minX + 0.32406 * w, minY), controlPoint2:CGPointMake(minX + 0.23505 * w, minY + 0.09873 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.19054 * w, minY + 0.28861 * h), controlPoint2:CGPointMake(minX + 0.18637 * w, minY + 0.31392 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.0153 * w, minY + 0.53671 * h), controlPoint1:CGPointMake(minX + 0.11127 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.04451 * w, minY + 0.41013 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX, minY + 0.66835 * h), controlPoint1:CGPointMake(minX + 0.00556 * w, minY + 0.57975 * h), controlPoint2:CGPointMake(minX, minY + 0.62532 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.10987 * w, minY + 0.97215 * h), controlPoint1:CGPointMake(minX, minY + 0.79747 * h), controlPoint2:CGPointMake(minX + 0.04172 * w, minY + 0.91899 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.17803 * w, minY + h), controlPoint1:CGPointMake(minX + 0.13074 * w, minY + 0.98987 * h), controlPoint2:CGPointMake(minX + 0.15438 * w, minY + 0.99747 * h))
		cloudSolidStrokePath.addLineToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudSolidStrokePath.closePath()
		cloudSolidStrokePath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudSolidStrokePath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudSolidStrokePath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.89569 * w, minY + 0.56962 * h), controlPoint1:CGPointMake(minX + 0.91794 * w, minY + 0.57722 * h), controlPoint2:CGPointMake(minX + 0.90682 * w, minY + 0.57215 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.78164 * w, minY + 0.31392 * h), controlPoint1:CGPointMake(minX + 0.88317 * w, minY + 0.46076 * h), controlPoint2:CGPointMake(minX + 0.84284 * w, minY + 0.36203 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.70376 * w, minY + 0.28354 * h), controlPoint1:CGPointMake(minX + 0.75661 * w, minY + 0.29367 * h), controlPoint2:CGPointMake(minX + 0.73018 * w, minY + 0.28354 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.68428 * w, minY + 0.28354 * h), controlPoint2:CGPointMake(minX + 0.6662 * w, minY + 0.28861 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint2:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h), controlPoint1:CGPointMake(minX + 0.59944 * w, minY + 0.32405 * h), controlPoint2:CGPointMake(minX + 0.57163 * w, minY + 0.37468 * h))
		cloudSolidStrokePath.addLineToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h))
		cloudSolidStrokePath.addLineToPoint(CGPointMake(minX + 0.4548 * w, minY + 0.6962 * h))
		cloudSolidStrokePath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudSolidStrokePath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.32823 * w, minY + h), controlPoint1:CGPointMake(minX + 0.363 * w, minY + 0.94177 * h), controlPoint2:CGPointMake(minX + 0.34771 * w, minY + 0.97468 * h))
		cloudSolidStrokePath.addLineToPoint(CGPointMake(minX + 0.89291 * w, minY + h))
		cloudSolidStrokePath.addLineToPoint(CGPointMake(minX + 0.8943 * w, minY + h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.99026 * w, minY + 0.86835 * h), controlPoint1:CGPointMake(minX + 0.93602 * w, minY + 0.99241 * h), controlPoint2:CGPointMake(minX + 0.97357 * w, minY + 0.94177 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + w, minY + 0.78228 * h), controlPoint1:CGPointMake(minX + 0.99722 * w, minY + 0.84051 * h), controlPoint2:CGPointMake(minX + w, minY + 0.81266 * h))
		cloudSolidStrokePath.addCurveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h), controlPoint1:CGPointMake(minX + w, minY + 0.69873 * h), controlPoint2:CGPointMake(minX + 0.97218 * w, minY + 0.62025 * h))
		cloudSolidStrokePath.closePath()
		cloudSolidStrokePath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		
		return cloudSolidStrokePath
	}
	
	func cloudStaticBackgroundPathWithBounds(bound: CGRect) -> UIBezierPath{
		let cloudStaticBackgroundPath = UIBezierPath()
		let minX = CGFloat(bound.minX), minY = bound.minY, w = bound.width, h = bound.height;
		
		cloudStaticBackgroundPath.moveToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudStaticBackgroundPath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudStaticBackgroundPath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.35188 * w, minY + 0.79494 * h), controlPoint1:CGPointMake(minX + 0.2573 * w, minY + h), controlPoint2:CGPointMake(minX + 0.31433 * w, minY + 0.9038 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.51599 * w, minY + 0.34937 * h), controlPoint1:CGPointMake(minX + 0.3936 * w, minY + 0.67595 * h), controlPoint2:CGPointMake(minX + 0.49652 * w, minY + 0.39241 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.62587 * w, minY + 0.21266 * h), controlPoint1:CGPointMake(minX + 0.53686 * w, minY + 0.2962 * h), controlPoint2:CGPointMake(minX + 0.57858 * w, minY + 0.23544 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.5146 * w, minY + 0.03544 * h), controlPoint1:CGPointMake(minX + 0.60083 * w, minY + 0.13671 * h), controlPoint2:CGPointMake(minX + 0.56328 * w, minY + 0.07342 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.41864 * w, minY), controlPoint1:CGPointMake(minX + 0.48261 * w, minY + 0.01013 * h), controlPoint2:CGPointMake(minX + 0.45063 * w, minY))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.19611 * w, minY + 0.26582 * h), controlPoint1:CGPointMake(minX + 0.32406 * w, minY), controlPoint2:CGPointMake(minX + 0.23505 * w, minY + 0.09873 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.19054 * w, minY + 0.28861 * h), controlPoint2:CGPointMake(minX + 0.18637 * w, minY + 0.31392 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.0153 * w, minY + 0.53671 * h), controlPoint1:CGPointMake(minX + 0.11127 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.04451 * w, minY + 0.41013 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX, minY + 0.66835 * h), controlPoint1:CGPointMake(minX + 0.00556 * w, minY + 0.57975 * h), controlPoint2:CGPointMake(minX, minY + 0.62532 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.10987 * w, minY + 0.97215 * h), controlPoint1:CGPointMake(minX, minY + 0.79747 * h), controlPoint2:CGPointMake(minX + 0.04172 * w, minY + 0.91899 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.17803 * w, minY + h), controlPoint1:CGPointMake(minX + 0.13074 * w, minY + 0.98987 * h), controlPoint2:CGPointMake(minX + 0.15438 * w, minY + 0.99747 * h))
		cloudStaticBackgroundPath.addLineToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudStaticBackgroundPath.closePath()
		cloudStaticBackgroundPath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudStaticBackgroundPath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudStaticBackgroundPath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.89569 * w, minY + 0.56962 * h), controlPoint1:CGPointMake(minX + 0.91794 * w, minY + 0.57722 * h), controlPoint2:CGPointMake(minX + 0.90682 * w, minY + 0.57215 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.78164 * w, minY + 0.31392 * h), controlPoint1:CGPointMake(minX + 0.88317 * w, minY + 0.46076 * h), controlPoint2:CGPointMake(minX + 0.84284 * w, minY + 0.36203 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.70376 * w, minY + 0.28354 * h), controlPoint1:CGPointMake(minX + 0.75661 * w, minY + 0.29367 * h), controlPoint2:CGPointMake(minX + 0.73018 * w, minY + 0.28354 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.68428 * w, minY + 0.28354 * h), controlPoint2:CGPointMake(minX + 0.6662 * w, minY + 0.28861 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint2:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h), controlPoint1:CGPointMake(minX + 0.59944 * w, minY + 0.32405 * h), controlPoint2:CGPointMake(minX + 0.57163 * w, minY + 0.37468 * h))
		cloudStaticBackgroundPath.addLineToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h))
		cloudStaticBackgroundPath.addLineToPoint(CGPointMake(minX + 0.4548 * w, minY + 0.6962 * h))
		cloudStaticBackgroundPath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudStaticBackgroundPath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.32823 * w, minY + h), controlPoint1:CGPointMake(minX + 0.363 * w, minY + 0.94177 * h), controlPoint2:CGPointMake(minX + 0.34771 * w, minY + 0.97468 * h))
		cloudStaticBackgroundPath.addLineToPoint(CGPointMake(minX + 0.89291 * w, minY + h))
		cloudStaticBackgroundPath.addLineToPoint(CGPointMake(minX + 0.8943 * w, minY + h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.99026 * w, minY + 0.86835 * h), controlPoint1:CGPointMake(minX + 0.93602 * w, minY + 0.99241 * h), controlPoint2:CGPointMake(minX + 0.97357 * w, minY + 0.94177 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + w, minY + 0.78228 * h), controlPoint1:CGPointMake(minX + 0.99722 * w, minY + 0.84051 * h), controlPoint2:CGPointMake(minX + w, minY + 0.81266 * h))
		cloudStaticBackgroundPath.addCurveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h), controlPoint1:CGPointMake(minX + w, minY + 0.69873 * h), controlPoint2:CGPointMake(minX + 0.97218 * w, minY + 0.62025 * h))
		cloudStaticBackgroundPath.closePath()
		cloudStaticBackgroundPath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		
		return cloudStaticBackgroundPath
	}
	
	func cloudStaticStrokePathWithBounds(bound: CGRect) -> UIBezierPath{
		let cloudStaticStrokePath = UIBezierPath()
		let minX = CGFloat(bound.minX), minY = bound.minY, w = bound.width, h = bound.height;
		
		cloudStaticStrokePath.moveToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudStaticStrokePath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudStaticStrokePath.addLineToPoint(CGPointMake(minX + 0.1822 * w, minY + h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.35188 * w, minY + 0.79494 * h), controlPoint1:CGPointMake(minX + 0.2573 * w, minY + h), controlPoint2:CGPointMake(minX + 0.31433 * w, minY + 0.9038 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.51599 * w, minY + 0.34937 * h), controlPoint1:CGPointMake(minX + 0.3936 * w, minY + 0.67595 * h), controlPoint2:CGPointMake(minX + 0.49652 * w, minY + 0.39241 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.62587 * w, minY + 0.21266 * h), controlPoint1:CGPointMake(minX + 0.53686 * w, minY + 0.2962 * h), controlPoint2:CGPointMake(minX + 0.57858 * w, minY + 0.23544 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.5146 * w, minY + 0.03544 * h), controlPoint1:CGPointMake(minX + 0.60083 * w, minY + 0.13671 * h), controlPoint2:CGPointMake(minX + 0.56328 * w, minY + 0.07342 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.41864 * w, minY), controlPoint1:CGPointMake(minX + 0.48261 * w, minY + 0.01013 * h), controlPoint2:CGPointMake(minX + 0.45063 * w, minY))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.19611 * w, minY + 0.26582 * h), controlPoint1:CGPointMake(minX + 0.32406 * w, minY), controlPoint2:CGPointMake(minX + 0.23505 * w, minY + 0.09873 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.19054 * w, minY + 0.28861 * h), controlPoint2:CGPointMake(minX + 0.18637 * w, minY + 0.31392 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h), controlPoint1:CGPointMake(minX + 0.18359 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.1822 * w, minY + 0.33671 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.0153 * w, minY + 0.53671 * h), controlPoint1:CGPointMake(minX + 0.11127 * w, minY + 0.33671 * h), controlPoint2:CGPointMake(minX + 0.04451 * w, minY + 0.41013 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX, minY + 0.66835 * h), controlPoint1:CGPointMake(minX + 0.00556 * w, minY + 0.57975 * h), controlPoint2:CGPointMake(minX, minY + 0.62532 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.10987 * w, minY + 0.97215 * h), controlPoint1:CGPointMake(minX, minY + 0.79747 * h), controlPoint2:CGPointMake(minX + 0.04172 * w, minY + 0.91899 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.17803 * w, minY + h), controlPoint1:CGPointMake(minX + 0.13074 * w, minY + 0.98987 * h), controlPoint2:CGPointMake(minX + 0.15438 * w, minY + 0.99747 * h))
		cloudStaticStrokePath.addLineToPoint(CGPointMake(minX + 0.17803 * w, minY + h))
		cloudStaticStrokePath.closePath()
		cloudStaticStrokePath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudStaticStrokePath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudStaticStrokePath.addLineToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.89569 * w, minY + 0.56962 * h), controlPoint1:CGPointMake(minX + 0.91794 * w, minY + 0.57722 * h), controlPoint2:CGPointMake(minX + 0.90682 * w, minY + 0.57215 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.78164 * w, minY + 0.31392 * h), controlPoint1:CGPointMake(minX + 0.88317 * w, minY + 0.46076 * h), controlPoint2:CGPointMake(minX + 0.84284 * w, minY + 0.36203 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.70376 * w, minY + 0.28354 * h), controlPoint1:CGPointMake(minX + 0.75661 * w, minY + 0.29367 * h), controlPoint2:CGPointMake(minX + 0.73018 * w, minY + 0.28354 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.68428 * w, minY + 0.28354 * h), controlPoint2:CGPointMake(minX + 0.6662 * w, minY + 0.28861 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint1:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h), controlPoint2:CGPointMake(minX + 0.64812 * w, minY + 0.29873 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h), controlPoint1:CGPointMake(minX + 0.59944 * w, minY + 0.32405 * h), controlPoint2:CGPointMake(minX + 0.57163 * w, minY + 0.37468 * h))
		cloudStaticStrokePath.addLineToPoint(CGPointMake(minX + 0.54798 * w, minY + 0.43797 * h))
		cloudStaticStrokePath.addLineToPoint(CGPointMake(minX + 0.4548 * w, minY + 0.6962 * h))
		cloudStaticStrokePath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudStaticStrokePath.addLineToPoint(CGPointMake(minX + 0.37691 * w, minY + 0.90886 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.32823 * w, minY + h), controlPoint1:CGPointMake(minX + 0.363 * w, minY + 0.94177 * h), controlPoint2:CGPointMake(minX + 0.34771 * w, minY + 0.97468 * h))
		cloudStaticStrokePath.addLineToPoint(CGPointMake(minX + 0.89291 * w, minY + h))
		cloudStaticStrokePath.addLineToPoint(CGPointMake(minX + 0.8943 * w, minY + h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.99026 * w, minY + 0.86835 * h), controlPoint1:CGPointMake(minX + 0.93602 * w, minY + 0.99241 * h), controlPoint2:CGPointMake(minX + 0.97357 * w, minY + 0.94177 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + w, minY + 0.78228 * h), controlPoint1:CGPointMake(minX + 0.99722 * w, minY + 0.84051 * h), controlPoint2:CGPointMake(minX + w, minY + 0.81266 * h))
		cloudStaticStrokePath.addCurveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h), controlPoint1:CGPointMake(minX + w, minY + 0.69873 * h), controlPoint2:CGPointMake(minX + 0.97218 * w, minY + 0.62025 * h))
		cloudStaticStrokePath.closePath()
		cloudStaticStrokePath.moveToPoint(CGPointMake(minX + 0.92907 * w, minY + 0.58481 * h))
		
		return cloudStaticStrokePath
	}
	
	
}
