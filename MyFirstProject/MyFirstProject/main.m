//
//  main.m
//  MyFirstProject
//
//  Created by santoso on 4/8/15.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int answer = 0;
        int guess = 0;
        int turn = 0;
        
        answer = arc4random() % 100 +1;
//        NSLog(@"Answer is %i", answer);
        
        while (answer!=guess) {
            turn+=1;
            NSLog(@" Guess %i : Enter a number between 1 to 100", turn);

            scanf("%i", &guess);
            //        NSLog(@"You entered : %i", guess);
            
            if(guess > answer){
                NSLog(@"Guess using more lower number");
            }
            else if(guess < answer){
                NSLog(@"Guess using more higher number");
            } else {
                //true
                NSLog(@"Correct!! The answer is %i", guess);
            }
        }
        
                NSLog(@"You need to guess %i turn", turn);

    }
    return 0;
}

void methodTest(int a){
}
