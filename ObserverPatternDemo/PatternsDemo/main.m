//
//  main.m
//  PatternsDemo
//
//  Created by ohuratc on 26.03.15.
//  Copyright (c) 2015 Huralnyk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BookClub.h"
#import "BookWorm.h"
#import "CasualPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        BookClub *bookClub = [[BookClub alloc] init];
        BookWorm *bookWorm = [[BookWorm alloc] init];
        CasualPerson *casualPerson = [[CasualPerson alloc] init];
        
        [bookClub addSubscriber:bookWorm];
        [bookClub addSubscriber:casualPerson];
        
        bookClub.catalog = @[@"A Farewell to Arms", @"The Catcher in the Rye", @"One Flew Over the Cuckoo's Nest", @"Thinking in Java"];
        
        NSLog(@"End of the demo. Thank you!");
    return 0;
    }
}
