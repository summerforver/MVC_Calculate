//
//  ViewController.m
//  MVC_Calculate
//
//  Created by 王一卓 on 2018/9/21.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "ViewController.h"
#import "CalculateView.h"
#import "Calculate.h"
//#include<string.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blackColor];
    
    self.calculateView = [[CalculateView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [self.calculateView viewInit];
    [self creatTarget];
    
    self.calculate = [[Calculate alloc] init];
    [self.view addSubview:self.calculateView];
    
}



- (void)creatTarget {
     [self.calculateView.button0 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
     [self.calculateView.button1 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
     [self.calculateView.button2 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
     [self.calculateView.button3 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
     [self.calculateView.button4 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
     [self.calculateView.button5 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
     [self.calculateView.button6 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
     [self.calculateView.button7 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
     [self.calculateView.button8 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
     [self.calculateView.button9 addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
     [self.calculateView.buttonBit addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.calculateView.buttonAC addTarget:self action:@selector(pressACButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.calculateView.buttonLeft addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.calculateView.buttonRight addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.calculateView.buttonDivide addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.calculateView.buttonMultiply addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.calculateView.buttonReduce addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.calculateView.buttonAdd addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.calculateView.buttonEqual addTarget:self action:@selector(pressEqual:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pressButton:(UIButton *)sender {
    
    if (sender.tag == 0) {
        self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
    } else if (sender.tag == 1) {
        self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
    } else if (sender.tag == 2) {
         self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
    } else if (sender.tag == 3) {
         self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
    } else if (sender.tag == 4) {
        self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
    } else if (sender.tag == 5) {
         self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
    } else if (sender.tag == 6) {
         self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
    } else if (sender.tag == 7) {
         self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
    } else if (sender.tag == 8) {
         self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
    } else if (sender.tag == 9) {
        self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
    } else if (sender.tag == 10) {
        if ([self.calculate inputRegular:sender.currentTitle addLongString:self.calculateView.textViewSecond.text]) {
            self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
        } else {
            
        }
    } else if (sender.tag == 11) {
        self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
    } else if (sender.tag == 12) {
        self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
    } else if (sender.tag == 21) {
        if ([self.calculate inputRegular:sender.currentTitle addLongString:self.calculateView.textViewSecond.text]) {
            self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
        } else {
            
        }
    } else if (sender.tag == 22) {
        if ([self.calculate inputRegular:sender.currentTitle addLongString:self.calculateView.textViewSecond.text]) {
            self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
        } else {

        }
    } else if (sender.tag == 23) {
        if ([self.calculate inputRegular:sender.currentTitle addLongString:self.calculateView.textViewSecond.text]) {
            self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
        } else {
            
        }
    } else {
        if ([self.calculate inputRegular:sender.currentTitle addLongString:self.calculateView.textViewSecond.text]) {
            self.calculateView.textViewSecond.text = [self.calculateView.textViewSecond.text stringByAppendingString:sender.currentTitle];
        } else {

        }
    }
}


- (void)pressEqual:(UIButton *)sender {

    NSLog(@"%@",self.calculateView.textViewSecond.text);
    self.calculateView.textViewFirst.text  =  [self.calculate calculate:self.calculateView.textViewSecond.text];
    
    
//    NSString *string = [[NSString alloc] init];
//    string = [self.calculate calculate:self.calculateView.textViewSecond.text];
//
//    char *putString = (char *)[string UTF8String];
//
//    long int count = strlen(putString);
//    long int flag = 0;
//    for (int i = 0 ; i < count; i++) {
//        if (putString[i] == '.') {
//            for (int j = i;j < count; j ++) {
//                if (putString[j] == '0') {
//                    flag ++;
//                }
//            }
//        }
//        if (flag == count - i) {
//            putString
//        }
//    }
//
}

- (void)pressACButton:(UIButton *)sender {
    self.calculateView.textViewSecond.text = @"";
    self.calculateView.textViewFirst.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
