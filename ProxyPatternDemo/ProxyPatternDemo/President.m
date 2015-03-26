//
//  President.m
//  ProxyPatternDemo
//
//  Created by ohuratc on 26.03.15.
//  Copyright (c) 2015 Huralnyk. All rights reserved.
//

#import "President.h"
#import "Master.h"
#import "Demos.h"

@implementation President

- (void)runAway
{
    NSLog(@"President speaking... Sorry people! Buy, buy! But remember I'm legitimate.\n");
}

- (void)answer:(id)whoever
{
    if([whoever isKindOfClass:[Master class]])
    {
        NSLog(@"President speaking... Yes, my master! I'm listening.\n");
        
    } else if([whoever isKindOfClass:[Demos class]]) {
        
        Demos *demos = (Demos*)whoever;
        
        if(demos.isArmoredAndDanger) {
            [self runAway];
        } else {
            NSLog(@"President speaking... Bla, bla, bla...\n");
        }
    }
}

@end
