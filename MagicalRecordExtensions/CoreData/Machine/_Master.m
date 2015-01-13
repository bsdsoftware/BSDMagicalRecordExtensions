// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Master.m instead.

#import "_Master.h"

const struct MasterAttributes MasterAttributes = {
	.masterId = @"masterId",
	.masterName = @"masterName",
};

const struct MasterRelationships MasterRelationships = {
	.details = @"details",
};

@implementation MasterID
@end

@implementation _Master

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Master" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Master";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Master" inManagedObjectContext:moc_];
}

- (MasterID*)objectID {
	return (MasterID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"masterIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"masterId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic masterId;

- (int32_t)masterIdValue {
	NSNumber *result = [self masterId];
	return [result intValue];
}

- (void)setMasterIdValue:(int32_t)value_ {
	[self setMasterId:@(value_)];
}

- (int32_t)primitiveMasterIdValue {
	NSNumber *result = [self primitiveMasterId];
	return [result intValue];
}

- (void)setPrimitiveMasterIdValue:(int32_t)value_ {
	[self setPrimitiveMasterId:@(value_)];
}

@dynamic masterName;

@dynamic details;

- (NSMutableSet*)detailsSet {
	[self willAccessValueForKey:@"details"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"details"];

	[self didAccessValueForKey:@"details"];
	return result;
}

@end

