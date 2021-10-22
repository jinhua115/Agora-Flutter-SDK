//
//  OCTestRtcEnginePlugin.h
//  Runner
//
//  Created by fenglang on 2021/10/22.
//

#ifndef OCTestRtcEnginePlugin_h
#define OCTestRtcEnginePlugin_h

#import <Flutter/Flutter.h>

@interface OCTestRtcEnginePlugin : NSObject<RtcEnginePlugin>
- (void) registerSelf();
- (void) unregisterSelf();
@end

#endif /* OCTestRtcEnginePlugin_h */
