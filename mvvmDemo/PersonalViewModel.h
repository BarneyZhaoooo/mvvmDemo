//
//  PersonalViewModel.h
//  mvvmDemo
//
//  Created by Barney on 2017/3/10.
//  Copyright © 2017年 Barney. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonModel.h"

@interface PersonalViewModel : NSObject

- (instancetype)initWithPerson:(PersonModel *)person;

@property (nonatomic, readonly) PersonModel *person;
@property (nonatomic, readonly) NSString    *nameText;
@property (nonatomic, readonly) NSString    *birthdateText;

@end
