//
//  ZJPerson2.h
//  BitOperation
//
//  Created by 付宗建 on 2020/6/13.
//  Copyright © 2020 52body. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZJPerson2 : NSObject
- (void)setTall:(BOOL)tall;
- (void)setRich:(BOOL)rich;
- (void)setHandsome:(BOOL)handsome;

- (BOOL)isTall;
- (BOOL)isRich;
- (BOOL)isHandsome;
@end

NS_ASSUME_NONNULL_END
