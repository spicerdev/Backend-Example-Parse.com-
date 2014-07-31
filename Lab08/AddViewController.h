//
//  AddViewController.h
//  Lab08
//
//  Created by X Code User on 7/21/14.
//  Copyright (c) 2014 Joshua Spicer, Fabio Germann. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController
- (IBAction)saveNewItem:(id)sender;
- (IBAction)cancleButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *groceryItem;

@end
