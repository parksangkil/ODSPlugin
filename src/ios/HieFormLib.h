//
//  HieFormLib.h
//  HieFormLib
//
//  Created by Joseph on 2016. 3. 25..
//  Copyright © 2016년 JC1_Joseph. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol eFormDelegate <NSObject>
@required
- (void)processComplete:(NSString*)msg;
@end

@interface HieFormLib: UIViewController{
    NSString *dataStr;                  // 초기 XML, 이어작성시 사고번호
    NSString *urlStr;                   // 공통 URL
    NSString *xmlFilePath;              // 초기 XML PATH
    
    NSDictionary *requestDic;           // 리턴받은 JSON
    
    UIActivityIndicatorView *activityView;
}

@property (nonatomic, weak) id <eFormDelegate> delegate;
@property (assign, nonatomic) UINavigationController *navigationController;

/**
 신규, 이어작성 - 초기XML
 공통URL
 */

- (id)init:(NSString*)data url:(NSString*)url;

@end





