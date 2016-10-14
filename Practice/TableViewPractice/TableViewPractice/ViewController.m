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


@property NSArray *checkOnList;
@property UITableView *tableView;
@property BOOL isEditing;

@property NSDictionary *animalName;
@property NSMutableArray *animalList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *editButton = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(onClickedButton:)];
    [self.navigationItem setLeftBarButtonItem:editButton];
    
//  하나의셀이 하나의 데이터가 되는것이 좋다.
    self.animalList = [NSMutableArray arrayWithArray: @[@{@"kind":@"포유류",
                           @"list":@[@"토끼",@"강아지",@"코끼리",@"사자"],
                           @"image":@"donkey.jpg"},
                         @{@"kind":@"설치류",
                           @"list":@[@"다람쥐",@"햄스터",@"햄찌"],
                           @"image":@"dog.jpg"},
                         @{@"kind":@"조류",
                           @"list":@[@"닭",@"오리",@"천둥오리"],
                           @"image":@"duck.jpg"}]];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
}

- (void)onClickedButton:(UIBarButtonItem *)item
{//change edit mode table view
    if (!self.isEditing)
    {//become editing
        [self.tableView setEditing:YES animated:YES];
        self.isEditing = YES;
    }else
    {//become normal
        [self.tableView setEditing:NO animated:YES];
        self.isEditing = NO;
    }
    
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
    
    
    UITableViewCell *cell;
    
    if (indexPath.row == indexPath.section)
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"switchCell"];
        UISwitch *switchView;
        if (cell == nil)
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"switchCell"];
            switchView = [[UISwitch alloc] initWithFrame:CGRectZero];
            [switchView addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
            switchView.tag = indexPath.section;
            [switchView setOn:NO animated:NO];
            cell.accessoryView = switchView;
        }
    }else
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        if (cell == nil)
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
        }
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
- (void) switchChanged:(id)sender {
    UISwitch* switchControl = sender;
    [switchControl setOnTintColor:[UIColor magentaColor]];
    NSLog( @"The switch is %@", switchControl.on ? @"ON" : @"OFF" );
}




-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //deleteData
    [self.animalList removeObjectAtIndex:indexPath.row];
    //deleteCell
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
//edit -> embedded in -> navigation
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
