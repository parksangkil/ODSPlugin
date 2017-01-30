//
//  ODSPlugin.m
//  dongbu-template
//
//  Created by qfeel on 2016. 12. 13..
//
//

#import "ODSPlugin.h"
#import "HieFormLib.h"

@implementation ODSPlugin

- (void)open:(CDVInvokedUrlCommand*)command
{
    NSDictionary* options = [command argumentAtIndex:0];
    
    NSString *dataStr  = options[@"xmlData"];
    NSString *urlStr = options[@"urlStr"];

    NSLog(@"[%@][%@]", dataStr, urlStr);
    NSString *testXml =
    
    @"<ROOT><SUBSCRIPTION_INFORMATION><CUSTOMER_NAME>홍길동</CUSTOMER_NAME> <VICTIM_ADDRESS>보라매역</VICTIM_ADDRESS><VICTIM_NAME>피해자1</VICTIM_NAME><PERPETRATOR_NAME>가해자1</PERPETRATOR_NAME><EVENT_YYYY>2016</EVENT_YYYY><EVENT_MM>12</EVENT_MM><EVENT_DD>04</EVENT_DD><EVENT_HH>23</EVENT_HH><EVENT_MI>30</EVENT_MI><EVENT_AREA>경기도 성남시 분당구 불정로</EVENT_AREA><EVENT_CAR_NO>경기 24 허 1212</EVENT_CAR_NO><DOCUMENT_ID>16-01234567-201611251630</DOCUMENT_ID><SUBSCRIPTION_NUMBER>16-01234567-10-001-IF0102</SUBSCRIPTION_NUMBER><SUBSCRIPTION_TYPE>001</SUBSCRIPTION_TYPE><SUBSCRIPTION_SEQ>001</SUBSCRIPTION_SEQ><EMP_CODE>1245785210</EMP_CODE><BRANCH_CODE></BRANCH_CODE></SUBSCRIPTION_INFORMATION><DOCUMENTS_INFORMATION><FORM_INFORMATION><FORM_ID>16-01234567-10-001-IF0102</FORM_ID><FORM_NUMBER>IF0102</FORM_NUMBER><FORM_NAME>대인합의서</FORM_NAME><FORM_TOTAL_PAGE_COUNT>1</FORM_TOTAL_PAGE_COUNT><FORM_PATH>2016/1222/</FORM_PATH><FORM_INPUT_CHECK></FORM_INPUT_CHECK><FORM_NECESSARY_TYPE></FORM_NECESSARY_TYPE></FORM_INFORMATION></DOCUMENTS_INFORMATION><CUSTOMER_INPUT_DATA></CUSTOMER_INPUT_DATA></ROOT>";
    HieFormLib *viewODS = [[HieFormLib alloc] init:testXml url:@"http://10.10.88.132:81/hieform"];
    
    viewODS.delegate = self;
    UINavigationController *jc1Navi = [[UINavigationController alloc] initWithRootViewController:viewODS];
    viewODS.navigationController = jc1Navi;
    [self.viewController presentViewController:jc1Navi animated:NO completion:nil];
}

- (void)processComplete:(NSString *)msg{
//    CDVPluginResult * pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:msg];
//    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}


@end
