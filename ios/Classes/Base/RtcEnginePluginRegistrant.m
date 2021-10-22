//
//  RtcEnginePluginRegistrant.m
//  agora_rtc_engine
//
//  Created by fenglang on 2021/10/22.
//

#import <Foundation/Foundation.h>
#if __has_include(<agora_rtc_engine/agora_rtc_engine-Swift.h>)
#import <agora_rtc_engine/agora_rtc_engine-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "agora_rtc_engine-Swift.h"
#endif

@implementation RtcEnginePluginRegistrant : NSObject

+ (void)register:(NSObject<RtcEnginePlugin> *)plugin {
//    RtcEngineRegistry *instance = [RtcEngineRegistry shared];
//    [instance add:plugin];
    [[RtcEngineRegistrySwift shared] add:plugin];
//    [RtcEnginePluginRegistrantInternal register:plugin];
}

+ (void)unregister:(NSObject<RtcEnginePlugin> *)plugin {
//    RtcEngineRegistry *instance = [RtcEngineRegistry shared];
//    [instance remove:plugin];
    [[RtcEngineRegistrySwift shared] remove:plugin];
//    [RtcEnginePluginRegistrantInternal unregister:plugin];
}
@end
