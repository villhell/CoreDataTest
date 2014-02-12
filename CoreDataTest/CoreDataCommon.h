//
//  CoreDataCommon.h
//  CoreDataTest
//
//  Created by villhell on 2014/02/12.
//  Copyright (c) 2014年 villhell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoreDataCommon: NSObject
{
    NSManagedObjectContext *context;
}

- (void)save;
- (NSMutableArray*)getCoreData:(NSString*)name predicate:(NSPredicate*)predicate;
- (NSManagedObject*)insertCoreData:(NSString*)name;
- (void)deleteCoreData:(NSManagedObject*)object;

@end
