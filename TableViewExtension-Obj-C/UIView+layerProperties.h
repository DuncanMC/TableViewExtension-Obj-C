//
//  UIView+layerProperties.h
//  iCaverns_new
//
//  Created by Duncan Champney on 6/26/15.
//  Copyright (c) 2015 mykhaelsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface UIView (layerProperties)

@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, strong) IBInspectable UIColor *borderColor;
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic, strong) IBInspectable UIColor *backgroundLayerColor;


@end
