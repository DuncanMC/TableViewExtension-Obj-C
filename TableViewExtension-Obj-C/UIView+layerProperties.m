//
//  UIView+layerProperties.m
//  iCaverns_new
//
//  Created by Duncan Champney on 6/26/15.
//  Copyright (c) 2015 WareTo. Used by mykhaelsoft with permission.
//

#import "UIView+layerProperties.h"

@implementation UIView (layerProperties)


- (UIColor *) borderColor;
{
  return [UIColor colorWithCGColor: self.layer.borderColor];
}

- (void) setBorderColor:(UIColor *)borderColor
{
  self.layer.borderColor = borderColor.CGColor;
}

- (void) setBackgroundLayerColor:(UIColor *) backgroundLayerColor
{
  self.layer.backgroundColor = backgroundLayerColor.CGColor;
}

- (UIColor *) backgroundLayerColor;
{
  return [UIColor colorWithCGColor: self.layer.backgroundColor];
}

- (void) setCornerRadius:(CGFloat)cornerRadius
{
  self.layer.cornerRadius = cornerRadius;
}

- (CGFloat) cornerRadius
{
  return self.layer.cornerRadius;
}


- (CGFloat) borderWidth;
{
  return self.layer.borderWidth;
}

- (void) setBorderWidth:(CGFloat)borderWidth;
{
  self.layer.borderWidth = borderWidth;
}

@end
