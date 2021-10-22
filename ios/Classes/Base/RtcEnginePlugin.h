#import <Foundation/Foundation.h>
#import <AgoraRtcKit/AgoraRtcEngineKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RtcEnginePlugin <NSObject>
- (void)onRtcEngineCreated:(AgoraRtcEngineKit *_Nullable)rtcEngine;
- (void)onRtcEngineDestroyed;
@end

NS_ASSUME_NONNULL_END
