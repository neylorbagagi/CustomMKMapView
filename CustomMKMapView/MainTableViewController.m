//
//  MainTableViewController.m
//  CustomMKMapView
//
//  Created by Neylor Bagagi on 12/14/15.
//  Copyright © 2015 Neylor Bagagi. All rights reserved.
//

#import "MainTableViewController.h"
#import "CustomMapView.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController{
    //MKMapView *mapView;
    CustomMapView *mapView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect mapFrame = CGRectMake(self.tableView.frame.origin.x, self.tableView.frame.origin.y,
                                self.tableView.frame.size.width, self.tableView.frame.size.height/2);
    
    //mapView = [[MKMapView alloc]initWithFrame:mapFrame];
    
    mapView = [[CustomMapView alloc]initWithFrame:mapFrame];
    [self.tableView setTableHeaderView:mapView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    [cell.textLabel setText:@"Test"];
    return cell;
}


@end
