package com.irfanozersapplication.app.modules.passwordregistered.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.irfanozersapplication.app.modules.passwordregistered.`data`.model.PasswordRegisteredModel
import org.koin.core.KoinComponent

class PasswordRegisteredVM : ViewModel(), KoinComponent {
  val passwordRegisteredModel: MutableLiveData<PasswordRegisteredModel> =
      MutableLiveData(PasswordRegisteredModel())

  var navArguments: Bundle? = null
}
