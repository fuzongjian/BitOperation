//
//  ZJPerson2.m
//  BitOperation
//
//  Created by 付宗建 on 2020/6/13.
//  Copyright © 2020 52body. All rights reserved.
//

#import "ZJPerson2.h"
@interface ZJPerson2 ()
{
    // 位域
    struct{
        char tall : 1;
        char rich : 1;
        char handsome : 1;
    }_bits;
}
@end
@implementation ZJPerson2
- (void)setTall:(BOOL)tall{
    _bits.tall = tall;
}
- (void)setRich:(BOOL)rich{
    _bits.rich = rich;
}
- (void)setHandsome:(BOOL)handsome{
    _bits.handsome = handsome;
}
- (BOOL)isTall{
    return !!_bits.tall;
}
- (BOOL)isRich{
    return !!_bits.rich;
}
- (BOOL)isHandsome{
    return !!_bits.handsome;
}
@end
