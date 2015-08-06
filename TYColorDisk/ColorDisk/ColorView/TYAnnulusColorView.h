//
//  TYAnnulusColorView.h
//  TYColorDisk
//
//  Created by Demon_Yao on 7/30/15.
//  Copyright (c) 2015 Tyrone Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TYAnnulusColorViewDelegate <NSObject>

- (void)colorChangeWithNewColor:(UIColor *)color;

- (void)brightnessChangedWithNumber:(NSInteger)brihtnessNumber;

@end

@interface TYAnnulusColorView : UIView

@property (nonatomic, weak) IBOutlet id<TYAnnulusColorViewDelegate> delegate;

@end
