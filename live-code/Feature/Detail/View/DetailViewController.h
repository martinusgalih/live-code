//
//  DetailViewController.h
//  live-code
//
//  Created by Martinus Galih Widananto on 11/03/25.
//

#import <UIKit/UIKit.h>
#import "UserModel.h"

@interface DetailViewController : UIViewController

- (instancetype)initData:(UserModel *)item;

@end
