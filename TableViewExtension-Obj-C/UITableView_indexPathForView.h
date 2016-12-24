//
//  UITableView_indexPathForView.h
//  TableViewExtension-Obj-C
//
//  Created by Duncan Champney on 12/23/16.
//  Copyright © 2016 Duncan Champney. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 This is a simple extension that adds a function `-indexPathForView` to UITableView
 */
@interface UITableView (indexPathForView)

/**
 This function finds the table view cell that contains the specified UIView object

 @param view The view to search for.
 @return The indexPath in the table view who's cell contains that view (if any) or nil.
 */

- (NSIndexPath *) indexPathForView: (UIView *) view;

@end
