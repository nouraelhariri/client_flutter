package io.flutter.plugins;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;

import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.plugins.shim.ShimPluginRegistry;

/**
 * Generated file. Do not edit.
 * This file is generated by the Flutter tool based on the
 * plugins that support the Android platform.
 */
@Keep
public final class GeneratedPluginRegistrant {
  public static void registerWith(@NonNull FlutterEngine flutterEngine) {
    ShimPluginRegistry shimPluginRegistry = new ShimPluginRegistry(flutterEngine);
      com.example.flutter_sms.FlutterSmsPlugin.registerWith(shimPluginRegistry.registrarFor("com.example.flutter_sms.FlutterSmsPlugin"));
      io.jojodev.flutter.flutteruseragent.FlutterUserAgentPlugin.registerWith(shimPluginRegistry.registrarFor("io.jojodev.flutter.flutteruseragent.FlutterUserAgentPlugin"));
    flutterEngine.getPlugins().add(new dev.flutter.plugins.integration_test.IntegrationTestPlugin());
    flutterEngine.getPlugins().add(new io.flutter.plugins.pathprovider.PathProviderPlugin());
    flutterEngine.getPlugins().add(new io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin());
      com.babariviere.sms.SmsPlugin.registerWith(shimPluginRegistry.registrarFor("com.babariviere.sms.SmsPlugin"));
    flutterEngine.getPlugins().add(new io.flutter.plugins.urllauncher.UrlLauncherPlugin());
  }
}
