//
//  ShowAccountName.m
//  ShowNameSDK
//
//  Created by SJQ on 2019/6/21.
//  Copyright © 2019 西门依北. All rights reserved.
//

#import "ShowAccountName.h"

@interface ShowAccountName()

@property (nonatomic, copy) NSString *firstName;

@end

@implementation ShowAccountName

- (void)showNameWithAccount {
    NSLog(@"你的名字:%@",self.accountName);
}

- (void)setAccountName:(NSString *)accountName {
    _accountName = accountName;
    if (self.accountName.length == 0) {
        self.firstName = @"未检测到姓名";
    } else {
        self.firstName = [self.accountName substringToIndex:2];
    }
    
    //触发代理
    if ([self.delegate respondsToSelector:@selector(isFinshWithYourFirstName:)]) {
        [self.delegate isFinshWithYourFirstName:self.firstName];
    }
}

@end
