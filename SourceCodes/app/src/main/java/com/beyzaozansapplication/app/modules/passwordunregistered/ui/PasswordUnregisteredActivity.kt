package com.irfanozersapplication.app.modules.passwordunregistered.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.irfanozersapplication.app.R
import com.irfanozersapplication.app.appcomponents.base.BaseActivity
import com.irfanozersapplication.app.databinding.ActivityPasswordUnregisteredBinding
import com.irfanozersapplication.app.modules.passwordunregistered.`data`.viewmodel.PasswordUnregisteredVM
import kotlin.String
import kotlin.Unit

class PasswordUnregisteredActivity :
    BaseActivity<ActivityPasswordUnregisteredBinding>(R.layout.activity_password_unregistered) {
  private val viewModel: PasswordUnregisteredVM by viewModels<PasswordUnregisteredVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.passwordUnregisteredVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "PASSWORD_UNREGISTERED_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PasswordUnregisteredActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
