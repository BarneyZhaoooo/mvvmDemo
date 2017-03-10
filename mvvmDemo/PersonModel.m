//
//  PersonModel.m
//  mvvmDemo
//
//  Created by Barney on 2017/3/10.
//  Copyright © 2017年 Barney. All rights reserved.
//

#import "PersonModel.h"

@implementation PersonModel

- (instancetype)initwithSalutation:(NSString *)salutation
                         firstName:(NSString *)firstName
                          lastName:(NSString *)lastName
                         birthdate:(NSDate *)birthdate {
    _salutation = salutation;
    _firstName = firstName;
    _lastName = lastName;
    _birthdate = birthdate;
    return self;
}

@end
