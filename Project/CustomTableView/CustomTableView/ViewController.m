//
//  ViewController.m
//  CustomTableView
//
//  Created by 노정우 on 2016. 10. 14..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"
#import "IdolCell.h"
@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>

@property UITableView *tvView;
@property NSArray *dataList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataList = @[@{@"title":@"에이핑크다",@"imageUrl":@"apink1.jpg"},
                      @{@"title":@"에이핑크다2",@"imageUrl":@"apink2.jpg"},
                      @{@"title":@"에이핑크다3",@"imageUrl":@"apink3.jpg"},
                      @{@"title":@"에이핑크다",@"imageUrl":@"apink1.jpg"},
                      @{@"title":@"에이핑크다2",@"imageUrl":@"apink2.jpg"},
                      @{@"title":@"에이핑크다3",@"imageUrl":@"apink3.jpg"},
                      @{@"title":@"에이핑크다",@"imageUrl":@"apink1.jpg"},
                      @{@"title":@"에이핑크다2",@"imageUrl":@"apink2.jpg"},
                      @{@"title":@"에이핑크다3",@"imageUrl":@"apink3.jpg"},
                      @{@"title":@"에이핑크다",@"imageUrl":@"apink1.jpg"},
                      @{@"title":@"에이핑크다2",@"imageUrl":@"apink2.jpg"},
                      @{@"title":@"에이핑크다3",@"imageUrl":@"apink3.jpg"},
                      @{@"title":@"에이핑크다",@"imageUrl":@"apink1.jpg"},
                      @{@"title":@"에이핑크다2",@"imageUrl":@"apink2.jpg"},
                      @{@"title":@"에이핑크다3",@"imageUrl":@"apink3.jpg"},
                      @{@"title":@"에이핑크다",@"imageUrl":@"apink1.jpg"},
                      @{@"title":@"에이핑크다2",@"imageUrl":@"apink2.jpg"},
                      @{@"title":@"에이핑크다3",@"imageUrl":@"apink3.jpg"},
                      @{@"title":@"에이핑크다",@"imageUrl":@"apink1.jpg"},
                      @{@"title":@"에이핑크다2",@"imageUrl":@"apink2.jpg"},
                      @{@"title":@"에이핑크다3",@"imageUrl":@"apink3.jpg"},
                      @{@"title":@"에이핑크다",@"imageUrl":@"apink1.jpg"},
                      @{@"title":@"에이핑크다2",@"imageUrl":@"apink2.jpg"},
                      @{@"title":@"에이핑크다3",@"imageUrl":@"apink3.jpg"}
                      ];
    
    self.tvView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tvView.delegate = self;
    self.tvView.dataSource = self;
    [self.view addSubview:self.tvView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.dataList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    IdolCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil)
    {
        cell = [[IdolCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    NSDictionary *data = self.dataList[indexPath.row];
    
    [cell setBackGroundImageName:[data objectForKey:@"imageUrl"]];
    [cell setTitle:[data objectForKey:@"title"]];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.view.frame.size.height;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
