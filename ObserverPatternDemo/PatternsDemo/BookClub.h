//
//  BookClub.h
//  PatternsDemo
//
//  Created by ohuratc on 26.03.15.
//  Copyright (c) 2015 Huralnyk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PostMarket.h"

@interface BookClub : NSObject <PostMarket>

@property (nonatomic, strong) NSArray *catalog;

@end
