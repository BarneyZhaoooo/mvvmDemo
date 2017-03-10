//
//  PersonModel.h
//  mvvmDemo
//
//  Created by Barney on 2017/3/10.
//  Copyright © 2017年 Barney. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonModel : NSObject

- (instancetype)initwithSalutation:(NSString *)salutation
                         firstName:(NSString *)firstName
                          lastName:(NSString *)lastName
                         birthdate:(NSDate *)birthdate;

@property (nonatomic, readonly) NSString *salutation;
@property (nonatomic, readonly) NSString *firstName;
@property (nonatomic, readonly) NSString *lastName;
@property (nonatomic, readonly) NSDate   *birthdate;

@end
