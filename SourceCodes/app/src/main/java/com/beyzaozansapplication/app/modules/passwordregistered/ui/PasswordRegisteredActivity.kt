package com.irfanozersapplication.app.modules.passwordregistered.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.irfanozersapplication.app.R
import com.irfanozersapplication.app.appcomponents.base.BaseActivity
import com.irfanozersapplication.app.databinding.ActivityPasswordRegisteredBinding
import com.irfanozersapplication.app.modules.passwordregistered.`data`.viewmodel.PasswordRegisteredVM
import kotlin.String
import kotlin.Unit

class PasswordRegisteredActivity :
    BaseActivity<ActivityPasswordRegisteredBinding>(R.layout.activity_password_registered) {
  private val viewModel: PasswordRegisteredVM by viewModels<PasswordRegisteredVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.passwordRegisteredVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "PASSWORD_REGISTERED_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PasswordRegisteredActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
