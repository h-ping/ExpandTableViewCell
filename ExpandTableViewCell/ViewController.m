//
//  ViewController.m
//  ExpandTableViewCell
//
//  Created by zzx on 15-1-21.
//  Copyright (c) 2015年 HYP. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "DetailCell.h"
#import "Header_View.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>{

    NSMutableArray *titleDataArray;
    
    NSMutableDictionary *dicSource;
    NSMutableArray *selectedArr;
    
    NSMutableArray *grouparr0;
    NSMutableArray *grouparr1;
    NSMutableArray *grouparr2;
    
    NSMutableArray *_listInsertRow;
    NSMutableArray *_listDeleteRow;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dicSource = [[NSMutableDictionary alloc] init];
    selectedArr = [[NSMutableArray alloc] init];
    titleDataArray = [[NSMutableArray alloc] initWithObjects:@"姐妹",@"家人",@"朋友", nil];
    
    NSMutableDictionary *nameAndStateDic1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"肖利",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic2 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"段婷婷",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic3 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"毛凡",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic23 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"毛凡2",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic33 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"毛凡3",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic43 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"毛凡4",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic53 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"毛凡5",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic63 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"毛凡6",@"name",@"NO",@"state",nil];
    
    grouparr0 = [[NSMutableArray alloc] initWithObjects:nameAndStateDic1,nameAndStateDic2,nameAndStateDic3,nameAndStateDic23,nameAndStateDic33,nameAndStateDic43,nameAndStateDic53,nameAndStateDic63, nil];
    
    NSMutableDictionary *nameAndStateDic4 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"晨晨姐",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic5 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"李涛",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic6 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"海波",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"张敏",@"name",@"NO",@"state",nil];
    
    grouparr1 = [[NSMutableArray alloc]initWithObjects:nameAndStateDic4,nameAndStateDic5,nameAndStateDic6,nameAndStateDic7, nil];
    
    NSMutableDictionary *nameAndStateDic8 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"杨浩",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic9 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"小明",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic10 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"洋洋",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic11 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"赵蒙",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic12 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"小催",@"name",@"NO",@"state",nil];
    NSMutableDictionary *nameAndStateDic13 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"MainCell",@"cell",@"和平",@"name",@"NO",@"state",nil];
    
    grouparr2 = [[NSMutableArray alloc]initWithObjects:nameAndStateDic8,nameAndStateDic9,nameAndStateDic10,nameAndStateDic11,nameAndStateDic12,nameAndStateDic13,nil];
    
    [dicSource setValue:grouparr0 forKey:@"0"];
    [dicSource setValue:grouparr1 forKey:@"1"];
    [dicSource setValue:grouparr2 forKey:@"2"];
    
    [self.myTableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return titleDataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSString *string = [NSString stringWithFormat:@"%d", (int)section];
    
    if ([selectedArr containsObject:string]) {
        NSArray *array = dicSource[string];
        return array.count;
    }
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 40;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.2;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{

    Header_View *headerView = [[Header_View alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 30)];
    [headerView.button addTarget:self action:@selector(doButton:) forControlEvents:UIControlEventTouchUpInside];
    headerView.titleLabel.text = titleDataArray[section];
    headerView.button.tag = 100+section;
    
    NSString *string = [NSString stringWithFormat:@"%d", (int)section];
    if ([selectedArr containsObject:string]) {
        headerView.imageView.image = [UIImage imageNamed:@"buddy_header_arrow_down@2x.png"];
    }
    else
    {
        headerView.imageView.image = [UIImage imageNamed:@"buddy_header_arrow_right@2x.png"];
    }
    return headerView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *indexStr = [NSString stringWithFormat:@"%d", (int)indexPath.section];
    
    if ([dicSource[indexStr][indexPath.row][@"cell"] isEqualToString:@"MainCell"])
    {
        return 60;
    }
    else
        return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *indexStr = [NSString stringWithFormat:@"%d", (int)indexPath.section];
    
    if ([dicSource[indexStr][indexPath.row][@"cell"] isEqualToString:@"MainCell"]) {
        TableViewCell *cell =[TableViewCell getMainCell:tableView name:dicSource[indexStr][indexPath.row][@"name"] index:(int)indexPath.row];
        return cell;
    }
    else{
        DetailCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DetailCell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSString *indexStr = [NSString stringWithFormat:@"%d", (int)indexPath.section];
    BOOL isMainCell = [dicSource[indexStr][indexPath.row][@"cell"] isEqualToString:@"MainCell"];
    if (!isMainCell) {
        return;
    }
    
    if ([dicSource[indexStr][indexPath.row][@"state"] boolValue]) {
        //关闭
        switch (indexPath.section) {
            case 0:
            {
                grouparr0[indexPath.row][@"state"] = [NSString stringWithFormat:@"%d", NO];
                [grouparr0 removeObjectAtIndex:indexPath.row + 1];
            }
                break;
            case 1:
            {
                grouparr1[indexPath.row][@"state"] = [NSString stringWithFormat:@"%d", NO];
                [grouparr1 removeObjectAtIndex:indexPath.row + 1];
            }
                break;
            case 2:
            {
                grouparr2[indexPath.row][@"state"] = [NSString stringWithFormat:@"%d", NO];
                [grouparr2 removeObjectAtIndex:indexPath.row + 1];
            }
                break;
            default:
                break;
        }
        
        NSIndexPath *path = [NSIndexPath indexPathForItem:(indexPath.row + 1) inSection:indexPath.section];
        [tableView beginUpdates];
        [tableView deleteRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationTop];
        [tableView endUpdates];
    }
    else{
        //打开
        switch (indexPath.section) {
            case 0:
            {
                grouparr0[indexPath.row][@"state"] = [NSString stringWithFormat:@"%d", YES];
                NSMutableDictionary *dicAttachedCell = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"AttachedCell",@"cell",@"YES",@"state",nil];
                [grouparr0 insertObject:dicAttachedCell atIndex:(indexPath.row + 1)];
            }
                break;
            case 1:
            {
                grouparr1[indexPath.row][@"state"] = [NSString stringWithFormat:@"%d", YES];
                NSMutableDictionary *dicAttachedCell = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"AttachedCell",@"cell",@"YES",@"state",nil];
                [grouparr1 insertObject:dicAttachedCell atIndex:(indexPath.row + 1)];
            }
                break;
            case 2:
            {
                grouparr2[indexPath.row][@"state"] = [NSString stringWithFormat:@"%d", YES];
                NSMutableDictionary *dicAttachedCell = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"AttachedCell",@"cell",@"YES",@"state",nil];
                [grouparr2 insertObject:dicAttachedCell atIndex:(indexPath.row + 1)];
            }
                break;
            default:
                break;
        }
        
        NSIndexPath *path = [NSIndexPath indexPathForItem:(indexPath.row + 1) inSection:indexPath.section];
        [tableView beginUpdates];
        [tableView insertRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationBottom];
        [tableView endUpdates];
    }
}

- (void)doButton:(UIButton *)sender{
    
    NSString *string = [NSString stringWithFormat:@"%d",(int)sender.tag - 100];
    if ([selectedArr containsObject:string]) {
        [selectedArr removeObject:string];
    }
    else{
        [selectedArr addObject:string];
    }
    
    [self.myTableView reloadData];
}
@end
