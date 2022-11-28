package com.beyzaozansapplication.app.modules.search.`data`.model

import com.beyzaozansapplication.app.R
import com.beyzaozansapplication.app.appcomponents.di.MyApp
import kotlin.String

data class SearchRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.msg_apple_watch_4)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_280)

)
