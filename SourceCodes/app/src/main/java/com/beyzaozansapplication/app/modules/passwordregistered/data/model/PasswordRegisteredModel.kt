package com.irfanozersapplication.app.modules.passwordregistered.`data`.model

import com.irfanozersapplication.app.R
import com.irfanozersapplication.app.appcomponents.di.MyApp
import kotlin.String

data class PasswordRegisteredModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPagetitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel: String? = MyApp.getInstance().resources.getString(R.string.lbl_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremipsumdol: String? = MyApp.getInstance().resources.getString(R.string.lbl_beetbazaar)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etBaseinputfieValue: String? = null
)
