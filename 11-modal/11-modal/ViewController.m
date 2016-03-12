//
//  ViewController.m
//  11-modal
//
//  Created by Kevin on 16/2/23.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)modal:(id)sender {
    TwoViewController *two = [[TwoViewController alloc]init];
//    self.twoVC = two; 一旦控制器被销毁,它里面的业务逻辑就不能处理了
    
    
    //modal出来的控制器View添加到窗口上面
    //把窗口的根控制器的View移除
    NSLog(@"%@", self.presentedViewController);
    
    
    [self presentViewController:two animated:YES completion:^{
        NSLog(@"%@", [UIApplication sharedApplication].keyWindow.rootViewController);
    }];
    NSLog(@"%@=====", self.presentedViewController);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
