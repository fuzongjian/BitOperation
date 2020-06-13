//
//  ZJPerson1.m
//  BitOperation
//
//  Created by 付宗建 on 2020/6/13.
//  Copyright © 2020 52body. All rights reserved.
//

#import "ZJPerson1.h"
// 是以二进制表示
#define ZJTallMask (1<<0)       // 1向左移动0为   1   0b00000001   1
#define ZJRichMask (1<<1)       // 1向左移动1为   10  0b00000010   2
#define ZJHandSomeMask (1<<2)   // 1向左移动2位为 100  0b00000100   4
@interface ZJPerson1()
{
    char _bits;
}
@end
@implementation ZJPerson1
- (instancetype)init{
    if(self = [super init])
    {
        _bits = 0b00000100; // 初始化默认handsome为1
        NSLog(@"%c", _bits);
    }
    return self;
}
- (void)setTall:(BOOL)tall{
    if(tall){
        _bits |= ZJTallMask;// _bits | 0b00000001
    }else{
        _bits &= ~ZJTallMask;// bits & 0b11111110
    }
}
- (void)setRich:(BOOL)rich{
    if(rich){
        _bits |= ZJRichMask;// _bits | 0b00000010
    }else{
        _bits &= ~ZJRichMask;// bits & 0b11111101
    }
}
-(void)setHandsome:(BOOL)handsome{
    if(handsome){
        _bits |= ZJHandSomeMask;// _bits | 0b00000100
    }else{
        _bits &= ~ZJHandSomeMask;// bits & 0b11111011
    }
}
- (BOOL)isTall{
    return !!(_bits & ZJTallMask);// _bits & 0b00000001  !!(8) = 1  
}
- (BOOL)isRich{
    return !!(_bits & ZJRichMask); 
}
- (BOOL)isHandsome{
    return !!(_bits & ZJHandSomeMask);
}
@end
