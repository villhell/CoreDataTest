//
//  CoreDataController.m
//  CoreDataTest
//
//  Created by villhell on 2014/02/18.
//  Copyright (c) 2014年 villhell. All rights reserved.
//
#import "CoreDataController.h"
#import "Test.h"

@implementation CoreDataController


- (void) Initialize{
    if(seqCount == 0){
        seqCount = 1;
    }
    coredata = [[CoreDataCommon alloc] init];
}


- (void) Insert{
    //追加
    Test* test = (Test*)[coredata insertCoreData:@"Test"];
    test.text = [NSString stringWithFormat:@"テスト%d",seqCount];
    //NSLog(test.text);
    seqCount++;
    test.number = [NSNumber numberWithInt:seqCount];
    [coredata save];
}

- (NSString *) Read{
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
    return result_text;
}

- (void) Delete{
    //取得
    NSMutableArray* array2 = [coredata getCoreData:@"Test" predicate:nil];
    
    
    //削除
    for (NSManagedObject* object in array2) {
        [coredata deleteCoreData:object];
    }
    [coredata save];
}

@end
