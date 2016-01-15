//
//  MainViewController.m
//  LocalizedDemo
//
//  Created by Ashen on 16/1/14.
//  Copyright © 2016年 Ashen<http://www.devashen.xyz>. All rights reserved.
//

#import "MainViewController.h"

#define ASLocalizedString(key)  [NSString stringWithFormat:@"%@", [[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"]] ofType:@"lproj"]] localizedStringForKey:(key) value:nil table:@"ASLocalized"]]


static NSString *appLanguage = @"appLanguage";

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblShowTxt;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showLbl];
}

- (IBAction)changeLanguage:(UIButton *)sender {
    
    switch (sender.tag) {
        case 101: {
            [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:appLanguage];
        }
            break;
        case 102: {
            [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hant" forKey:appLanguage];
        }
            break;
        case 103: {
            [[NSUserDefaults standardUserDefaults] setObject:@"en" forKey:appLanguage];
        }
            break;
        default:
            break;
    }
    [self showLbl];
}

- (void)showLbl {
    self.lblShowTxt.text = ASLocalizedString(@"showTxt");
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
