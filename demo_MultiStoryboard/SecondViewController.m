//
//  SecondViewController.m
//  demo_MultiStoryboard
//
//  Created by mini2 on 15/6/12.
//  Copyright (c) 2015年 Aiitec. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellId"];
    }
    cell.textLabel.text = @"点击列表 跳转详情";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIStoryboard *fourStoryboard = [UIStoryboard storyboardWithName:@"Fourth" bundle:nil];
    UIViewController *vc = [fourStoryboard instantiateViewControllerWithIdentifier:@"detailVC"];
    vc.title = @"detail";
    [self.navigationController pushViewController:vc animated:YES];
}

@end
