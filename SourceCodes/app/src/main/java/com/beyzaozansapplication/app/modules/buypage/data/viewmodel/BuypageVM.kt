package com.beyzaozansapplication.app.modules.buypage.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.beyzaozansapplication.app.modules.buypage.`data`.model.BuypageModel
import com.beyzaozansapplication.app.modules.buypage.`data`.model.BuypageRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class BuypageVM : ViewModel(), KoinComponent {
  val buypageModel: MutableLiveData<BuypageModel> = MutableLiveData(BuypageModel())

  var navArguments: Bundle? = null

  val buypageList: MutableLiveData<MutableList<BuypageRowModel>> = MutableLiveData(mutableListOf())
}
