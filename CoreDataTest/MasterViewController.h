//
//  MasterViewController.h
//  CoreDataTest
//
//  Created by villhell on 2014/02/12.
//  Copyright (c) 2014年 villhell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreDataCommon.h"
#import <CoreData/CoreData.h>

@interface MasterViewController : UIViewController <NSFetchedResultsControllerDelegate>{
    int seqCount;
    CoreDataCommon *coredata;
}

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, retain) IBOutlet UITextView *textView;

@property (nonatomic, retain) IBOutlet UIButton *btnInsert;
@property (nonatomic, retain) IBOutlet UIButton *btnRead;
@property (nonatomic, retain) IBOutlet UIButton *btnDelete;


- (IBAction) Insert:(id)sender;
- (IBAction) Read:(id)sender;
- (IBAction) Delete:(id)sender;
@end
