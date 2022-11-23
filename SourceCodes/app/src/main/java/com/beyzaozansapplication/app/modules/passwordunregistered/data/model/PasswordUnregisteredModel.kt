package com.irfanozersapplication.app.modules.passwordunregistered.`data`.model

import com.irfanozersapplication.app.R
import com.irfanozersapplication.app.appcomponents.di.MyApp
import kotlin.String

data class PasswordUnregisteredModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel: String? = MyApp.getInstance().resources.getString(R.string.lbl_e_mail)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPagetitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_register)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabelOne: String? = MyApp.getInstance().resources.getString(R.string.lbl_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabelTwo: String? = MyApp.getInstance().resources.getString(R.string.lbl_surname)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabelThree: String? = MyApp.getInstance().resources.getString(R.string.lbl_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabelFour: String? = MyApp.getInstance().resources.getString(R.string.lbl_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremipsumdol: String? = MyApp.getInstance().resources.getString(R.string.lbl_beetbazaar)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etBaseinputfieValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etBaseinputfieOneValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etBaseinputfieTwoValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etBaseinputfieThreeValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etBaseinputfieFourValue: String? = null
)
