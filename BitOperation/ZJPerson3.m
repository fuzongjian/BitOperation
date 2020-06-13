//
//  ZJPerson3.m
//  BitOperation
//
//  Created by 付宗建 on 2020/6/13.
//  Copyright © 2020 52body. All rights reserved.
//

#import "ZJPerson3.h"
// 是以二进制表示
#define ZJTallMask (1<<0)       // 1向左移动0为   1   0b00000001   1
#define ZJRichMask (1<<1)       // 1向左移动1为   10  0b00000010   2
#define ZJHandSomeMask (1<<2)   // 1向左移动2位为 100  0b00000100   4
#define ZJThinMask (1<<3)
@interface ZJPerson3()
{
    union{
        int bits;
        struct{
            char tall : 4;
            char rich : 4;
            char handsome : 4;
            char thin : 4;
        };
    }_tallRichHandsome;
}
@end
@implementation ZJPerson3
- (void)setTall:(BOOL)tall{
    if (tall) {
        _tallRichHandsome.bits |= ZJTallMask;
    }else{
        _tallRichHandsome.bits &= ~ZJTallMask;
    }
}
- (void)setRich:(BOOL)rich{
    if (rich) {
        _tallRichHandsome.bits |= ZJRichMask;
    }else{
        _tallRichHandsome.bits &= ~ZJRichMask;
    }
}
- (void)setHandsome:(BOOL)handsome{
    if (handsome) {
        _tallRichHandsome.bits |= ZJHandSomeMask;
    }else{
        _tallRichHandsome.bits &= ~ZJHandSomeMask;
    }
}
- (void)setThin:(BOOL)thin{
    if (thin) {
        _tallRichHandsome.bits |= ZJThinMask;
    }else{
        _tallRichHandsome.bits &= ~ZJThinMask;
    }
}
- (BOOL)isTall{
    return !!(_tallRichHandsome.bits & ZJTallMask);
}
- (BOOL)isRich{
    return !!(_tallRichHandsome.bits & ZJRichMask);
}
- (BOOL)isHandsome{
    return !!(_tallRichHandsome.bits & ZJHandSomeMask);
}
- (BOOL)isThin{
    return !!(_tallRichHandsome.bits & ZJThinMask);
}
@end
