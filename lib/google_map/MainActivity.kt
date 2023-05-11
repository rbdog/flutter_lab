package xxx.xxx.xxx.xxx.xxx.xxx

import android.content.pm.PackageManager
import android.util.Log
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
 
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
 
        val flutterChannel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "mobile_app"
        )
        
        flutterChannel.setMethodCallHandler { call, result ->

            if (call.method == "setGoogleMapApiKey") {
                val apiKey = call.argument<String>("apiKey")
                apiKey?.let { setGoogleMapApiKey(it) }
                result.success(true)
            } else {
                result.notImplemented()
            }
        }
    }
 
    private fun setGoogleMapApiKey(apiKey: String) { 
        try {
            val applicationInfo =
                packageManager.getApplicationInfo(packageName, PackageManager.GET_META_DATA)
            applicationInfo.metaData.putString("com.google.android.geo.API_KEY", apiKey)
        } catch (e: PackageManager.NameNotFoundException) {
            e.printStackTrace()
        }
    }
}
