//
//  ZJPerson.h
//  BitOperation
//
//  Created by 付宗建 on 2020/6/13.
//  Copyright © 2020 52body. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZJPerson : NSObject
@property (nonatomic, assign, getter=isTall) BOOL  tall;
@property (nonatomic, assign, getter=isRich) BOOL  rich;
@property (nonatomic, assign, getter=isHandsome) BOOL  handsome;
@end

NS_ASSUME_NONNULL_END
