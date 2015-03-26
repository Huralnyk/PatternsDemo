//
//  BookClub.m
//  PatternsDemo
//
//  Created by ohuratc on 26.03.15.
//  Copyright (c) 2015 Huralnyk. All rights reserved.
//

#import "BookClub.h"
#import "Subscriber.h"

@interface BookClub ()

@property (nonatomic, strong) NSMutableArray *subscribers; // of Subscribers


@end

@implementation BookClub

- (void)setCatalog:(NSArray *)catalog
{
    _catalog = catalog;
    [self notify];
}

- (NSMutableArray *)subscribers
{
    if(!_subscribers) _subscribers = [[NSMutableArray alloc] init];
    return _subscribers;
}

- (void)addSubscriber:(id <Subscriber>)subscriber
{
    [self.subscribers addObject:subscriber];
}

- (void)removeSubscriber:(id <Subscriber>)subscriber
{
    [self.subscribers removeObject:subscriber];
}

- (void)notify
{
    for(id <Subscriber> subscriber in self.subscribers) {
        [subscriber update:self];
    }
}

@end
