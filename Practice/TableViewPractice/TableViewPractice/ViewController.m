//
//  ViewController.m
//  TableViewPractice
//
//  Created by 노정우 on 2016. 10. 13..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>

@property NSDictionary *animalName;
@property NSArray *animalList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.animalName = @{@"포유류":@[@"토끼",@"강아지",@"코끼리",@"사자"],@"설치류":@[@"다람쥐",@"햄스터",@"햄찌"],@"조류":@[@"닭",@"오리",@"천둥오리"]};
    
    self.animalList =  @[@{@"kind":@"포유류",
                           @"list":@[@"토끼",@"강아지",@"코끼리",@"사자"],
                           @"image":@"donkey.jpg"},
                         @{@"kind":@"설치류",
                           @"list":@[@"다람쥐",@"햄스터",@"햄찌"],
                           @"image":@"dog.jpg"},
                         @{@"kind":@"조류",
                           @"list":@[@"닭",@"오리",@"천둥오리"],
                           @"image":@"duck.jpg"}];
    
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.animalList.count;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewHeaderFooterView *section = [tableView headerViewForSection:indexPath.section];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        UIAlertController *alertContoller = [UIAlertController alertControllerWithTitle:@"알림!"
                                                                    message:[NSString stringWithFormat:@"%@섹션 %@ 선택되었습니다.", section.textLabel.text, cell.textLabel.text]
                                                                         preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인"
                                                        style:UIAlertActionStyleCancel handler:nil];
        [alertContoller addAction:okBtn];
        [self presentViewController:alertContoller animated:YES completion:nil];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

//-(void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UIAlertController *alertContoller = [UIAlertController alertControllerWithTitle:@"알림!"
//                                                                            message:[NSString stringWithFormat:@"%ld번섹션 %ld번셀이 선택되었습니다.", indexPath.section,indexPath.row]
//                                                                     preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인"
//                                                    style:UIAlertActionStyleCancel handler:nil];
//    [alertContoller addAction:okBtn];
//    [self presentViewController:alertContoller animated:YES completion:nil];
//}

//-(void)tableView:(UITableView *)tableView didUnhighlightRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UIAlertController *alertContoller = [UIAlertController alertControllerWithTitle:@"알림!"
//                                                                            message:[NSString stringWithFormat:@"%ld번섹션 %ld번셀이 선택해제되었습니다.", indexPath.section,indexPath.row]
//                                                                     preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인"
//                                                    style:UIAlertActionStyleCancel handler:nil];
//    [alertContoller addAction:okBtn];
//    [self presentViewController:alertContoller animated:YES completion:nil];
//}

//-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UIAlertController *alertContoller = [UIAlertController alertControllerWithTitle:@"알림!"
//                                                                            message:[NSString stringWithFormat:@"%ld번섹션 %ld번셀이 선택해제되었습니다.", indexPath.section,indexPath.row]
//                                                                     preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인"
//                                                    style:UIAlertActionStyleCancel handler:nil];
//    [alertContoller addAction:okBtn];
//    [self presentViewController:alertContoller animated:YES completion:nil];
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSDictionary *aniData = self.animalList[section];
    NSArray *aniList = [aniData objectForKey:@"list"];
    return aniList.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSDictionary *aniData = self.animalList[section];
    NSString *title = [aniData objectForKey:@"kind"];
    return title;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
        NSLog(@"%ld",indexPath.row);
    }
    NSDictionary *animalData = self.animalList[indexPath.section];
    NSArray *aniList = [animalData objectForKey:@"list"];
    NSString *aniImage = [animalData objectForKey:@"image"];
    cell.textLabel.text = aniList[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:aniImage];
    cell.detailTextLabel.text = @"asdfadf";
    
//    NSURL *url = [NSURL URLWithString:@"url"];
//    NSData *data = [NSData dataWithContentsOfURL:url];
//    cell.imageView.image = [UIImage imageWithData:data];
    return cell;
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
