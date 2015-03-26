//
//  main.m
//  ProxyPatternDemo
//
//  Created by ohuratc on 26.03.15.
//  Copyright (c) 2015 Huralnyk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PresidentProxy.h"
#import "Demos.h"
#import "Master.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        PresidentProxy *presidentProxy = [[PresidentProxy alloc] init];
        Master *master = [[Master alloc] init];
        Demos *demos = [[Demos alloc] init];
        NSObject *somebody = [[NSObject alloc] init];
        
        [presidentProxy answer:demos];
        [presidentProxy answer:master];
        [presidentProxy answer:somebody];
        
        demos.armoredAndDanger = YES;
        
        [presidentProxy answer:demos];
    }
    return 0;
}
