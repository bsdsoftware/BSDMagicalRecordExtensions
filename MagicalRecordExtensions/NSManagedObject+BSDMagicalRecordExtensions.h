//
//  NSManagedObject+BSDMagicalRecordExtensions.h
//  MagicalRecordExtensions
//
//  Created by Simone Fantini on 12/01/15.
//  Copyright (c) 2015 BSDSoftware. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <NSManagedObject+MagicalRecord.h>
#import <NSManagedObjectContext+MagicalThreading.h>
#import <NSManagedObject+MagicalRequests.h>

@interface NSManagedObject (BSDMagicalRecordExtensions_EagerLoading)

+ (instancetype)BSDMR_eagerFindFirstWithPredicate:(NSPredicate *)predicate relationsToPrefetch:(NSArray *)keyPaths;
+ (instancetype)BSDMR_eagerFindFirstWithPredicate:(NSPredicate *)predicate relationsToPrefetch:(NSArray *)keyPaths inContext:(NSManagedObjectContext *)context;

+ (NSArray *)BSDMR_eagerFindAllWithRelationsToPrefetch:(NSArray *)keyPaths;
+ (NSArray *)BSDMR_eagerFindAllWithRelationsToPrefetch:(NSArray *)keyPaths inContext:(NSManagedObjectContext *)context;
+ (NSArray *)BSDMR_eagerFindAllSortedBy:(NSString *)sortTerm ascending:(BOOL)ascending withPredicate:(NSPredicate *)searchTerm relationsToPrefetch:(NSArray *)keyPaths;
+ (NSArray *)BSDMR_eagerFindAllSortedBy:(NSString *)sortTerm ascending:(BOOL)ascending withPredicate:(NSPredicate *)searchTerm relationsToPrefetch:(NSArray *)keyPaths inContext:(NSManagedObjectContext *)context;

@end
