//
//  AddFoodItemViewController.m
//  ToDoList
//
//  Created by santoso on 4/10/15.
//  Copyright (c) 2015 breezl. All rights reserved.
//

#import "AddFoodItemViewController.h"

@interface AddFoodItemViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *cancelButton;

@end

@implementation AddFoodItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if(sender != self.saveButton) return;
    
    if(self.textField.text.length >0) {
        self.foodItem = [[FoodItem alloc] init];
        self.foodItem.itemName = self.textField.text;
    }
    
}


@end
