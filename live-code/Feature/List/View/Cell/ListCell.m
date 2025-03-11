//
//  ListCell.m
//  live-code
//
//  Created by Martinus Galih Widananto on 11/03/25.
//

#import "ListCell.h"

@implementation ListCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 10, 300, 20)];
        self.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        [self.contentView addSubview:self.titleLabel];

        self.idLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 35, 300, 15)];
        self.idLabel.font = [UIFont systemFontOfSize:14];
        self.idLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:self.idLabel];
    }
    return self;
}

- (void)configure:(NSString *)title itemId:(NSInteger)itemId {
    self.titleLabel.text = title;
    self.idLabel.text = [NSString stringWithFormat:@"ID: %ld", (long)itemId];
}

@end
