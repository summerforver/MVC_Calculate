//
//  CalculateView.h
//  MVC_Calculate
//
//  Created by 王一卓 on 2018/9/21.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculateView : UIView

@property (nonatomic, strong) UITextView *textViewFirst;
@property (nonatomic, strong) UITextView *textViewSecond;
@property (nonatomic, strong) UIButton *buttonAC;
@property (nonatomic, strong) UIButton *buttonLeft;
@property (nonatomic, strong) UIButton *buttonRight;
@property (nonatomic, strong) UIButton *buttonDivide;
@property (nonatomic, strong) UIButton *button7;
@property (nonatomic, strong) UIButton *button8;
@property (nonatomic, strong) UIButton *button9;
@property (nonatomic, strong) UIButton *buttonMultiply;
@property (nonatomic, strong) UIButton *button4;
@property (nonatomic, strong) UIButton *button5;
@property (nonatomic, strong) UIButton *button6;
@property (nonatomic, strong) UIButton *buttonReduce;
@property (nonatomic, strong) UIButton *button1;
@property (nonatomic, strong) UIButton *button2;
@property (nonatomic, strong) UIButton *button3;
@property (nonatomic, strong) UIButton *buttonAdd;
@property (nonatomic, strong) UIButton *button0;
@property (nonatomic, strong) UIButton *buttonBit;
@property (nonatomic, strong) UIButton *buttonEqual;

- (void)viewInit;
@end
