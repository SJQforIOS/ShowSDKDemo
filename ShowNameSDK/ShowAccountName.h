//
//  ShowAccountName.h
//  ShowNameSDK
//
//  Created by SJQ on 2019/6/21.
//  Copyright © 2019 西门依北. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ShowAccountNameDelegate <NSObject>

//返回你的姓
- (void)isFinshWithYourFirstName:(NSString *)firstName;

@end

@interface ShowAccountName : NSObject

@property (nonatomic, weak) id <ShowAccountNameDelegate> delegate;

//传入的名字
@property (nonatomic, copy) NSString *accountName;

//打印你的名字
- (void)showNameWithAccount;

@end

NS_ASSUME_NONNULL_END
