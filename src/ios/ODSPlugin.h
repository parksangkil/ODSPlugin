//
//  ODSPlugin.h
//  dongbu-template
//
//  Created by qfeel on 2016. 12. 13..
//
//

#import <Cordova/CDVPlugin.h>
#import "HieFormLib.h"

@interface ODSPlugin : CDVPlugin <eFormDelegate>
- (void)open:(CDVInvokedUrlCommand*)command;
@end
