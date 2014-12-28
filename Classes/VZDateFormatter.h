//
//  VZDateFormatter.h
//  Vazhno
//
//  Created by Alekseenko Oleg on 04.04.14.
//  Copyright (c) 2014 boloid. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VZDateFormatter : NSObject

+ (instancetype)defaultFormatter;
@property (nonatomic, readonly) NSDateFormatter *dateFormatter;

- (NSString *) stringFromDate:(NSDate *)date withFormat:(NSString *)format;

- (NSDate *)dateFromString:(NSString *)string withFormat:(NSString *)format;

- (NSString *)stringFrom_ddMMyyyy_format:(NSDate *)date;
- (NSDate *)dateFrom_ddMMyyyy_format:(NSString *)string;

@end
