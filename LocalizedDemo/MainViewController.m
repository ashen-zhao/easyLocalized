//
//  MainViewController.m
//  LocalizedDemo
//
//  Created by Ashen on 16/1/14.
//  Copyright © 2016年 Ashen<http://www.devashen.xyz>. All rights reserved.
//

#import "MainViewController.h"
@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblShowTxt;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblShowTxt.text = NSLocalizedStringFromTable(@"showTxt", @"ASLocalized", nil);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
