//
//  CasualPerson.m
//  PatternsDemo
//
//  Created by ohuratc on 26.03.15.
//  Copyright (c) 2015 Huralnyk. All rights reserved.
//

#import "CasualPerson.h"
#import "BookClub.h"

@implementation CasualPerson

- (void)update:(BookClub *)bookClub
{
    for(id book in bookClub.catalog) {
        NSLog(@"I don't want book %@", book);
        [bookClub removeSubscriber:self];
    }
    NSLog(@"Whatta prices!? Unsubscibe me!");
}

@end
