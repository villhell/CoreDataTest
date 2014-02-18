//
//  CoreDataController.h
//  CoreDataTest
//
//  Created by villhell on 2014/02/18.
//  Copyright (c) 2014年 villhell. All rights reserved.
//
#import "CoreDataCommon.h"
#import <Foundation/Foundation.h>

@interface CoreDataController : NSObject{
    int seqCount;
    CoreDataCommon *coredata;
}

- (void) Initialize;
- (void) Insert;
- (NSString *) Read;
- (void) Delete;

@end
