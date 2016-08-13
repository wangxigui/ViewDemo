//
//  ViewController.m
//  ViewDemo
//
//  Created by wen wen on 16/8/10.
//  Copyright © 2016年 wen wen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Lable;

@end

@implementation ViewController
- (IBAction)okButton:(id)sender {
    NSLog(@"-------%@",[self class]);
    self.Lable.text=@"hello test";
     NSLog(@"----view:  %@",[self.view class]);

    
     [self listSubviewsOfView:self.view];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //画第一块画布然涂成蓝色，大小是320 X 100
    CGRect CGone = CGRectMake(0.0, 0.0, 320, 100);//画个矩形，初始化位置与大小
    UIView *v_one = [[UIView alloc]initWithFrame:CGone];//初始化view
    v_one.backgroundColor = [UIColor blueColor];// 涂成蓝色
    v_one.accessibilityLabel=@"viewlable";
    [self.view addSubview:v_one];
    
    //add button
    CGRect ButtonFrame=CGRectMake(150, 150, 90, 20);
    UIButton *v_button=[[UIButton alloc]initWithFrame:ButtonFrame];
    v_button.backgroundColor=[UIColor redColor];
//    [v_button setTitle:@"button1" forState:0];
    [self.view addSubview:v_button];
}

- (void)listSubviewsOfView:(UIView *)view {
    
    // Get the subviews of the view
    NSArray *subviews = [view subviews];
    
    // Return if there are no subviews
    if ([subviews count] == 0) return; // COUNT CHECK LINE
    NSLog(@"subview count=%lu",(unsigned long)[subviews count]);
    
    for (UIView *subview in subviews) {
        
        // Do what you want to do with the subview
        NSLog(@"%@", subview);
        
        // List the subviews of subview
        [self listSubviewsOfView:subview];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
