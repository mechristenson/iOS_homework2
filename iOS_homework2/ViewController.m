//
//  ViewController.m
//  iOS_homework2
//
//  Created by Mark Christenson on 2/11/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//
// TODO: Add other buttons to animate the label
// TODO: Add other buttons to change the application layout

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];

    [self setupMyButton];
    [self setupMyLabel];
    [self setupMyTextField];
}

- (void)myButtonClick
{
    label.text = textField.text;
    NSLog(@"INFO: Updating label with: %@", textField.text);
}

- (void)setupMyButton
{
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.backgroundColor = [UIColor blueColor];
    button.frame = CGRectMake(10, 150, 300, 30);
    [button setTitle:@"Update Label" forState:UIControlStateNormal];
    
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(myButtonClick) forControlEvents:UIControlEventTouchUpInside];
}

-(void)setupMyLabel
{
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, 30, 300, 30)];
    label.textColor = [UIColor whiteColor];
    label.text = @"UILabel";
    label.font = [UIFont systemFontOfSize:40];
    label.shadowColor = [UIColor blackColor];
    label.shadowOffset = CGSizeMake(3.0, 3.0);
    
    [self.view addSubview:label];
}

-(void)setupMyTextField
{
    textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 100, 300, 30)];
    textField.backgroundColor = [UIColor darkGrayColor];
    
    [self.view addSubview:textField];
}

@end
