//
//  MasterViewController.m
//  CoreDataTest
//
//  Created by villhell on 2014/02/12.
//  Copyright (c) 2014年 villhell. All rights reserved.
//

#import "MasterViewController.h"

#import "Test.h"

@implementation MasterViewController

@synthesize textView = _textView;


- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if(seqCount == 0){
        seqCount = 1;
    }
    self.textView.text = @"";
    coredata = [[CoreDataCommon alloc] init];
}

-(IBAction)Insert:(id)sender{
    //追加
    Test* test = (Test*)[coredata insertCoreData:@"Test"];
    test.text = [NSString stringWithFormat:@"テスト%d",seqCount];
    //NSLog(test.text);
    seqCount++;
    test.number = [NSNumber numberWithInt:seqCount];
    [coredata save];
}

- (IBAction) Delete:(id)sender{
    //取得
    NSMutableArray* array2 = [coredata getCoreData:@"Test" predicate:nil];
    

    //削除
    for (NSManagedObject* object in array2) {
        [coredata deleteCoreData:object];
    }
    [coredata save];
    self.textView.text = @"";
}

- (IBAction) Read:(id)sender{
    //取得
    NSMutableArray* array = [coredata getCoreData:@"Test" predicate:nil];
    NSString *result_text = @"";
    NSString *tmpString;
    for(int i = 0; i<array.count; i++)
    {
        NSManagedObject *resultObject = [array objectAtIndex:i];
        tmpString = [resultObject valueForKey:@"text"];
        result_text = [result_text stringByAppendingString:tmpString];
    }
    self.textView.text = result_text;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
