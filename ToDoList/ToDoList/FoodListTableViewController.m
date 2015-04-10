//
//  FoodListTableViewController.m
//  ToDoList
//
//  Created by santoso on 4/10/15.
//  Copyright (c) 2015 breezl. All rights reserved.
//

#import "FoodListTableViewController.h"
#import "FoodItem.h"
#import "AddFoodItemViewController.h"

@interface FoodListTableViewController ()

@end

@implementation FoodListTableViewController

- (void) loadInitData {
    FoodItem *item1 = [[FoodItem alloc] init];
    item1.itemName = @"Mie Ayam";
    [self.foodItems addObject:item1];
    
    FoodItem *item2 = [[FoodItem alloc] init];
    item2.itemName = @"Bubur Ayam";
    [self.foodItems addObject:item2];
    
    FoodItem *item3 = [[FoodItem alloc] init];
    item3.itemName = @"Sop Ayam";
    [self.foodItems addObject:item3];
}

- (IBAction)unwindToList:(UIStoryboardSegue *)segue {
    AddFoodItemViewController *source = [segue sourceViewController];
    FoodItem *item = source.foodItem;
    
    if (item != nil){
        [self.foodItems addObject:item];
        [self.tableView reloadData];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.foodItems = [[NSMutableArray alloc] init];
    [self loadInitData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.foodItems count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    
    // Configure the cell...
    FoodItem *foodItem = [self.foodItems objectAtIndex:indexPath.row];
    cell.textLabel.text = foodItem.itemName;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
