//
//  UITableView_indexPathForView.m
//  TableViewExtension-Obj-C
//
//  Created by Duncan Champney on 12/23/16.
//  Copyright © 2016 Duncan Champney. All rights reserved.
//

#import "UITableView_indexPathForView.h"

@implementation UITableView (indexPathForView)

- (NSIndexPath *) indexPathForView: (UIView *) view {
  CGPoint origin = view.bounds.origin;
  CGPoint viewOrigin = [self convertPoint: origin fromView: view];
  return [self indexPathForRowAtPoint: viewOrigin];
}

@end
