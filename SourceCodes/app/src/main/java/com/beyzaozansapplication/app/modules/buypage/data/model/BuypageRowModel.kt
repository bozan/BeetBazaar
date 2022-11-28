package com.beyzaozansapplication.app.modules.buypage.`data`.model

import com.beyzaozansapplication.app.R
import com.beyzaozansapplication.app.appcomponents.di.MyApp
import kotlin.String

data class BuypageRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRowheadline: String? =
      MyApp.getInstance().resources.getString(R.string.msg_faber_castell_p)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_2)

)
