//
//  HIViewController.m
//  Hisset
//
//  Created by Philip Vasilchenko on 21.07.14.
//  Copyright (c) 2014 Okolodev. All rights reserved.
//

#import "HIViewController.h"
#import "HICoverCell.h"


@interface HIViewController ()
@property (nonatomic, strong) NSArray * dataSource;
@end


@implementation HIViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];

    self.dataSource = @[ @"Foo", @"Bar",  @"Baz" ];
    [self registerCellClass:[HICoverCell class] forModelClass:[NSString class]];
    [self.memoryStorage addItems:self.dataSource];
}


- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


#pragma mark - Collection View Delegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@", indexPath);
}


@end
