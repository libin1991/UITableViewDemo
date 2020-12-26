//
//  HFTableViewCell.h
//  UITableViewDemo
//
//  Created by renjinwei on 2020/12/26.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class HFShopModal;
@interface HFTableViewCell : UITableViewCell
@property (strong, nonatomic)UIImageView* iconImageView;
@property (strong, nonatomic) UILabel* titleLable;
@property (strong, nonatomic) UILabel* priceLabel;
@property (strong, nonatomic) UILabel* buyCountLable;
@property (strong, nonatomic) HFShopModal* shop;
@end

NS_ASSUME_NONNULL_END
