package com.example.flowpay

import android.os.Bundle
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import com.portto.fcl.Fcl 
import com.portto.fcl.config.Network
import com.portto.fcl.provider.blocto.Blocto
import com.portto.fcl.provider.dapper.Dapper

class MainActivity: FlutterActivity() {
    private val FCL_CHANNEL = "com.flowpay/fcl"
    private val APP_TESTNET_ID = "ed93d3ec-9cb7-42ec-b74c-e8d8158844d9"


     override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine){
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger,FCL_CHANNEL).setMethodCallHandler{
            call, result ->
            when {
                call.method.equals("ConnectWallet") -> {
                    Fcl.init(
                        env =  Network.TESTNET,
                        supportedWallets = listOf(Blocto.getInstance(APP_TESTNET_ID),Dapper)
                    )
                    
                    GlobalScope.launch {
                        val userAddress = Fcl.authenticate()
                        withContext(Dispatchers.Main) {
                            result.success(userAddress)
                        }
                    }
                }
            }
        }
    }
}
