//
//  NSString+DuplicateString.m
//  iOS6-Tasks-Objc
//
//  Created by Paul Solt on 7/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "NSString+DuplicateString.h"

@implementation NSString (DuplicateString)

- (NSString *)lsi_duplicateString {
    return [NSString stringWithFormat:@"%@%@", self, self];
}

@end
