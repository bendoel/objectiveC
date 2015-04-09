//
//  main.m
//  PeopleDatabase
//
//  Created by santoso on 4/8/15.
//  Copyright (c) 2015 santoso. All rights reserved.
//

//@autoreleasepool {
//    // insert code here...
//    NSString *helloString = @"hello variable!";
//    
//    NSLog(@"%@", helloString);
//    
//    
//    int x = 10;
//    NSString *myString = [NSString stringWithFormat:@"The variable x stores the number %i", x];
//    NSLog(@"%@", myString);
//    
//    NSLog(@"Please enter a word");
//    
//    char cstring[40];
//    
//    scanf("%s", cstring);
//    
//    NSString *inputString = [NSString stringWithCString:cstring encoding:1];
//    
//    //        NSLog(@"You entered the woed '%@'", inputString );
//    NSLog(@"You entered a word '%@' and it is '%li' character long", inputString, [inputString length]);
//}

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char response;
        NSMutableArray *people = [[NSMutableArray alloc] init];
        
        do{
            Person *newPerson = [[Person alloc] init];
            
            [newPerson enterInfo];
            [newPerson printInfo];
            
            [people addObject:newPerson];
            
            NSLog(@"Do you want to enter another name? (y/n)");
            scanf("\n%c",&response);
        } while (response == 'y');
        
        NSLog(@"Number of people in the database : %li", [people count]);
        for (Person *onePerson in people) {
            [onePerson printInfo];
        }

        
    }
    return 0;
}
