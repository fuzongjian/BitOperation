//
//  main.m
//  BitOperation
//
//  Created by 付宗建 on 2020/6/13.
//  Copyright © 2020 52body. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZJPerson.h"
#import "ZJPerson1.h"
#import "ZJPerson2.h"
#import "ZJPerson3.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"==============================person0==============================");
        ZJPerson * personOne = [ZJPerson new];
        personOne.tall = false;
        personOne.rich = YES;
        personOne.handsome = YES;
        NSLog(@"personone tall: %d, rich: %d, handsome: %d", personOne.isTall, personOne.isRich, personOne.isHandsome);
        NSLog(@"==============================person1==============================");
        ZJPerson1 * person1 = [ZJPerson1 new];
        person1.tall = YES;  // setTall:
        person1.rich = YES;  // setRich:
        person1.handsome = NO; // setHandsome
        NSLog(@"person1 tall: %d, rich: %d, handsome: %d", person1.isTall, person1.isRich, person1.isHandsome);
        NSLog(@"==============================person2==============================");
        ZJPerson2 * person2 = [ZJPerson2 new];
        person2.tall = YES;  // setTall:
        person2.rich = NO;  // setRich:
        person2.handsome = NO; // setHandsome
        NSLog(@"person2 tall: %d, rich: %d, handsome: %d", person2.isTall, person2.isRich, person2.isHandsome);
        
        NSLog(@"==============================person3==============================");
        ZJPerson3 * person3 = [ZJPerson3 new];
        person3.tall = YES;  // setTall:
        person3.rich = NO;  // setRich:
        person3.handsome = YES; // setHandsome
        NSLog(@"person3 tall: %d, rich: %d, handsome: %d", person3.isTall, person3.isRich, person3.isHandsome);
    }
    return 0;
}
