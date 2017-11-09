//
//  ViewController.m
//  UIScrollView滚动视图
//
//  Created by zh dk on 2017/8/22.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //定义创建一个滚动视图
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.frame = CGRectMake(0, 0, 320, 576);
    
    //是否按照整页来滚动视图
    scrollView.pagingEnabled = YES;
    //是否可以开启滚动效果
    scrollView.scrollEnabled = YES;
    //设置画布的大小，显示在滚动视图内部,一般要大于frame的大小
    scrollView.contentSize = CGSizeMake(320*6, 576);
    //是否可以边缘弹动效果
    scrollView.bounces = YES;
    //开启横向弹动效果
    scrollView.alwaysBounceHorizontal = YES;
    //开启纵向弹动效果
    scrollView.alwaysBounceVertical = YES;
    //显示横向滚动条
    scrollView.showsVerticalScrollIndicator=YES;
    //显示纵向滚动条
    scrollView.showsHorizontalScrollIndicator = YES;
    
    scrollView.backgroundColor = [UIColor blueColor];
    
    for(int i=0;i<6;i++){
        NSString *strName = [NSString stringWithFormat:@"%d.jpg",i+1];
        UIImage *image = [UIImage imageNamed:strName];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake(320*i, 0, 320, 576);
        [scrollView addSubview:imageView];
    }
    
    [self.view addSubview:scrollView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
