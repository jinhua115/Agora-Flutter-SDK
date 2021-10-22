package io.agora.rtc.base

import io.agora.rtc.RtcEngine

/**
 * A [RtcEnginePlugin] allows developers to interact with the [RtcEngine] which created from flutter
 * side.
 */
interface RtcEnginePlugin {

  /**
   * This callback will be called when the [RtcEngine] is created by
   * [RtcEngine.createWithContext](https://docs.agora.io/cn/Video/API%20Reference/flutter/agora_rtc_engine/RtcEngine/createWithContext.html)
   * function from flutter.
   *
   * @param rtcEngine The same [RtcEngine] used by flutter side
   */
  fun onRtcEngineCreated(rtcEngine: RtcEngine?)

  /**
   * This callback will be called when the [RtcEngine.destroy](https://github.com/AgoraIO/Agora-Flutter-SDK/blob/1800a851aab7c88ce2bc7d48029dd8f62eb07203/lib/src/rtc_engine.dart#L169)
   * function is called from flutter.
   */
  fun onRtcEngineDestroyed()

  companion object Registrant {
    /**
     * Register a [RtcEnginePlugin]. The [plugin] will be called when the [RtcEngine] is created from
     * flutter side.
     */
    fun register(plugin: RtcEnginePlugin) {
      RtcEngineRegistry.instance.add(plugin = plugin)
    }

    /**
     * Unregister a previously registered [RtcEnginePlugin].
     */
    fun unregister(plugin: RtcEnginePlugin) {
      RtcEngineRegistry.instance.remove(pluginClass = plugin.javaClass)
    }
  }
}


