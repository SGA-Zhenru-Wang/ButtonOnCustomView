//
//  CustomView.m
//  GreenViewHaveButton
//
//  Created by wzr on 2017/03/16.
//  Copyright © 2017年 wzr. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView
- (IBAction)btnOnGreenView1Clicked:(id)sender {
    [self.delegate btn1OnCustomViewBeClicked];
    NSLog(@"btnOnGreenView1Clicked");
}
- (IBAction)btnOnGreenView2Clicked:(id)sender {
    [self.delegate btn2OnCustomViewBeClicked];
    NSLog(@"btnOnGreenView1Clicked");
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
