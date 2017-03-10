//
//  PersonalViewModel.m
//  mvvmDemo
//
//  Created by Barney on 2017/3/10.
//  Copyright © 2017年 Barney. All rights reserved.
//

#import "PersonalViewModel.h"

@implementation PersonalViewModel

- (instancetype)initWithPerson:(PersonModel *)person {
    self = [super init];
    if (!self) return nil;
    
    _person = person;
    if (person.salutation.length > 0) {
        _nameText = [NSString stringWithFormat:@"%@ %@ %@", self.person.salutation, self.person.firstName, self.person.lastName];
    } else {
        _nameText = [NSString stringWithFormat:@"%@ %@", self.person.firstName, self.person.lastName];
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE MMMM d, yyyy"];
    _birthdateText = [dateFormatter stringFromDate:person.birthdate];
    
    return self;
}

@end
