import Foundation

@objc public class RtcEnginePluginRegistrantSwift: NSObject {
    @objc static func register(_ plugin: RtcEnginePlugin) {
        RtcEngineRegistry.shared.add(plugin)
    }
    
    @objc static func unregister(_ plugin: RtcEnginePlugin) {
        RtcEngineRegistry.shared.remove(plugin)
    }
}
