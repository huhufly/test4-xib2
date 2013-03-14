//
//  ItemView.m
//  Test_xib2
//
//  Created by shimi on 13-3-12.
//  Copyright (c) 2013年 com.shimi. All rights reserved.
//

#import "ItemView.h"
#import "ItemModel.h"

@implementation ItemView

@synthesize titleLabel,priceLabel,imageView,descriptionLabel;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

+(ItemView *)instanceItemView{
    NSArray* nibView =  [[NSBundle mainBundle] loadNibNamed:@"ItemView" owner:nil options:nil];
    
    ItemView *itemView= [nibView objectAtIndex:0];
    [itemView draw];
    return itemView;
}

-(void)draw{
    ItemModel *itemModel =[ItemModel itemModel];
    self.titleLabel.text = itemModel.title;
    self.titleLabel.textColor = [UIColor blackColor];
    self.titleLabel.font = [UIFont fontWithName:@"FZZhongDengXian-Z07S" size:16];
    self.titleLabel.backgroundColor = [UIColor clearColor];
    
    //图片
    NSURL *imageUrl = [NSURL URLWithString:itemModel.images];
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:imageUrl]];
    self.imageView.image=image;
    //价格
    self.priceLabel.text=[NSString stringWithFormat:@"%@%@",@"价格：￥",itemModel.price];
    self.priceLabel.font = [UIFont systemFontOfSize:14];
    self.priceLabel.textColor = [UIColor redColor];
    //描述
    self.descriptionLabel.text = itemModel.description;
    self.descriptionLabel.textColor = [UIColor blackColor];
    self.descriptionLabel.font = [UIFont systemFontOfSize:14.0f];
    self.descriptionLabel.numberOfLines = 0;//相当于不限制行数
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
