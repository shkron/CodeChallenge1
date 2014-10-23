//
//  ViewController.m
//  CodeChallenge1
//
//  Created by Alex on 10/23/14.
//  Copyright (c) 2014 Alexey Emelyanov. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstMultiplier;
@property (weak, nonatomic) IBOutlet UITextField *secondMultiplier;
@property (weak, nonatomic) IBOutlet UIButton *webButton;
@property (strong, nonatomic) NSString *resultString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webButton.enabled = NO;



}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *vc = segue.destinationViewController;
    vc.title = self.resultString;
}

- (IBAction)calculateButton:(UIButton *)sender {

    int firstNumber = [self.firstMultiplier.text intValue];
    int secondNumber = [self.secondMultiplier.text intValue];
    int result = firstNumber * secondNumber;
    self.resultString = [NSString stringWithFormat:@"%i",result];
    self.title = self.resultString;
    [self.view endEditing:YES];
    if ((result % 5) == 0)
    {
        self.webButton.enabled = YES;
    } else
    {
        self.webButton.enabled = NO;
    }



}

@end
