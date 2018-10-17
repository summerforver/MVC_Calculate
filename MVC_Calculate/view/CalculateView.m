//
//  CalculateView.m
//  MVC_Calculate
//
//  Created by 王一卓 on 2018/9/21.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "CalculateView.h"

@implementation CalculateView
//
//- (instancetype) init {
//    self = [super init];
//    if (self) {
//        [self creatTextView];
//        [self creatButton];
//    }
//    return self;
//    
//}

- (void)viewInit {
    [self creatTextView];
    [self creatButton];
}

- (void)creatTextView {
    self.textViewFirst = [[UITextView alloc] init];
    self.textViewFirst.frame = CGRectMake(0, 20, 375, 75);
    self.textViewFirst.backgroundColor = [UIColor blackColor];
    self.textViewFirst.textColor = [UIColor whiteColor];
    self.textViewFirst.textAlignment = NSTextAlignmentRight;
    self.textViewFirst.font = [UIFont systemFontOfSize:40.0];
    [self addSubview:self.textViewFirst];
    
    self.textViewSecond = [[UITextView alloc] init];
    self.textViewSecond.frame = CGRectMake(0, 95, 375, 95);
    self.textViewSecond.backgroundColor = [UIColor blackColor];
    self.textViewSecond.textColor = [UIColor whiteColor];
    self.textViewSecond.textAlignment = NSTextAlignmentRight;
    self.textViewSecond.font = [UIFont systemFontOfSize:40.0];
    [self addSubview:self.textViewSecond];
}

- (void)creatButton {
    
    self.buttonAC = [[UIButton alloc] initWithFrame:CGRectMake(10, 200, 80, 80)];
    [self.buttonAC setTitle:@"AC" forState:UIControlStateNormal];
    [self getButton:self.buttonAC];
    [self addSubview:self.buttonAC];
    
    self.buttonLeft = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 80, 80)];
    [self.buttonLeft setTitle:@"(" forState:UIControlStateNormal];
    self.buttonLeft.tag = 11;
    [self getButton:self.buttonLeft];
    [self addSubview:self.buttonLeft];
    
    self.buttonRight = [[UIButton alloc] initWithFrame:CGRectMake(190, 200, 80, 80)];
    [self.buttonRight setTitle:@")" forState:UIControlStateNormal];
    self.buttonRight.tag = 12;
    [self getButton:self.buttonRight];
    [self addSubview:self.buttonRight];
    
    self.buttonDivide = [[UIButton alloc] initWithFrame:CGRectMake(280, 200, 80, 80)];
    [self.buttonDivide setTitle:@"/" forState:UIControlStateNormal];
    self.buttonDivide.tag = 21;
    [self getSymbol:self.buttonDivide];
    [self addSubview:self.buttonDivide];
     
    self.button7 = [[UIButton alloc] initWithFrame:CGRectMake(10, 290, 80, 80)];
    [self.button7 setTitle:@"7" forState:UIControlStateNormal];
    self.button7.tag = 7;
    [self getNumberButton:self.button7];
    [self addSubview:self.button7];
    
    self.button8 = [[UIButton alloc] initWithFrame:CGRectMake(100, 290, 80, 80)];
    [self.button8 setTitle:@"8" forState:UIControlStateNormal];
    self.button8.tag = 8;
    [self getNumberButton:self.button8];
    [self addSubview:self.button8];
    
    self.button9 = [[UIButton alloc] initWithFrame:CGRectMake(190, 290, 80, 80)];
    [self.button9 setTitle:@"9" forState:UIControlStateNormal];
    self.button9.tag = 9;
    [self getNumberButton:self.button9];
    [self addSubview:self.button9];
    
    self.buttonMultiply = [[UIButton alloc] initWithFrame:CGRectMake(280, 290, 80, 80)];
    [self.buttonMultiply setTitle:@"*" forState:UIControlStateNormal];
    self.buttonMultiply.tag = 22;
    [self getSymbol:self.buttonMultiply];
    [self addSubview:self.buttonMultiply];
    
    self.button4 = [[UIButton alloc] initWithFrame:CGRectMake(10, 380, 80, 80)];
    [self.button4 setTitle:@"4" forState:UIControlStateNormal];
    self.button4.tag = 4;
    [self getNumberButton:self.button4];
    [self addSubview:self.button4];
    
    self.button5 = [[UIButton alloc] initWithFrame:CGRectMake(100, 380, 80, 80)];
    [self.button5 setTitle:@"5" forState:UIControlStateNormal];
    self.button5.tag = 5;
    [self getNumberButton:self.button5];
    [self addSubview:self.button5];
    
    self.button6 = [[UIButton alloc] initWithFrame:CGRectMake(190, 380, 80, 80)];
    [self.button6 setTitle:@"6" forState:UIControlStateNormal];
    self.button6.tag = 6;
    [self getNumberButton:self.button6];
    [self addSubview:self.button6];
    
    self.buttonReduce = [[UIButton alloc] initWithFrame:CGRectMake(280, 380, 80, 80)];
    [self.buttonReduce setTitle:@"-" forState:UIControlStateNormal];
    self.buttonReduce.tag = 23;
    [self getSymbol:self.buttonReduce];
    [self addSubview:self.buttonReduce];
    
    self.button1 = [[UIButton alloc] initWithFrame:CGRectMake(10, 470, 80, 80)];
    [self.button1 setTitle:@"1" forState:UIControlStateNormal];
    self.button1.tag = 1;
    [self getNumberButton:self.button1];
    [self addSubview:self.button1];
    
    self.button2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 470, 80, 80)];
    [self.button2 setTitle:@"2" forState:UIControlStateNormal];
    self.button2.tag = 2;
    [self getNumberButton:self.button2];
    [self addSubview:self.button2];
    
    self.button3 = [[UIButton alloc] initWithFrame:CGRectMake(190, 470, 80, 80)];
    [self.button3 setTitle:@"3" forState:UIControlStateNormal];
    self.button3.tag = 3;
    [self getNumberButton:self.button3];
    [self addSubview:self.button3];
    
    self.buttonAdd = [[UIButton alloc] initWithFrame:CGRectMake(280, 470, 80, 80)];
    [self.buttonAdd setTitle:@"+" forState:UIControlStateNormal];
    self.buttonAdd.tag = 24;
    [self getSymbol:self.buttonAdd];
    [self addSubview:self.buttonAdd];
    
    self.button0 = [[UIButton alloc] initWithFrame:CGRectMake(10, 560, 170, 80)];
    [self.button0 setTitle:@"0" forState:UIControlStateNormal];
    self.button0.tag = 0;
    [self getNumberButton:self.button0];
    [self addSubview:self.button0];
    
    self.buttonBit = [[UIButton alloc] initWithFrame:CGRectMake(190, 560, 80, 80)];
    [self.buttonBit setTitle:@"." forState:UIControlStateNormal];
    self.buttonBit.tag = 10;
    [self getNumberButton:self.buttonBit];
    [self addSubview:self.buttonBit];
    
    self.buttonEqual = [[UIButton alloc] initWithFrame:CGRectMake(280, 560, 80, 80)];
    [self.buttonEqual setTitle:@"=" forState:UIControlStateNormal];
    [self getSymbol:self.buttonEqual];
    [self addSubview:self.buttonEqual];

}

- (void)getNumberButton:(UIButton *)button {
    button.backgroundColor = [UIColor colorWithRed:0.20f green:0.20f blue:0.20f alpha:1.00f];
    button.layer.cornerRadius = 40;
    button.layer.masksToBounds = YES;
    button.titleLabel.font = [UIFont systemFontOfSize:34.0];
    button.titleLabel.textColor = [UIColor whiteColor];
}

- (void)getSymbol:(UIButton *)button {
    button.backgroundColor = [UIColor colorWithRed:1.00f green:0.58f blue:0.00f alpha:1.00f];
    button.layer.cornerRadius = 40;
    button.layer.masksToBounds = YES;
    button.titleLabel.font = [UIFont systemFontOfSize:40.0];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}

- (void)getButton:(UIButton *)button {
    button.backgroundColor = [UIColor colorWithRed:0.65f green:0.65f blue:0.64f alpha:1.00f];
    button.layer.cornerRadius = 40;
    button.layer.masksToBounds = YES;
    button.titleLabel.font = [UIFont systemFontOfSize:34.0];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}

@end
