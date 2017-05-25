//
//  NSURL+url.m
//  runtime1
//
//  Created by wdwk on 2017/5/25.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "NSURL+url.h"
#import <objc/runtime.h>
@implementation NSURL (url)
+(void)load{
    //当.m文件被加载的时候，此方法就被调用,所以在此时处理运行时方法交换最好；
    NSLog(@"load");
//    交换方法实现；
//    拿到两个方法，Method;通过runTime来拿；
//     class_getClassMethod获取类方法
//    class_getInstanceMethod获取对象方法；
//    现在我们要获取的都是类方法
    //系统的方法
  Method URLWithString= class_getClassMethod(self, @selector(URLWithString:));
    //我们定义的分类中的方法
  Method ZL_URLWithStr= class_getClassMethod(self, @selector(ZL_URLWithStr:));
    //进行方法交换；
    method_exchangeImplementations(URLWithString, ZL_URLWithStr);
    
}

+(instancetype)ZL_URLWithStr:(NSString *)str{
    //此处ZL_URLWithStr通过方法交换调用的是系统的方法；
    NSURL * url=[NSURL ZL_URLWithStr:str];
    if (url==nil) {
        NSLog(@"url为空");
    }
    return url  ;
}
@end
