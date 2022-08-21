package com.example.teleport_ar
import android.content.Intent
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel


class MainActivity: FlutterActivity() {
    private val CHANNEL = "samples.flutter.dev/ar"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
                call, result ->if (call.method.equals("openArPortal")) {
            val intent = Intent(this, SecondActivity::class.java)
            startActivity(intent)
        } else {
            result.notImplemented()
        }

        }
            // This method is invoked on the main thread.
            // TODO
        }
    }

