package com.beyzaozansapplication.app.modules.productpage.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.beyzaozansapplication.app.modules.productpage.`data`.model.ProductPageModel
import org.koin.core.KoinComponent

class ProductPageVM : ViewModel(), KoinComponent {
  val productPageModel: MutableLiveData<ProductPageModel> = MutableLiveData(ProductPageModel())

  var navArguments: Bundle? = null
}
