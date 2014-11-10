//
//  ViewController.h
//  LightTableView
//
//  Created by Jakey on 14/11/10.
//  Copyright (c) 2014年 www.skyfox.org. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LightDataSource.h"
#import "LightDelegate.h"
@interface ViewController : UIViewController<UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableVIew;
//一定要声明成全局变量
@property (nonatomic, strong) LightDataSource *dataSource;
@property (nonatomic, strong) LightDelegate *delegate;

@end
