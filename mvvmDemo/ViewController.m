//
//  ViewController.m
//  mvvmDemo
//
//  Created by Barney on 2017/3/10.
//  Copyright © 2017年 Barney. All rights reserved.
//

#import "ViewController.h"
#import "PersonalViewModel.h"

@interface ViewController ()

@property (nonatomic, strong) PersonModel       *model;
@property (nonatomic, strong) PersonalViewModel *viewModel;

@property (nonatomic, strong) UILabel           *nameLable;
@property (nonatomic, strong) UILabel           *birthdateLabel;

@end



@implementation ViewController

#pragma mark - Life Circle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // UI
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:self.nameLable];
    [self.view addSubview:self.birthdateLabel];
    
    // 变得非常轻量的赋值
    self.nameLable.text = self.viewModel.nameText;
    self.birthdateLabel.text = self.viewModel.birthdateText;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Getters & Setters
- (PersonModel *)model {
    if (_model == nil) {
        _model = [[PersonModel alloc] initwithSalutation:@"2017"
                                               firstName:@"Wish you"
                                                lastName:@"Happy"
                                               birthdate:[NSDate date]];
    }
    
    return _model;
}

- (PersonalViewModel *)viewModel {
    if (_viewModel == nil) {
        _viewModel = [[PersonalViewModel alloc] initWithPerson:self.model];
    }
    
    return _viewModel;
}

- (UILabel *)nameLable {
    if (_nameLable == nil) {
        _nameLable = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2.0f - 100.0f,
                                                               self.view.frame.size.height/2.0f - 25.0f,
                                                               200.0f,
                                                               50.0f)];
        [_nameLable setBackgroundColor:[UIColor orangeColor]];
    }
    
    return _nameLable;
}

- (UILabel *)birthdateLabel {
    if (_birthdateLabel == nil) {
        _birthdateLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2.0f - 100.0f,
                                                                    200.0f,
                                                                    200.0f,
                                                                    50.0f)];
        [_birthdateLabel setBackgroundColor:[UIColor yellowColor]];
    }
    
    return _birthdateLabel;
}

@end
