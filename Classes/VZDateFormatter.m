//
//  VZDateFormatter.m
//  Vazhno
//
//  Created by Alekseenko Oleg on 04.04.14.
//  Copyright (c) 2014 boloid. All rights reserved.
//

#import "VZDateFormatter.h"

static VZDateFormatter *_formatter = nil;


@implementation VZDateFormatter


#pragma mark - Init -

+ (instancetype)defaultFormatter {
    if (!_formatter) {
        _formatter = [[VZDateFormatter alloc]init];
    }
    return _formatter;
}

- (id)init {
    if (self = [super init]) {
        _dateFormatter = [[NSDateFormatter alloc]init];
    }
    return self;
}

#pragma mark - API -

- (NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)format {
    [_dateFormatter setDateFormat:format];
    return [_dateFormatter stringFromDate:date];
}

- (NSDate *)dateFromString:(NSString *)string withFormat:(NSString *)format {
    [_dateFormatter setDateFormat:format];
    return [_dateFormatter dateFromString:string];
}

- (NSString *)stringFrom_ddMMyyyy_format:(NSDate *)date {
    [_dateFormatter setDateFormat:@"dd.MM.yyyy"];
    return [_dateFormatter stringFromDate:date];
}

- (NSDate *)dateFrom_ddMMyyyy_format:(NSString *)string {
    return [self dateFromString:string withFormat:@"dd.MM.yyyy"];
}

@end
