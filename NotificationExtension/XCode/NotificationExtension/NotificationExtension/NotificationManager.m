//
//  NotificationManager.m
//  NotificationExtension
//
//  Created by  on 12-2-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NotificationManager.h"

@implementation NotificationManager

-(void)registRemoteNotification
{
    [[UIApplication sharedApplication]registerForRemoteNotificationTypes:UIRemoteNotificationTypeSound|UIRemoteNotificationTypeAlert|UIRemoteNotificationTypeBadge];
}


@end
