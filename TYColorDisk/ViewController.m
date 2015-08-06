//
//  ViewController.m
//  TYColorDisk
//
//  Created by Demon_Yao on 7/30/15.
//  Copyright (c) 2015 Tyrone Zhang. All rights reserved.
//

#import "ViewController.h"
#import "TYAnnulusColorView.h"

@interface ViewController () <TYAnnulusColorViewDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *lightImageView;
@property (weak, nonatomic) IBOutlet UILabel *brightLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:@"halo"];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    self.lightImageView.image = image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TYAnnulusColorViewDelegate
#pragma mark -

- (void)colorChangeWithNewColor:(UIColor *)color
{
//    self.lightImageView.backgroundColor = color;
    self.view.tintColor = color;
}

- (void)brightnessChangedWithNumber:(NSInteger)brihtnessNumber
{
    self.brightLabel.text = [NSString stringWithFormat:@"%ld%%",brihtnessNumber];
}

@end
