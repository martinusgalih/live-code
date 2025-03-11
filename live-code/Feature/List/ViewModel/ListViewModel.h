//
//  ListViewModel.h
//  live-code
//
//  Created by Martinus Galih Widananto on 11/03/25.
//

#import <Foundation/Foundation.h>
#import "UserModel.h"

@interface ListViewModel : NSObject

@property (nonatomic, strong) NSArray<UserModel *> *data;
@property (nonatomic, strong) NSArray<UserModel *> *filteredData;

- (void)fetchData:(void(^)(BOOL success, NSError *error))completion;
- (void)filterDataSearch:(NSString *)searchText;

@end
