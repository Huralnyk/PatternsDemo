//
//  BookWorm.m
//  PatternsDemo
//
//  Created by ohuratc on 26.03.15.
//  Copyright (c) 2015 Huralnyk. All rights reserved.
//

#import "BookWorm.h"
#import "BookClub.h"

@implementation BookWorm

- (void)update:(BookClub *)bookClub
{
    for(id book in bookClub.catalog) {
        NSLog(@"I'd love to buy book %@. Pack it!", book);
    }
}

@end
