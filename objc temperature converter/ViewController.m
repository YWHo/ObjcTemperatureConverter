//
//  ViewController.m
//  objc temperature converter
//
//  Created by Brian Ho on 15/02/2017.
//  Copyright © 2017 Brian Ho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UISegmentedControl *segmentedControl;
@property (nonatomic, weak) IBOutlet UITextField *textField;
@property (nonatomic, weak) IBOutlet UILabel *label;
@property BOOL fahrenheit;

@end

@implementation ViewController

@synthesize segmentedControl;
@synthesize textField;
@synthesize label;
@synthesize fahrenheit;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    textField.delegate = self;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertTempeture:(id)sender {
    if(segmentedControl.selectedSegmentIndex==0) {
        fahrenheit = NO;
    } else {
        fahrenheit = YES;
    }

    float temperature;
    float userTemp;
    
    userTemp = [self.textField.text floatValue];
    
    // Refresh user key-in data
    if (userTemp == 0) {
        self.textField.text = @"0";
    }

    
    if(fahrenheit) {
        temperature = (9.0/5.0) * userTemp + 32;
    } else {
        temperature = (5.0/9.0) * (userTemp - 32);
    }

    label.text = [NSString stringWithFormat:@"%.1f", temperature];
}

-(BOOL)textFieldShouldReturn:(UITextField *)tField {
    [tField resignFirstResponder];
    return YES;
}

@end
