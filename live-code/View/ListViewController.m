//
//  ListViewController.m
//  live-code
//
//  Created by Martinus Galih Widananto on 11/03/25.
//

#import "ListViewController.h"

@interface ListViewController(controller) <UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UISearchBar *searchbar;

@end

@implementation ListViewController



- (void)viewDidLoad {
    
    [self setupTableView];
}

- (void)setupTableView {
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    
    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.tableView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.tableView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
    [self.tableView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
    [self.tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

@end
