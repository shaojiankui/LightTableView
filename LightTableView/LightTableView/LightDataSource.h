//
//  LightDataSource.h
//  Created by Jakey on 14/11/10.
//  Copyright (c) 2014年 www.skyfox.org. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^TableViewCellConfigureBlock)(id cell, id item);
@interface LightDataSource : NSObject <UITableViewDataSource>
{
    NSString *_cellIdentifier;
    Class _cellClass;
    NSString *_cellNibName;
    TableViewCellConfigureBlock _configureCellBlock;
}
@property (nonatomic, strong) NSMutableArray *items;


- (id)initWithCellIdentifier:(NSString *)aCellIdentifier
                   cellClass:(Class)aCellClass
          configureCellBlock:(void (^)(id cell, id item))aConfigureCellBlock;


- (id)initWithCellIdentifier:(NSString *)aCellIdentifier
                 cellNibName:(NSString*)nibname
          configureCellBlock:(void (^)(id cell, id item))aConfigureCellBlock;
@end
