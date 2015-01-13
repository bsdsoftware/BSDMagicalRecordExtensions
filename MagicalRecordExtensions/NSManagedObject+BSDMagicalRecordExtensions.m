//
//  NSManagedObject+BSDMagicalRecordExtensions.m
//  MagicalRecordExtensions
//
//  Created by Simone Fantini on 12/01/15.
//  Copyright (c) 2015 BSDSoftware. All rights reserved.
//

#import "NSManagedObject+BSDMagicalRecordExtensions.h"

@implementation NSManagedObject (BSDMagicalRecordExtensions_EagerLoading)

+ (instancetype)BSDMR_eagerFindFirstWithPredicate:(NSPredicate *)predicate relationsToPrefetch:(NSArray *)keyPaths {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
	return [self BSDMR_eagerFindFirstWithPredicate:predicate relationsToPrefetch:keyPaths inContext:[NSManagedObjectContext MR_contextForCurrentThread]];
#pragma clang diagnostic pop
}

+ (instancetype)BSDMR_eagerFindFirstWithPredicate:(NSPredicate *)predicate relationsToPrefetch:(NSArray *)keyPaths inContext:(NSManagedObjectContext *)context {
	NSFetchRequest *request = [self MR_requestFirstWithPredicate:predicate inContext:context];
	request.returnsObjectsAsFaults = NO;
	request.relationshipKeyPathsForPrefetching = keyPaths;
	return [self MR_executeFetchRequestAndReturnFirstObject:request inContext:context];
}

+ (NSArray *)BSDMR_eagerFindAllWithRelationsToPrefetch:(NSArray *)keyPaths {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
	return [self BSDMR_eagerFindAllWithRelationsToPrefetch:keyPaths inContext:[NSManagedObjectContext MR_contextForCurrentThread]];
#pragma clang diagnostic pop
}

+ (NSArray *)BSDMR_eagerFindAllWithRelationsToPrefetch:(NSArray *)keyPaths inContext:(NSManagedObjectContext *)context {
	NSFetchRequest *request = [self MR_requestAllInContext:context];
	request.returnsObjectsAsFaults = NO;
	request.relationshipKeyPathsForPrefetching = keyPaths;
	return [self MR_executeFetchRequest:request inContext:context];
}

+ (NSArray *)BSDMR_eagerFindAllSortedBy:(NSString *)sortTerm ascending:(BOOL)ascending withPredicate:(NSPredicate *)searchTerm relationsToPrefetch:(NSArray *)keyPaths {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
	return [self BSDMR_eagerFindAllSortedBy:sortTerm ascending:ascending withPredicate:searchTerm relationsToPrefetch:keyPaths inContext:[NSManagedObjectContext MR_contextForCurrentThread]];
#pragma clang diagnostic pop
}

+ (NSArray *)BSDMR_eagerFindAllSortedBy:(NSString *)sortTerm ascending:(BOOL)ascending withPredicate:(NSPredicate *)searchTerm relationsToPrefetch:(NSArray *)keyPaths inContext:(NSManagedObjectContext *)context {
	NSFetchRequest *request = [self MR_requestAllSortedBy:sortTerm ascending:ascending withPredicate:searchTerm inContext:context];
	request.returnsObjectsAsFaults = NO;
	request.relationshipKeyPathsForPrefetching = keyPaths;
	return [self MR_executeFetchRequest:request inContext:context];
}


@end