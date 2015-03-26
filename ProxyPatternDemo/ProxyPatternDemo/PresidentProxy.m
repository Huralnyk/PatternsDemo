//
//  PresidentProxy.m
//  ProxyPatternDemo
//
//  Created by ohuratc on 26.03.15.
//  Copyright (c) 2015 Huralnyk. All rights reserved.
//

#import "PresidentProxy.h"
#import "Master.h"
#import "Demos.h"

@interface PresidentProxy ()

@property (nonatomic, strong) President *president;

@end

@implementation PresidentProxy

- (void)answer:(id)whoever
{
    if([whoever isKindOfClass:[Demos class]]) {
        
        if(![whoever isArmoredAndDanger]) {
            NSLog(@"Proxy speaking... President is busy. He's working\n");
        } else {
            [self.president answer:whoever];
        }
        
    } else if([whoever isKindOfClass:[Master class]]) {
        
        if(!self.president) {
            self.president = [[President alloc] init];
            [self.president answer:whoever];
        }
        
    } else {
        NSLog(@"Proxy speaking... Bla, bla, bla...\n");
    }
}

@end
