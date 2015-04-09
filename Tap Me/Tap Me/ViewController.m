//
//  ViewController.m
//  Tap Me
//
//  Created by santoso on 4/9/15.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupGame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
//    scoreLabel.text = @"Pressed!";
    count++;
    
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%li", count];
}

- (void)setupGame {
    //1 init game value
    seconds = 30;
    count = 0;
    
    //2 init game label
    timerLabel.text = [NSString stringWithFormat:@"Time : %li", seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%li", count];
    
    //3
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:(nil)
                                            repeats:(YES)];
}

- (void)subtractTime {
    //1
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time : %li", seconds];
    
    //2
    if(seconds == 0) {
        [timer invalidate];
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Time is up !!"
                                                            message:[NSString stringWithFormat:@"You scored %li",  (long)count]
                                                           delegate:self
                                                  cancelButtonTitle:@"Play Again"
                                                  otherButtonTitles:nil];
        [alertView show];
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self setupGame];
}

@end
