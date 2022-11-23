package com.irfanozersapplication.app.modules.signin.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.irfanozersapplication.app.R
import com.irfanozersapplication.app.appcomponents.base.BaseActivity
import com.irfanozersapplication.app.databinding.ActivitySigninBinding
import com.irfanozersapplication.app.modules.signin.`data`.viewmodel.SigninVM
import kotlin.String
import kotlin.Unit

class SigninActivity : BaseActivity<ActivitySigninBinding>(R.layout.activity_signin) {
  private val viewModel: SigninVM by viewModels<SigninVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.signinVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "SIGNIN_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SigninActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
