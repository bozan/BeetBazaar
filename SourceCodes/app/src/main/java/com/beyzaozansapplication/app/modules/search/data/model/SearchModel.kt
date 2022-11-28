package com.beyzaozansapplication.app.modules.search.`data`.model

import com.beyzaozansapplication.app.R
import com.beyzaozansapplication.app.appcomponents.di.MyApp
import kotlin.String

data class SearchModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLanguage: String? = MyApp.getInstance().resources.getString(R.string.msg_search_a_produc)

)
