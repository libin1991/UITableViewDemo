//
//  HFStoryBoardTableViewCell.h
//  UITableViewDemo
//
//  Created by renjinwei on 2020/12/26.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class HFShopModal;
@interface HFStoryBoardTableViewCell : UITableViewCell
@property (strong, nonatomic)IBOutlet UIImageView* iconImageView;
@property (strong, nonatomic)IBOutlet UILabel* titleLable;
@property (strong, nonatomic)IBOutlet UILabel* priceLabel;
@property (strong, nonatomic)IBOutlet UILabel* buyCountLable;
@property (strong, nonatomic) HFShopModal* shop;
@end

NS_ASSUME_NONNULL_END
