//
//  MainViewController.m
//  testApp
//
//  Created by ETCL Dev on 2013-04-17.
//  Copyright (c) 2013 ETCL. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()


@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UILabel *label;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //create text fields and set frame
    self.textField = [[UITextField alloc]
                       initWithFrame:CGRectMake(10.0f,30.0f,300.0f,30.0f)];
    self.textField.delegate = self;
    
    // change the border style so the text field appears on screen
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    
    // add text field to main view
    [self.view addSubview:self.textField];
    
    // initialize the button with the default, rounded rect type
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    // set the button's frame
    button.frame = CGRectMake(110.0f, 200.0f, 100.0f, 30.0f);
    
    // set the target, action, and control event.
    [button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    //set the title
    [button setTitle:@"Press Me!" forState:UIControlStateNormal];
    
    //add the button to the main view
    [self.view addSubview:button];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(115.0f,  150.0f, 200.0f, 30.0f)];
    self.label.text = @"Hello World!";
    [self.view addSubview:self.label];

}

- (void)buttonPressed {
    self.label.text = self.textField.text;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    // remove keyboard from forefront
    [textField resignFirstResponder];
    // returns No. Instead of adding line break, text fireld resigns
    return NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
