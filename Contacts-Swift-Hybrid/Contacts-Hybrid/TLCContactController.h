//
//  TLCContactController.h
//  Contacts-Hybrid
//
//  Created by Lambda_School_Loaner_219 on 2/24/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact; //Forward class declaration (Swift Class)


NS_ASSUME_NONNULL_BEGIN

@interface TLCContactController : NSObject

//Add lightweight generics to give type info for Swift
@property (nonatomic, readonly) NSArray<Contact *> *contacts;


@end

NS_ASSUME_NONNULL_END
