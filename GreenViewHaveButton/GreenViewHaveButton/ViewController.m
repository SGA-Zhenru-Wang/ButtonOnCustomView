//
//  ViewController.m
//  GreenViewHaveButton
//
//  Created by wzr on 2017/03/16.
//  Copyright © 2017年 wzr. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()<customViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray  *apparray= [[NSBundle mainBundle]loadNibNamed:@"CustomView" owner:nil options:nil];
    CustomView *customView=[apparray firstObject];
    customView.frame = CGRectMake(80, 80, 300, 300);
    customView.delegate = self;
    [self.view addSubview:customView];
    // Do any additional setup after loading the view, typically from a nib.
}


#pragma mark -customViewDelegate
-(void)btn1OnCustomViewBeClicked{
    // 这是左边的事件
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"UIAlertControllerStyle.Alert" message:@"我是左边的按钮事件" preferredStyle:UIAlertControllerStyleAlert];

    [alertController addAction:[UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {

    }]];
    [self presentViewController:alertController animated:YES completion:nil];
}

-(void)btn2OnCustomViewBeClicked{
    // 这是右边的事件
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"UIAlertControllerStyle.Alert" message:@"我是右边的按钮事件" preferredStyle:UIAlertControllerStyleAlert];
    
    // addActionした順に左から右にボタンが配置されます
    [alertController addAction:[UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        // cancelボタンが押された時の処理
    
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
