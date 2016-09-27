//
//  ViewController.m
//  折线图
//
//  Created by superMan on 16/9/22.
//  Copyright © 2016年 superMan. All rights reserved.
//

#import "ViewController.h"
#import "FoldLineView.h"

@interface ViewController ()
@property(nonatomic,strong)FoldLineView *foldLineView;
@property(nonatomic,strong)FoldLineView *foldLineView1;//添加到scrollView的折线图
@property(nonatomic,strong)UIScrollView *scrollView;//可以滚动的view
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //左右间隔15,然后高度给定     
    self.foldLineView = [[FoldLineView alloc]initWithFrame:CGRectMake(15, 100, [UIScreen mainScreen].bounds.size.width - 30, 200)];
    
    //周的数据源
    NSMutableArray *numbers =[NSMutableArray arrayWithObjects:@"28", @"29" , @"30" , @"1" , @"2" , @"3", @"4" ,nil];
    //添加里程数据
    NSMutableArray *kmArr = [NSMutableArray arrayWithObjects:@"88",@"32",@"12",@"38",@"87.5",@"130.5",@"131", nil];
    //添加时间数组
    NSMutableArray *timeArr = [NSMutableArray arrayWithObjects:@"1.35",@"0.41",@"0.30",@"0.53",@"2.16",@"3.33",@"2.09",nil];
    
    self.foldLineView.numbers = numbers;
    self.foldLineView.kmArr = kmArr;
    self.foldLineView.timeArr = timeArr;
    
     [self.view addSubview:self.foldLineView];
    
    
#pragma mark --scrollView
    //添加一个scrollView
    self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(15, 350, [UIScreen mainScreen].bounds.size.width - 30, 200)];
    [self.view addSubview:self.scrollView];
    //月份的数据源
    NSMutableArray *numbers1 =[NSMutableArray arrayWithObjects:@"28", @"29" , @"30" , @"1" , @"2" , @"3", @"4" ,@"28", @"29" , @"30" , @"1" , @"2" , @"3", @"4" ,@"28", @"29" , @"30" , @"1" , @"2" , @"3", @"4" ,@"28", @"29" , @"30" , @"1" , @"2" , @"3", @"4" ,nil];
    //添加里程数据
    NSMutableArray *kmArr1 = [NSMutableArray arrayWithObjects:@"88",@"32",@"12",@"38",@"87.5",@"130.5",@"131", @"88",@"32",@"12",@"38",@"87.5",@"130.5",@"131",@"88",@"32",@"12",@"38",@"87.5",@"130.5",@"131", @"88",@"32",@"12",@"38",@"87.5",@"130.5",@"131",nil];
    //添加时间数组
    NSMutableArray *timeArr1 = [NSMutableArray arrayWithObjects:@"1.35",@"0.41",@"0.30",@"0.53",@"2.16",@"3.33",@"2.09",@"1.35",@"0.41",@"0.30",@"0.53",@"2.16",@"3.33",@"2.09",@"1.35",@"0.41",@"0.30",@"0.53",@"2.16",@"3.33",@"2.09",@"1.35",@"0.41",@"0.30",@"0.53",@"2.16",@"3.33",@"2.09",nil];
    
    //一个页面显示 7天
    #pragma mark --space是竖线之间的间距
     CGFloat space = (self.view.bounds.size.width - 60 - 15) / 6 ;
    self.foldLineView1 = [[FoldLineView alloc]initWithFrame:CGRectMake(0, 0,  [UIScreen mainScreen].bounds.size.width - 30, 200)];;
    NSLog(@"scrollView宽度-->%f", (numbers.count - 1 ) * space);
    self.foldLineView1.numbers = numbers1;
    self.foldLineView1.kmArr = kmArr1;
    self.foldLineView1.timeArr = timeArr1;
    [self.scrollView addSubview:self.foldLineView1];        
    self.scrollView.contentSize = CGSizeMake( (numbers1.count - 1 ) * space, 200);
//    self.scrollView.bounces = NO;
    self.scrollView.showsHorizontalScrollIndicator = NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
