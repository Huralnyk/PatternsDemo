//
//  Subscriber.h
//  PatternsDemo
//
//  Created by ohuratc on 26.03.15.
//  Copyright (c) 2015 Huralnyk. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Subscriber <NSObject> // Observer

- (void)update:(id)postMarket;

@end
