//
//  Header_View.m
//  ExpandTableViewCell
//
//  Created by zzx on 15-1-21.
//  Copyright (c) 2015年 HYP. All rights reserved.
//

#import "Header_View.h"

@implementation Header_View

- (id)initWithFrame:(CGRect)frame{

    self = [[[NSBundle mainBundle] loadNibNamed:@"Header_View" owner:self options:nil] lastObject];
    if (self) {
        self.frame = frame;
    }
    return self;
}

@end
