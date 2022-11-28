package com.beyzaozansapplication.app.modules.productpage.`data`.model

import com.beyzaozansapplication.app.R
import com.beyzaozansapplication.app.appcomponents.di.MyApp
import kotlin.String

data class ProductPageModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPagetitle: String? = MyApp.getInstance().resources.getString(R.string.msg_wooden_table)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? = MyApp.getInstance().resources.getString(R.string.msg_dark_polished_w)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProductPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_product_price)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProductDescrip: String? =
      MyApp.getInstance().resources.getString(R.string.msg_product_descrip)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremipsumdol: String? =
      MyApp.getInstance().resources.getString(R.string.msg_detailed_descri)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername: String? = MyApp.getInstance().resources.getString(R.string.lbl_beyza_ozan)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUserrole: String? = MyApp.getInstance().resources.getString(R.string.lbl_seller)

)
