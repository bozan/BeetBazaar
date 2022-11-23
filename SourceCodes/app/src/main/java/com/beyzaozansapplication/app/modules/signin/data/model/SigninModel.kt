package com.irfanozersapplication.app.modules.signin.`data`.model

import com.irfanozersapplication.app.R
import com.irfanozersapplication.app.appcomponents.di.MyApp
import kotlin.String

data class SigninModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPagetitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_sign_in)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_e_mail)
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
