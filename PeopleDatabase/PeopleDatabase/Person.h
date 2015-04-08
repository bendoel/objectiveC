//
//  Person.h
//  PeopleDatabase
//
//  Created by santoso on 4/8/15.
//  Copyright (c) 2015 santoso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *firstName;
    NSString *lastName;
    int age;
}

- (void)enterInfo;
- (void)printInfo;

@end
