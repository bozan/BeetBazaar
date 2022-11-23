package com.irfanozersapplication.app.modules.passwordunregistered.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.irfanozersapplication.app.modules.passwordunregistered.`data`.model.PasswordUnregisteredModel
import org.koin.core.KoinComponent

class PasswordUnregisteredVM : ViewModel(), KoinComponent {
  val passwordUnregisteredModel: MutableLiveData<PasswordUnregisteredModel> =
      MutableLiveData(PasswordUnregisteredModel())

  var navArguments: Bundle? = null
}
