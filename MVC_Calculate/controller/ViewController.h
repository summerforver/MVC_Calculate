//
//  ViewController.h
//  MVC_Calculate
//
//  Created by 王一卓 on 2018/9/21.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculateView.h"
#import "Calculate.h"

@interface ViewController : UIViewController

@property (nonatomic, strong)CalculateView *calculateView;
@property (nonatomic, strong)Calculate *calculate;

@end

