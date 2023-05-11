import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        // init Flutter plugins
        
        GeneratedPluginRegistrant.register(with: self)
        
        // init Flutter method channel
        
        let controller = window!.rootViewController as! FlutterViewController
    
        let flutterChannel = FlutterMethodChannel(
            name: "mobile_app",
            binaryMessenger: controller.binaryMessenger
        )
        
        flutterChannel.setMethodCallHandler() {
            (
                call: FlutterMethodCall,
                result: @escaping FlutterResult
            )
            -> Void in
            
            let args = call.arguments as? Dictionary<String, AnyObject> ?? [:]
            
            if call.method == "setGoogleMapApiKey" {
                
                // setGoogleMapApiKey
                
                let apiKey = args["apiKey"] as! String
                GMSServices.provideAPIKey(apiKey)
                result(true)
                return
                
            } else {
                
                // method not found
                
                result(FlutterMethodNotImplemented)
                return
            }
        }
        
        // start flutter app
        
        return super.application(
            application,
            didFinishLaunchingWithOptions: launchOptions
        )
    }
}
