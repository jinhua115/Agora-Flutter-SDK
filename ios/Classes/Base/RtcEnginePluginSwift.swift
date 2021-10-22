import Foundation

@objc protocol RtcEnginePluginSwift {
    @objc func onRtcEngineCreated(_ rtcEngine: AgoraRtcEngineKit?)
    @objc func onRtcEngineDestroyed()
}
