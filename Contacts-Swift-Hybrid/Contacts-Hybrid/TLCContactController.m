//
//  TLCContactController.m
//  Contacts-Hybrid
//
//  Created by Lambda_School_Loaner_219 on 2/24/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "TLCContactController.h"
#import  "Contacts_Hybrid-Swift.h"

// Class extension (private properties)

@interface TLCContactController ()
@property (nonatomic) NSMutableArray *internalContacts;

@end

@implementation TLCContactController
// what do I need to do in my initializer
-(instancetype)init {
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
        //for testing
        [self addTestContacts];
    }
    return self;
}

-(void)addTestContacts {
    // I need to be able to import our swift code into Obj-c
  // Contact *contact = [[Contact alloc] init]
    Contact *myself = [[Contact alloc] initWithName:@"Troy C" relationship:@"Myself"];
    Contact *marshall = [[Contact alloc] initWithName:@"Marshall C" relationship:@"Best Hound"];
    
    [self.internalContacts addObjectsFromArray:@[myself, marshall]];
}

//NSArray = immutable (let array = [3,4,5] ie constant
//NSMutableArray = mutable, ,odify it (var array = [3, 4, 5, 6]

// NSMutableArray -> NSArray use: [array copy]
//NSArray -> NSMutableArray use: [array mutableCopy]
-(NSArray *)contacts {
    return [_internalContacts copy ];
}

@end
