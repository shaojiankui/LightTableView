//
//  LightDataSource.h
//  Created by Jakey on 14/11/10.
//  Copyright (c) 2014年 www.skyfox.org. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void (^TableViewCellConfigureBlock)(id cell, id item);


@interface LightDataSource : NSObject <UITableViewDataSource>
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy) NSString *cellIdentifier;
@property (nonatomic, copy) Class cellClass;
@property (nonatomic, copy) NSString *cellNibName;
@property (nonatomic, copy) TableViewCellConfigureBlock configureCellBlock;


- (id)initWithItems:(NSArray *)anItems
     cellIdentifier:(NSString *)aCellIdentifier
     cellClass:(Class)aCellClass
 configureCellBlock:(void (^)(id cell, id item))aConfigureCellBlock;


- (id)initWithItems:(NSArray *)anItems
     cellIdentifier:(NSString *)aCellIdentifier
          cellNibName:(NSString*)nibname
 configureCellBlock:(void (^)(id cell, id item))aConfigureCellBlock;
@end
