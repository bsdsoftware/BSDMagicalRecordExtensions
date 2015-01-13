// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Master.h instead.

@import CoreData;

extern const struct MasterAttributes {
	__unsafe_unretained NSString *masterId;
	__unsafe_unretained NSString *masterName;
} MasterAttributes;

extern const struct MasterRelationships {
	__unsafe_unretained NSString *details;
} MasterRelationships;

@class Detail;

@interface MasterID : NSManagedObjectID {}
@end

@interface _Master : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) MasterID* objectID;

@property (nonatomic, strong) NSNumber* masterId;

@property (atomic) int32_t masterIdValue;
- (int32_t)masterIdValue;
- (void)setMasterIdValue:(int32_t)value_;

//- (BOOL)validateMasterId:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* masterName;

//- (BOOL)validateMasterName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *details;

- (NSMutableSet*)detailsSet;

@end

@interface _Master (DetailsCoreDataGeneratedAccessors)
- (void)addDetails:(NSSet*)value_;
- (void)removeDetails:(NSSet*)value_;
- (void)addDetailsObject:(Detail*)value_;
- (void)removeDetailsObject:(Detail*)value_;

@end

@interface _Master (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveMasterId;
- (void)setPrimitiveMasterId:(NSNumber*)value;

- (int32_t)primitiveMasterIdValue;
- (void)setPrimitiveMasterIdValue:(int32_t)value_;

- (NSString*)primitiveMasterName;
- (void)setPrimitiveMasterName:(NSString*)value;

- (NSMutableSet*)primitiveDetails;
- (void)setPrimitiveDetails:(NSMutableSet*)value;

@end
