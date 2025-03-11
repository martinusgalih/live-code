//
//  UserModel.m
//  live-code
//
//  Created by Martinus Galih Widananto on 11/03/25.
//

#import "UserModel.h"

@implementation UserModel

- (instancetype)initWithDict:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _userId = [dictionary[@"userId"] integerValue];
        _id = [dictionary[@"id"] integerValue];
        _title = [dictionary[@"title"] stringValue];
        _body = [dictionary[@"userId"] stringValue];
    }
    return self;
}
@end
