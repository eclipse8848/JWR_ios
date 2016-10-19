//
//  ViewController.m
//  WeatherTable
//
//  Created by 노정우 on 2016. 10. 16..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSArray *dataList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *dict1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"중국",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict3 = [[NSDictionary alloc]initWithObjectsAndKeys:@"스페인",@"지역",@"흐림",@"날씨", nil];
    NSDictionary *dict4 = [[NSDictionary alloc]initWithObjectsAndKeys:@"프랑스",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict5 = [[NSDictionary alloc]initWithObjectsAndKeys:@"독일",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict6 = [[NSDictionary alloc]initWithObjectsAndKeys:@"이란",@"지역",@"흐림",@"날씨", nil];
    NSDictionary *dict7 = [[NSDictionary alloc]initWithObjectsAndKeys:@"코트",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict8 = [[NSDictionary alloc]initWithObjectsAndKeys:@"북한",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict9 = [[NSDictionary alloc]initWithObjectsAndKeys:@"스웨덴",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict10 = [[NSDictionary alloc]initWithObjectsAndKeys:@"네덜란드",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict11 = [[NSDictionary alloc]initWithObjectsAndKeys:@"일본",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict12 = [[NSDictionary alloc]initWithObjectsAndKeys:@"미국",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict13 = [[NSDictionary alloc]initWithObjectsAndKeys:@"캐나다",@"지역",@"흐림",@"날씨", nil];
    NSDictionary *dict14 = [[NSDictionary alloc]initWithObjectsAndKeys:@"멕시코",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict15 = [[NSDictionary alloc]initWithObjectsAndKeys:@"칠레",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict16 = [[NSDictionary alloc]initWithObjectsAndKeys:@"아르헨",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict17 = [[NSDictionary alloc]initWithObjectsAndKeys:@"콜롬",@"지역",@"흐림",@"날씨", nil];
    NSDictionary *dict18 = [[NSDictionary alloc]initWithObjectsAndKeys:@"볼리",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict19 = [[NSDictionary alloc]initWithObjectsAndKeys:@"알래",@"지역",@"맑음",@"날씨", nil];
    self.dataList = [[NSArray alloc] initWithObjects:dict1,dict2,dict3,dict4,dict5,dict6,dict7,dict8,dict9,dict10,dict11,dict12,dict13,dict14,dict15,dict16,dict17,dict18,dict19, nil];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSDictionary *dicTemp = [self.dataList objectAtIndex:indexPath.row];
    cell.textLabel.text = [dicTemp objectForKey:@"지역"];
    NSString *weatherStr = [dicTemp objectForKey:@"날씨"];
    cell.detailTextLabel.text = weatherStr;
    
    if([weatherStr isEqualToString:@"맑음"])
    {
        cell.imageView.image = [UIImage imageNamed:@"apink1.jpg"];
    }else if ([weatherStr isEqualToString:@"흐림"])
    {
        cell.imageView.image = [UIImage imageNamed:@"apink2.jpg"];
    }else if ([weatherStr isEqualToString:@"비"])
    {
        cell.imageView.image = [UIImage imageNamed:@"apink3.jpg"];
    }
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
