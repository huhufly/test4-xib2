//
//  ItemView.h
//  Test_xib2
//
//  Created by shimi on 13-3-12.
//  Copyright (c) 2013年 com.shimi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemView : UIView
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
+(ItemView *)instanceItemView;
-(void)draw;
@end
