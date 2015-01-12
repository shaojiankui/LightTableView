//
//  LightCell.m
//  LightTableView
//
//  Created by Jakey on 14/11/10.
//  Copyright (c) 2014年 www.skyfox.org. All rights reserved.
//

#import "LightCell.h"

@implementation LightCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
        // Initialization code
        UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
        lable.text =@"aweawewe";
        [self.contentView addSubview:lable];

    }
    return self;
}
- (void)configureCellData:(NSDictionary *)item
{
    self.title.text = [item objectForKey:@"title"];
    self.detail.text = [item objectForKey:@"detail"];
}

- (NSDateFormatter *)dateFormatter
{
    static NSDateFormatter *dateFormatter;
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.timeStyle = NSDateFormatterMediumStyle;
        dateFormatter.dateStyle = NSDateFormatterMediumStyle;
    }
    return dateFormatter;
}

@end
