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
        _objectId = [dictionary[@"id"] integerValue];
        _title = dictionary[@"title"];
        _body = dictionary[@"userId"];
    }
    return self;
}
@end

