//
//  AddViewController.m
//  Lab08
//
//  Created by X Code User on 7/21/14.
//  Copyright (c) 2014 Joshua Spicer, Fabio Germann. All rights reserved.
//

#import "AddViewController.h"
#include <Parse/Parse.h>

@interface AddViewController ()

@end

@implementation AddViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveNewItem:(id)sender {
    PFObject* testObject = [PFObject objectWithClassName:@"Grocery"];
    testObject[@"item"] = self.groceryItem.text;
    testObject[@"check"] = @"0";
    //[testObject saveInBackground];
    [testObject saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            [self.navigationController popToRootViewControllerAnimated:YES];
        }
    }];
}

- (IBAction)cancleButton:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
