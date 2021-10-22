//
//  RtcEnginePluginRegistrant.h
//  agora_rtc_engine
//
//  Created by fenglang on 2021/10/22.
//

#ifndef RtcEnginePluginRegistrant_h
#define RtcEnginePluginRegistrant_h

#import <Foundation/Foundation.h>
#import "RtcEnginePlugin.h"

@interface RtcEnginePluginRegistrant : NSObject

+(void)register:(NSObject<RtcEnginePlugin> *_Nonnull)plugin;
+(void)unregister:(NSObject<RtcEnginePlugin> *_Nonnull)plugin;

@end

#endif /* RtcEnginePluginRegistrant_h */
