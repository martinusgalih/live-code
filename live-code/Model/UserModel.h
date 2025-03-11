//
//  UserModel.h
//  live-code
//
//  Created by Martinus Galih Widananto on 11/03/25.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject


@property (nonatomic, assign) NSInteger userId;
@property (nonatomic, assign) NSInteger id;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *body;

- (instancetype) initWithDict:(NSDictionary *) dictionary;

@end

/*
{
    "userId": 1,
    "id": 1,
    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
  },
*/
