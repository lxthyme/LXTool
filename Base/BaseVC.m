//
//  BaseVC.m
//  Card
//
//  Created by FairyLand on 15/4/15.
//  Copyright (c) 2015年 zhaowei.guo. All rights reserved.
//

#import "BaseVC.h"

@interface BaseVC ()<UITableViewDelegate,UITableViewDataSource>
{
    
}
@property (nonatomic,retain)NSArray *arrayData;



@end

@implementation BaseVC
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    [self.tabBarController.tabBar setHidden:NO];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 
    //
    [self initialize];
}

- (void)initialize
{
    //
    [self.view setBackgroundColor:[UIColor whiteColor]];
    // iOS 7-only.
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    //
    [self setAutomaticallyAdjustsScrollViewInsets:NO];
}


#pragma mark - TableView Required Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [self.arrayData count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell)
    {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        
        //        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    
    //configuration cell...
    
    
    
    return cell;
    
}

#pragma mark - TableView Optional Methods
- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    //
    if ([self.table respondsToSelector:@selector(setSeparatorInset:)]) {
        [self.table setSeparatorInset:UIEdgeInsetsMake(0,0,0,0)];
    }
    
    if ([self.table respondsToSelector:@selector(setLayoutMargins:)]) {
        [self.table setLayoutMargins:UIEdgeInsetsMake(0,0,0,0)];
    }
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsMake(0,0,0,0)];
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsMake(0,0,0,0)];
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

#pragma mark - table
- (UITableView *)table
{
    if(!_table){
        
        //初始化一个 tableView
        //<UITableViewDataSource,UITableViewDelegate>
        _table = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _table.tableFooterView = [[UIView alloc]init];
        _table.estimatedRowHeight = 44.0f;
        _table.rowHeight = UITableViewAutomaticDimension;
        
        [_table setDelegate:self];
        [_table setDataSource:self];
        
//        [_table setBackgroundColor:[UIColor <#color#>]];

//        [<#_table#> setIndicatorStyle:<#(UIScrollViewIndicatorStyle)#>];
//        [<#_table#> setKeyboardDismissMode:UIScrollViewKeyboardDismissModeOnDrag];
//        [<#_table#> setSeparatorStyle:<#(UITableViewCellSeparatorStyle)#>];
        
        
        
        
    }
    
    return _table;
    
}

@end
