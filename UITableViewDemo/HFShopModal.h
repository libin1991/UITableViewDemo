//
//  HFShopModal.h
//  UITableViewDemo
//
//  Created by renjinwei on 2020/12/26.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HFShopModal : NSObject
@property (strong, nonatomic) NSString *icon;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *price;
@property (strong, nonatomic) NSString *buyCount;

- (instancetype)initWithDic:(NSDictionary*)dic;

@end

NS_ASSUME_NONNULL_END
