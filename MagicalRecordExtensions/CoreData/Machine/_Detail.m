// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Detail.m instead.

#import "_Detail.h"

const struct DetailAttributes DetailAttributes = {
	.detailId = @"detailId",
	.detailName = @"detailName",
};

const struct DetailRelationships DetailRelationships = {
	.master = @"master",
};

@implementation DetailID
@end

@implementation _Detail

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Detail" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Detail";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Detail" inManagedObjectContext:moc_];
}

- (DetailID*)objectID {
	return (DetailID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"detailIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"detailId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic detailId;

- (int32_t)detailIdValue {
	NSNumber *result = [self detailId];
	return [result intValue];
}

- (void)setDetailIdValue:(int32_t)value_ {
	[self setDetailId:@(value_)];
}

- (int32_t)primitiveDetailIdValue {
	NSNumber *result = [self primitiveDetailId];
	return [result intValue];
}

- (void)setPrimitiveDetailIdValue:(int32_t)value_ {
	[self setPrimitiveDetailId:@(value_)];
}

@dynamic detailName;

@dynamic master;

@end

