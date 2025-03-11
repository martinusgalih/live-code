//
//  DetailViewController.m
//  live-code
//
//  Created by Martinus Galih Widananto on 11/03/25.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (nonatomic, strong) UserModel *item;
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIStackView *stackView;

@end

@implementation DetailViewController

- (instancetype)initData:(UserModel *)item {
    self = [super init];
    if (self) {
        _item = item;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Detail";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupView];
}

- (void)setupView {
    self.scrollView = [[UIScrollView alloc] init];
    [self.view addSubview:self.scrollView];
    
    self.stackView = [[UIStackView alloc] init];
    self.stackView.axis = UILayoutConstraintAxisVertical;
    self.stackView.spacing = 16;
    self.stackView.layoutMargins = UIEdgeInsetsMake(16, 16, 16, 16);
    self.stackView.layoutMarginsRelativeArrangement = YES;
    [self.scrollView addSubview:self.stackView];
    
    self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    self.stackView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.scrollView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor].active = YES;
    [self.scrollView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active = YES;
    [self.scrollView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active = YES;
    [self.scrollView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
        
    [self.stackView.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [self.stackView.leadingAnchor constraintEqualToAnchor:self.scrollView.leadingAnchor].active = YES;
    [self.stackView.trailingAnchor constraintEqualToAnchor:self.scrollView.trailingAnchor].active = YES;
    [self.stackView.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    [self.stackView.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor].active = YES;
    
    [self generateLabelWithTitle:@"User ID" text:[NSString stringWithFormat:@"%ld", (long)self.item.userId]];
    [self generateLabelWithTitle:@"Object ID" text:[NSString stringWithFormat:@"%ld", (long)self.item.objectId]];
    [self generateLabelWithTitle:@"Title" text:[self.item.title isKindOfClass:[NSString class]] ? self.item.title : [self.item.title description]];
    [self generateLabelWithTitle:@"Body" text:[self.item.body isKindOfClass:[NSString class]] ? self.item.body : [self.item.body description]];
}

- (void)generateLabelWithTitle:(NSString *)title text:(id)text {
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.text = title;
    titleLabel.font = [UIFont boldSystemFontOfSize:16];
    
    UILabel *contentLabel = [[UILabel alloc] init];
    contentLabel.text = [text isKindOfClass:[NSString class]] ? text : [text description];
    contentLabel.numberOfLines = 0;
    
    [self.stackView addArrangedSubview:titleLabel];
    [self.stackView addArrangedSubview:contentLabel];
}

@end

