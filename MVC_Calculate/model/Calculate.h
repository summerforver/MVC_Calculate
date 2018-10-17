//
//  Calculate.h
//  MVC_Calculate
//
//  Created by 王一卓 on 2018/9/21.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculate : NSObject

@property (nonatomic, strong)NSMutableArray *numberMutableArray;
@property (nonatomic, strong)NSMutableArray *symbelMutableArray;

//- (int)precedence:(char) c;
- (NSString *)calculate:(NSString *)string;
- (BOOL)inputRegular:(NSString *)string addLongString:(NSString *)longString;

//- (BOOL)input0Regular:(NSString *)longString;

@end
