//
//  TableViewCell.h
//  ExpandTableViewCell
//
//  Created by zzx on 15-1-21.
//  Copyright (c) 2015年 HYP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *IntroductionLabel;
@property (strong, nonatomic) IBOutlet UIImageView *Headerphoto;

+ (TableViewCell *)getMainCell:(UITableView *)tableView name:(NSString *)name index:(int)index;
@end
