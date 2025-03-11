//
//  ListCell.h
//  live-code
//
//  Created by Martinus Galih Widananto on 11/03/25.
//

#import <UIKit/UIKit.h>

@interface ListCell : UITableViewCell

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *idLabel;

- (void)configure:(id)title itemId:(NSInteger)itemId;

@end
