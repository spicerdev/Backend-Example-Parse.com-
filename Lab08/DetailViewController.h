//
//  DetailViewController.h
//  Lab08
//
//  Created by X Code User on 7/21/14.
//  Copyright (c) 2014 Joshua Spicer, Fabio Germann. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
