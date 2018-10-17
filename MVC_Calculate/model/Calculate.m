//
//  Calculate.m
//  MVC_Calculate
//
//  Created by 王一卓 on 2018/9/21.
//  Copyright © 2018年 王一卓. All rights reserved.
//

#import "Calculate.h"
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<math.h>
#define STACK_INIT_SIZE 100
//操作符结构体
typedef struct {
    char date[STACK_INIT_SIZE];
    int top;
}OptrStack;
//数字结构体
typedef struct {
    double date[STACK_INIT_SIZE];
    int top;
}OpndStack;

@implementation Calculate

//操作符函数实现部分
OptrStack *Init_OptrStack() {
    OptrStack *s;
    s = (OptrStack *)malloc(sizeof(OptrStack));
    s->top = -1;
    return s;
}
//判操作符的空
int Empty_OptrStack(OptrStack *s) {
    if (s->top != -1) {
        return 1;
    }
    else {
        return 0;
    }
}
//入栈操作符
int  Push_OptrStack(OptrStack *s, char x) {
    if (s->top == (STACK_INIT_SIZE - 1)) {
        return 0;
    }
    else
        s->date[++s->top] = x;
    return 1;

}
//出栈操作符
char Pop_OptrStack(OptrStack *s, char x) {
    if (!Empty_OptrStack(s)) {
        return 0;
    }
    else
        x = s->date[s->top];
    s->top--;
    return x;
}
//获取操作符栈顶元素
char GetTop_OptrStack(OptrStack *s, char x) {
    if (!Empty_OptrStack(s)) {
        return 0;
    }
    else
        x = s->date[s->top];
    return x;

}
//初始化数字
OpndStack *Init_OpndStack() {
    OpndStack *t;
    t = (OpndStack*)malloc(sizeof(OpndStack));
    t->top = -1;
    return t;
}
//判数字栈是否为空
int Empty_OpndStack(OpndStack *t) {
    if (t->top != -1)
        return 1;
    else
        return 0;
}
//数字入栈
int  Push_OpndStack(OpndStack *t, double y) {
    if (t->top == (STACK_INIT_SIZE - 1))
    {
        return 0;
    }
    else
        t->date[++t->top] = y;
    return 1;

}
//数字出栈
double Pop_OpndStack(OpndStack *t, double y) {
    if (!Empty_OpndStack(t)) {
        return 0;
    }
    else
        y = t->date[t->top];
    t->top--;
    return y;
}

//获取数字栈顶元素
double GetTop_OpndStack(OpndStack *t, double y) {
    if (!Empty_OpndStack(t)) {
        return 0;
    }
    y = t->date[t->top];
    return y;
}

//用于判断字符ch是否是运算符
int Judge_optr(char top) {
    int x;
    switch (top) {
        case '(':
            x = 0; break;
        case '+':
        case '-':
            x = 1; break;
        case '*':
        case '/':
            x = 2; break;
        case ')':
            x = 3; break;
    }
    return x;
}

double Operate(double b, double a, char top) {
    double c = 0;
    switch (top) {
        case '+':
            c = b + a;
            break;
        case '-':
            c = b - a;
            break;
        case '*':
            c = b * a;
            break;
        case '/':
            if (a == 0) {
                //printf("分母为零!\n");
                return 0;
            }
            else {
                c = b / a;
            }
            break;
        default:
            //printf("输入的字符非法!\n");
            break;
    }
    return c;
}


- (NSString *)calculate:(NSString *)string {
    OptrStack *optr = Init_OptrStack();
    OpndStack *opnd = Init_OpndStack();
    int i, j;
    double f;
    double a = 0;
    double b = 0;
    double c = 0;
    char d[100];
    char top = 0;
    
    char *cString = (char *)[string UTF8String];
    
    for (i = 0; cString[i]; i++)
    {
        NSLog(@"%c", cString[i]);
        switch (cString[i]) {
            case '(':
            case '+':
            case '-':
                if ((!Empty_OptrStack(optr)) || (Judge_optr(cString[i]) > Judge_optr(GetTop_OptrStack(optr, top)))||(cString[i]=='(')) {
                    Push_OptrStack(optr, cString[i]);
                }
                else {
                    a = Pop_OpndStack(opnd, a);
                    b = Pop_OpndStack(opnd, b);
                    top = Pop_OptrStack(optr, top);
                    c = Operate(b, a, top);
                    Push_OpndStack(opnd, c);
                    Push_OptrStack(optr, cString[i]);
                }
                 break;
            case '*':
            case '/':
                if ((!Empty_OptrStack(optr)) || (Judge_optr(cString[i]) > Judge_optr(GetTop_OptrStack(optr, top))) || (cString[i] == '(')) {
                    Push_OptrStack(optr, cString[i]);
                }
                else {
                    a = Pop_OpndStack(opnd, a);
                    b = Pop_OpndStack(opnd, b);
                    top = Pop_OptrStack(optr, top);
                    c = Operate(b, a, top);
                    Push_OpndStack(opnd, c);
                    Push_OptrStack(optr, cString[i]);
                }
                break;
            case ')':
                //Push_OptrStack(optr, cString[i]);
            {
                a = Pop_OpndStack(opnd, a);
                b = Pop_OpndStack(opnd, b);
                top = Pop_OptrStack(optr, top);
                c = Operate(b, a, top);
                Push_OpndStack(opnd, c);
            }

                break;
            case '\0':
                break;
            default:
                j = 0;
                do {
                    d[j++] = cString[i];
                    i++;
                } while ((cString[i] >= '0' && cString[i] <= '9') || cString[i] == '.');
                d[j] = '\0';
                i--;
                f = atof(d);
                Push_OpndStack(opnd, f);
                break;
        }
    }
    while (Empty_OptrStack(optr)) {
        if ((GetTop_OptrStack(optr, top) == ')') || (GetTop_OptrStack(optr, top) == '(')) {
            top=Pop_OptrStack(optr, top);
        }
        else {
            a = Pop_OpndStack(opnd, a);
            b = Pop_OpndStack(opnd, b);
            top = Pop_OptrStack(optr, top);
            c = Operate(b, a, top);
            Push_OpndStack(opnd, c);
        }

    }
    
    NSString *stringFloat = [NSString stringWithFormat:@"%f",c];
    //c是double值转为string
    return stringFloat;
}


- (BOOL)inputRegular:(NSString *)string addLongString:(NSString *)longString {
    
    if (longString.length > 0) {
        if ([[longString substringFromIndex:longString.length - 1] isEqualToString:@"+"] ||
            [[longString substringFromIndex:longString.length - 1] isEqualToString:@"-"] ||
            [[longString substringFromIndex:longString.length - 1] isEqualToString:@"*"] ||
            [[longString substringFromIndex:longString.length - 1] isEqualToString:@"/"] ||
            [[longString substringFromIndex:longString.length - 1] isEqualToString:@"."] ) {
            return 0;
        } else {
            return 1;
        }
    } else {
        if ( [string isEqualToString:@"+"] ||
            [string isEqualToString:@"-"] ||
            [string isEqualToString:@"*"] ||
            [string isEqualToString:@"/"] ||
            [string isEqualToString:@"."] ) {
            return 0;
        } else {
            return 1;
        }
    }
}

@end
