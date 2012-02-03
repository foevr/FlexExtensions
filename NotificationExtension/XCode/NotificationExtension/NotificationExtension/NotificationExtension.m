//
//  NotificationExtension.m
//  NotificationExtension
//
//  Created by  on 12-2-3.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//
#import "FlashRuntimeExtensions.h"
#import "NotificationManager.h"

FREObject registRemoteNotification(FREContext ctx,void* funcData,uint32_t argc,FREObject argv[])
{
    NotificationManager* manager=[[NotificationManager alloc]init];
    [manager registRemoteNotification];
    return NULL;
}

void contextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx,
                        uint32_t* numFunctionsToSet,
                        const FRENamedFunction** functionsToSet)
{
    *numFunctionsToSet=2;
    FRENamedFunction* func=(FRENamedFunction *)malloc(sizeof(FRENamedFunction)*2);
    func[0].name=(const uint8_t*)"registRemoteNotification";
    func[0].functionData=NULL;
    func[0].function=&registRemoteNotification;
    *functionsToSet=func;
}

void contextFinalizer()
{
}

void NotificationExtensionInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet,
                                      FREContextFinalizer* ctxFinalizerToSet)
{
    extDataToSet=NULL;
    *ctxFinalizerToSet=&contextFinalizer;
    *ctxInitializerToSet=&contextInitializer;
}