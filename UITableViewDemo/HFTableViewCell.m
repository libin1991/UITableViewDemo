//
//  HFTableViewCell.m
//  UITableViewDemo
//
//  Created by renjinwei on 2020/12/26.
//  Copyright © 2020 renjinwei. All rights reserved.
//

#import "HFTableViewCell.h"
#import "HFShopModal.h"

@implementation HFTableViewCell

//register Cell的初始化会走这个函数
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        UIImageView *iconImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:iconImageView];
        self.iconImageView = iconImageView;
        
        UILabel* titleLable = [[UILabel alloc] init];
        [self.contentView addSubview:titleLable];
        self.titleLable = titleLable;
        
        UILabel* priceLabel = [[UILabel alloc] init];
        [self.contentView addSubview:priceLabel];
        priceLabel.textColor = [UIColor lightGrayColor];
        priceLabel.font = [UIFont systemFontOfSize:14];
        self.priceLabel = priceLabel;

        UILabel* buyCountLable = [[UILabel alloc] init];
        [self.contentView addSubview:buyCountLable];
        buyCountLable.font = [UIFont systemFontOfSize:14];
        buyCountLable.textColor = [UIColor orangeColor];
        self.buyCountLable = buyCountLable;
        
    }
    NSLog(@"%s %p", __func__, self);

    return self;
}

- (void)layoutSubviews
{
    CGFloat space = 10;
    
    CGFloat iconX = space;
    CGFloat iconY = space;
    CGFloat iconW = 88;
    CGFloat iconH = 55;
    
    self.iconImageView.frame = CGRectMake(iconX, iconY, iconW, iconH);
    
    CGFloat titleX = space + CGRectGetMaxX(self.iconImageView.frame);
    CGFloat titleY = space;
    CGFloat titleW = CGRectGetMaxX(self.contentView.frame) - titleX - space;
    CGFloat titleH = 20;
    
    self.titleLable.frame = CGRectMake(titleX, titleY, titleW, titleH);
    
    CGFloat priceX = space + CGRectGetMaxX(self.iconImageView.frame);
    CGFloat priceY = CGRectGetMaxY(self.iconImageView.frame) - 20;
    CGFloat priceW = 50;
    CGFloat priceH = 20;
    
    self.priceLabel.frame = CGRectMake(priceX, priceY, priceW, priceH);
    
    CGFloat buyW = [self.buyCountLable.text sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:17]}].width;
    CGFloat buyX = CGRectGetMaxX(self.contentView.frame) - buyW - space;
    CGFloat buyH = 20;
    CGFloat buyY = CGRectGetMaxY(self.iconImageView.frame) - 20;

    
    self.buyCountLable.frame = CGRectMake(buyX, buyY, buyW, buyH);
    
}

- (void)setShop:(HFShopModal *)shop
{
    _shop = shop;
    
    self.iconImageView.image = [UIImage imageNamed:shop.icon];
    self.titleLable.text = shop.title;
    self.buyCountLable.text = [NSString stringWithFormat:@"%@人买过", shop.buyCount];
    self.priceLabel.text = [NSString stringWithFormat:@"$:%@", shop.price];
}

@end
