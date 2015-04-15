//
//  BankCDViewController.h
//  BankCD
//
//  Created by santoso on 4/13/15.
//  Copyright (c) 2015 breezl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BankCDViewController : UITableViewController

/*
 
 what is : 
 nonatomic
 strong
 Class_name*
 
 */

@property (nonatomic, strong) NSManagedObjectContext* managedObjectContext;

@end
