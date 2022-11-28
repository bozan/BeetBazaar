package com.beyzaozansapplication.app.modules.search.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.beyzaozansapplication.app.modules.search.`data`.model.SearchModel
import com.beyzaozansapplication.app.modules.search.`data`.model.SearchRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchVM : ViewModel(), KoinComponent {
  val searchModel: MutableLiveData<SearchModel> = MutableLiveData(SearchModel())

  var navArguments: Bundle? = null

  val searchList: MutableLiveData<MutableList<SearchRowModel>> = MutableLiveData(mutableListOf())
}
