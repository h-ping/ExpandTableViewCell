//
//  TableViewCell.m
//  ExpandTableViewCell
//
//  Created by zzx on 15-1-21.
//  Copyright (c) 2015年 HYP. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

+ (TableViewCell *)getMainCell:(UITableView *)tableView name:(NSString *)name index:(int)index{

    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    cell.nameLabel.text = name;
    cell.IntroductionLabel.text = @"春暖花开，冷暖自知";
    NSString *photoName = [NSString stringWithFormat:@"%d.png", index];
    cell.Headerphoto.image = [UIImage imageNamed:photoName];
    return cell;
}

@end
