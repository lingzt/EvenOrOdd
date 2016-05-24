//
//  ViewController.m
//  EvenOrOdd
//
//  Created by ling toby on 5/23/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.

/*
 In this exercise, you will be required to accept input from the user through a text field
 
 Your app should allow the user to enter a number, then let the user know (by displaying a message on the screen) whether the number they entered is even or odd
 
 Your app should evaluate the user’s number when the user presses an “Evaluate” button
 
 Your app should display an error message if the user enters anything other than a whole number
 */

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//MARK: - Properties

NSString *userInput = @"";



//MARK: - Life Cycle Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initiateView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//MARK: - Interactivity Methods

    //1. initiate the View
-(void)initiateView{
    self.instrLabel.text = @"Give me a number???";
    self.userInputTxtField.text = @"";
    self.resultLabel.text = @"";
    //self.evaluateButton.  inactived
}


    //3. convert String to Int
    //4. evaluate input
-(void)evaluateUserInput: (NSString *)input{
    if([input isEqualToString:@"0"]){
        self.resultLabel.text = @"0 is a even number";
    }
    else{
        // use floatValue to grab the number out of String and convert it to float type.
        int inputInFloat = [input floatValue];
        //inputInFloat== 0, check if the string contain no number.
        //inputInFloat!= ceilf([input floatValue], check if the number is a whole number.
        if(inputInFloat== 0 || inputInFloat!= ceilf([input floatValue])){
            self.instrLabel.text = @"%";
            self.resultLabel.text = @"Please type in a real whole number";
        }else if (inputInFloat%2==0){
            self.resultLabel.text = @"It is a even number";
        }else{
            self.resultLabel.text = @"It is a odd number";
        }
    }
}

    //2.button pressed
- (IBAction)evaButtonPressed:(UIButton *)sender {
    userInput = self.userInputTxtField.text;
    [self evaluateUserInput:userInput];
}
@end
