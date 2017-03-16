//
//  CustomView.h
//  GreenViewHaveButton
//
//  Created by wzr on 2017/03/16.
//  Copyright © 2017年 wzr. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol customViewDelegate <NSObject>
-(void)btn1OnCustomViewBeClicked;
-(void)btn2OnCustomViewBeClicked;
@end
@interface CustomView : UIView
@property(nonatomic,weak)id<customViewDelegate>delegate;
@end
