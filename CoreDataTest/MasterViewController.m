//
//  MasterViewController.m
//  CoreDataTest
//
//  Created by villhell on 2014/02/12.
//  Copyright (c) 2014年 villhell. All rights reserved.
//

#import "MasterViewController.h"



@implementation MasterViewController

@synthesize textView = _textView;


- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.textView.text = @"";
    controller = [[CoreDataController alloc] init];
    [controller Initialize];
}

-(IBAction)Insert:(id)sender{
    [controller Insert];
}

- (IBAction) Delete:(id)sender{
    [controller Delete];
    self.textView.text = @"";
}

- (IBAction) Read:(id)sender{
    self.textView.text = [controller Read];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
