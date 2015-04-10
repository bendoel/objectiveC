//
//  FoodListTableViewController.h
//  ToDoList
//
//  Created by santoso on 4/10/15.
//  Copyright (c) 2015 breezl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoodListTableViewController : UITableViewController

@property NSMutableArray *foodItems;

- (IBAction)unwindToList:(UIStoryboardSegue *)segue;

@end
