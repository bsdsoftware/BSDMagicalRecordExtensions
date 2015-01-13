// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Detail.h instead.

@import CoreData;

extern const struct DetailAttributes {
	__unsafe_unretained NSString *detailId;
	__unsafe_unretained NSString *detailName;
} DetailAttributes;

extern const struct DetailRelationships {
	__unsafe_unretained NSString *master;
} DetailRelationships;

@class Master;

@interface DetailID : NSManagedObjectID {}
@end

@interface _Detail : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) DetailID* objectID;

@property (nonatomic, strong) NSNumber* detailId;

@property (atomic) int32_t detailIdValue;
- (int32_t)detailIdValue;
- (void)setDetailIdValue:(int32_t)value_;

//- (BOOL)validateDetailId:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* detailName;

//- (BOOL)validateDetailName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) Master *master;

//- (BOOL)validateMaster:(id*)value_ error:(NSError**)error_;

@end

@interface _Detail (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveDetailId;
- (void)setPrimitiveDetailId:(NSNumber*)value;

- (int32_t)primitiveDetailIdValue;
- (void)setPrimitiveDetailIdValue:(int32_t)value_;

- (NSString*)primitiveDetailName;
- (void)setPrimitiveDetailName:(NSString*)value;

- (Master*)primitiveMaster;
- (void)setPrimitiveMaster:(Master*)value;

@end
