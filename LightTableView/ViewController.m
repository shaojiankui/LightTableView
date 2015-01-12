//
//  ViewController.m
//  LightTableView
//
//  Created by Jakey on 14/11/10.
//  Copyright (c) 2014年 www.skyfox.org. All rights reserved.
//

#import "ViewController.h"
#import "LightCell.h"
#import "LightDelegate.h"
@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self setupTableView];
    
    NSMutableArray *items = [[NSMutableArray alloc] init];
    for (int i = 0; i < 10; i++) {
        NSDictionary *item = @{@"title": @"haha",@"detail":[NSString stringWithFormat:@"item%d",i]};
        [items addObject:item];
    }
    self.dataSource.items = items;
    [self.tableView reloadData];

}

- (void)setupTableView
{
     self.dataSource = [[LightDataSource alloc] initWithCellIdentifier:@"LightCell" cellNibName:@"LightCell" configureCellBlock:^(id cell, id item) {
         [(LightCell*)cell configureCellData:item];
     }];
    
    self.delegate = [[LightDelegate alloc]init];
    [self.delegate didSelectRowAtIndexPath:^(id cell, NSIndexPath *indexPath) {
         NSLog(@"%@", [NSString stringWithFormat:@"didSelectRowAtIndexPath %zd",indexPath.row]);
    }];
    [self.delegate didDeselectRowAtIndexPath:^(id cell, NSIndexPath *indexPath) {
        NSLog(@"%@", [NSString stringWithFormat:@"didDeselectRowAtIndexPath %zd",indexPath.row]);
    }];
    [self.delegate willDisplayCell:^(id cell, NSIndexPath *indexPath) {
        NSLog(@"%@", [NSString stringWithFormat:@"willDisplayCell %zd",indexPath.row]);
    }];
    [self.delegate heightForRowAtIndexPath:^CGFloat(NSIndexPath *indexPath) {
        return 100;
    }];
     
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self.delegate;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
