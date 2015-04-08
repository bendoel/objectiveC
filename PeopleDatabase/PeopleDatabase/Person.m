//
//  Person.m
//  PeopleDatabase
//
//  Created by santoso on 4/8/15.
//  Copyright (c) 2015 santoso. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void) enterInfo {
    NSLog(@"What is your first name :");
    char cstring[40];
    scanf("%s", cstring);
    
    firstName = [NSString stringWithCString:cstring encoding:1];
    
    NSLog(@"What is your last name :");
    scanf("%s", cstring);
    
    lastName = [NSString stringWithCString:cstring encoding:1];
    
    NSLog(@"How old are %@ %@ ?", firstName, lastName);
    scanf("%i", &age);
    
}

- (void) printInfo {
    NSLog(@"First name : %@", firstName);
    NSLog(@"%@ %@ is %i years old", firstName, lastName, age);

}
@end
