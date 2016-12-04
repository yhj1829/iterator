//
//  ViewController.m
//  遍历
//
//  Created by 阳光 on 16/12/4.
//  Copyright © 2016年 阳光. All rights reserved.
//

#import "ViewController.h"
#import <XCLog.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   // 用NSEnumerator遍历
//    [self iteratorWithEnumerator];
    

    // 用For in 快速遍历
//    [self iteratorWithForIn];
    
    
    // 基于block遍历
//    [self iteratorWithBlock];
    
    // 基于For遍历
    [self iteratorWithFor];
    
    
}

// 基于For遍历
-(void)iteratorWithFor
{
    // 数组
//    NSArray *arr=@[@"1",@"2",@"3",@"4"];
//    for (int i=0;i<[arr count]; i++) {
//        NSLog(@"obj--%@",arr[i]);
//    }
    
    // 字典
//    NSDictionary *dic=@{
//                        @"4":@"one",
//                        @"2":@"two",
//                        @"3":@"three"
//                        };
//    NSArray *dicKey=[dic allKeys];
//    NSLog(@"dicKey--%@",dicKey);
//    
//    for (int i=0;i<[[dic allKeys]count];i++) {
//        NSString *key=dicKey[i];
//        NSLog(@"key:%@--obj:%@",key,dic[key]);
//    }
    
    
    // 集合
//    NSSet *setArr=[[NSSet alloc]initWithObjects:@"one",@"two",@"three",@"four",nil];
//    NSArray *setObjArr=[setArr allObjects];
//    for (int i=0;i<[setObjArr count];i++) {
//        NSLog(@"obj--%@",setObjArr[i]); // 随机
//    }
    
    // 逆向遍历
    NSArray *arr=@[@"1",@"2",@"3",@"4"];
    for (NSInteger i=[arr count]-1;i>=0;i--) {
        NSLog(@"obj--%@",arr[i]);
    }
}


// 基于block遍历
-(void)iteratorWithBlock
{
   // 数组
//    NSArray *arr=@[@"1",@"2",@"3",@"4"];
//    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        NSLog(@"%lu---%@",(unsigned long)idx,obj);
//    }];
    
    // 字典
//    NSDictionary *dic=@{
//                        @"4":@"one",
//                        @"2":@"two",
//                        @"3":@"three"
//                        };
//    [dic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
//         NSLog(@"%@---%@",key,obj);
//    }];
    
    // 集合
//    NSSet *setArr=[[NSSet alloc]initWithObjects:@"one",@"two",@"three",@"four",nil];
//    [setArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, BOOL * _Nonnull stop) {
//         NSLog(@"%@",obj); // 随机
//    }];
    
    // 逆向遍历
    NSArray *arr=@[@"1",@"2",@"3",@"4"];
    [arr enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          NSLog(@"%lu---%@",(unsigned long)idx,obj);
    }];
    
}

// 用For in 快速遍历
-(void)iteratorWithForIn
{
    // 数组
//    NSArray *arr=@[@"1",@"2",@"3",@"4"];
//    for (id obj in arr) {
//        NSLog(@"obj--%@",obj);
//    }
    
    // 字典
//    NSDictionary *dic=@{
//                        @"4":@"one",
//                        @"2":@"two",
//                        @"3":@"three"
//                        };
//    for (id obj in dic) {
//      NSLog(@"obj--%@",dic[obj]);
//    }
    
    // 集合
//    NSSet *setArr=[[NSSet alloc]initWithObjects:@"one",@"two",@"three",@"four",nil];
//    for (id obj in setArr) {
//        NSLog(@"obj---%@",obj); // 随机
//    }
    
    // 逆向遍历
    NSArray *arr=@[@"1",@"2",@"3",@"4"];
    for (id obj in [arr reverseObjectEnumerator]) {
          NSLog(@"obj---%@",obj);
    }
    
}

// 用NSEnumerator遍历
-(void)iteratorWithEnumerator
{
    // 数组
//    NSArray *arr=@[@"1",@"2",@"3",@"4"];
//    NSEnumerator *arrEnumerator=[arr objectEnumerator];
//    NSString *obj;
//    while ((obj=[arrEnumerator nextObject])!=nil) {
//        NSLog(@"obj---%@",obj);
//    }
    
    
    // 字典
//    NSDictionary *dic=@{
//                        @"1":@"one",
//                        @"2":@"two",
//                        @"3":@"three"
//                        };
//    NSEnumerator *dicEnumerator=[dic keyEnumerator];
//    NSString *key;
//    while ((key=[dicEnumerator nextObject])!=nil) {
//        NSString *obj=dic[key];
//        NSLog(@"obj---%@",obj);
//    }
    
    
    // 集合
//    NSSet *setArr=[[NSSet alloc]initWithObjects:@"one",@"two",@"three",@"four",nil];
//    NSEnumerator *setEnumerator=[setArr objectEnumerator];
//    NSString *obj;
//    while ((obj=[setEnumerator nextObject])!=nil) {
//        NSLog(@"obj--%@",obj);  // 打印随机
//    }
    
    
    // 逆向遍历
    NSArray *arr=@[@"1",@"2",@"3",@"4"];
    NSEnumerator *arrEnumerator=[arr reverseObjectEnumerator];
    NSString *obj;
    while ((obj=[arrEnumerator nextObject])!=nil) {
        NSLog(@"obj---%@",obj);
    }
    
}

@end
