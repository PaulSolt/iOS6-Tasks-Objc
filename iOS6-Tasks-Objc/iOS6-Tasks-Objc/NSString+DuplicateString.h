//
//  NSString+DuplicateString.h
//  iOS6-Tasks-Objc
//
//  Created by Paul Solt on 7/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// Category to extend existing code
// NOTE: We can't add new properties that get sythesized

@interface NSString (DuplicateString)

// To prevent collisions we need to prefix our category additions
// You only need to do this with code you don't own, it's fine to
// call it duplicateString if you own the class's source code
- (NSString *)lsi_duplicateString;

@end

NS_ASSUME_NONNULL_END
