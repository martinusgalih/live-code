//
//  ListViewModel.m
//  live-code
//
//  Created by Martinus Galih Widananto on 11/03/25.
//

#import "ListViewModel.h"

@implementation ListViewModel

- (void)fetchData:(void(^)(BOOL success, NSError *error))completion {
    NSString *urlString = @"https://jsonplaceholder.typicode.com/posts";
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            dispatch_async(dispatch_get_main_queue(), ^{
                completion(NO, error);
            });
            return;
        }
        
        NSError *jsonError;
        NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
        
        if (jsonError) {
            dispatch_async(dispatch_get_main_queue(), ^{
                completion(NO, jsonError);
            });
            return;
        }
        
        NSMutableArray *models = [NSMutableArray array];
        for (NSDictionary *dict in jsonArray) {
            UserModel *model = [[UserModel alloc] initWithDict:dict];
            [models addObject:model];
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.data = [models copy];
            self.filteredData = self.data;
            completion(YES, nil);
        });
    }];
    
    [task resume];
}

- (void)filterDataSearch:(NSString *)searchText {
    if (!searchText || [searchText length] == 0) {
        self.filteredData = self.data;
        return;
    }
    
    NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(UserModel *model, NSDictionary *bindings) {
        NSString *title = [model.title isKindOfClass:[NSString class]] ? model.title : [model.title description];
        return [title localizedCaseInsensitiveContainsString:searchText];
    }];
    
    self.filteredData = [self.data filteredArrayUsingPredicate:predicate];
}

@end

/*
 https://jsonplaceholder.typicode.com/posts
 */
