package com.beyzaozansapplication.app.modules.buypage.`data`.model

import com.beyzaozansapplication.app.R
import com.beyzaozansapplication.app.appcomponents.di.MyApp
import kotlin.String

data class BuypageModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPagetitle: String? = MyApp.getInstance().resources.getString(R.string.msg_welcome_to_beet)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPagesubtitle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_second_hand_pro)

)
