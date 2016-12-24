//
//  MyTableViewcontroller.m
//  TableViewExtension-Obj-C
//
//  Created by Duncan Champney on 12/23/16.
//  Copyright © 2016 Duncan Champney. All rights reserved.
//

#import "MyTableViewcontroller.h"
#import "UITableView_indexPathForView.h"
#import "MyTableViewCell.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
  
  cell.textLabel.text = [NSString stringWithFormat: @"Cell [%ld-%ld]", (long)indexPath.section, (long)indexPath.row];
  [cell.button addTarget: self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
}

- (void) buttonTapped: (UIButton *) sender {
  NSIndexPath *indexPath = [self.tableView indexPathForView: sender];
  NSLog(@"Button tapped at indexPath [%ld-%ld]",
        (long)indexPath.section,
        (long)indexPath.row);
}

@end
