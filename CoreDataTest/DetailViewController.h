//
//  DetailViewController.h
//  CoreDataTest
//
//  Created by villhell on 2014/02/12.
//  Copyright (c) 2014年 villhell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
