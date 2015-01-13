//
//  MagicalRecordExtensionsTests.m
//  MagicalRecordExtensionsTests
//
//  Created by Simone Fantini on 12/01/15.
//  Copyright (c) 2015 BSDSoftware. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Master.h"
#import "Detail.h"
#import "NSManagedObject+BSDMagicalRecordExtensions.h"
#import <CoreData+MagicalRecord.h>

@interface MagicalRecordExtensionsTests : XCTestCase

@end

@implementation MagicalRecordExtensionsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
	
	[MagicalRecord setupCoreDataStackWithAutoMigratingSqliteStoreNamed:@"test-db.sqlite"];
	
//	NSArray *data = [Master MR_findAll];
//	if (data.count == 0) {
//		[self popolaDBTest];
//	}
}

- (void)popolaDBTest {
	[MagicalRecord saveWithBlockAndWait:^(NSManagedObjectContext *localContext) {
		Master *m = [Master MR_createEntityInContext:localContext];
		m.masterIdValue = 1;
		m.masterName = @"Master1";
		
		for (int i = 1; i < 10; i++) {
			Detail *d = [Detail MR_createEntityInContext:localContext];
			d.detailIdValue = i;
			d.detailName = [NSString stringWithFormat:@"Dett-%d", i];
			[m addDetailsObject:d];
		}
	}];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
	[MagicalRecord cleanUp];
    [super tearDown];
}

- (void)testShouldReturnFaultedEntities {
	Master *m = [Master MR_findFirstWithPredicate:[NSPredicate predicateWithFormat:@"masterId == 1"]];
	BOOL mIsFaulted = m.isFault;
	BOOL detailsAreFaulted = [m hasFaultForRelationshipNamed:@"details"] || [[m.details anyObject] isFault];
	XCTAssertTrue(mIsFaulted || detailsAreFaulted, @"The returned entity should be in fault state");
}

- (void)testShouldNotReturnFaultedEntites {
	Master *m = [Master BSDMR_eagerFindFirstWithPredicate:[NSPredicate predicateWithFormat:@"masterId == 1"] relationsToPrefetch:@[NSStringFromSelector(@selector(details))]];
	BOOL mIsFaulted = m.isFault;
	BOOL detailsAreFaulted = [m hasFaultForRelationshipNamed:@"details"];
	XCTAssertFalse(mIsFaulted || detailsAreFaulted, @"The returned entities should not be in fault state");
}

@end
