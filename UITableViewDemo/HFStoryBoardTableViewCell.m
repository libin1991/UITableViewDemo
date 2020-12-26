//
//  HFStoryBoardTableViewCell.m
//  UITableViewDemo
//
//  Created by renjinwei on 2020/12/26.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFStoryBoardTableViewCell.h"
#import "HFShopModal.h"

@implementation HFStoryBoardTableViewCell

- (void)setShop:(HFShopModal *)shop
{
    _shop = shop;
    
    self.iconImageView.image = [UIImage imageNamed:shop.icon];
    self.titleLable.text = shop.title;
    self.buyCountLable.text = [NSString stringWithFormat:@"%@人买过", shop.buyCount];
    self.priceLabel.text = [NSString stringWithFormat:@"$:%@", shop.price];
}

@end
