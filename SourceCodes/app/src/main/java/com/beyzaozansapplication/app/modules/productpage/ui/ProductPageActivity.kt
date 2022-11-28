package com.beyzaozansapplication.app.modules.productpage.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.beyzaozansapplication.app.R
import com.beyzaozansapplication.app.appcomponents.base.BaseActivity
import com.beyzaozansapplication.app.databinding.ActivityProductPageBinding
import com.beyzaozansapplication.app.modules.productpage.`data`.viewmodel.ProductPageVM
import kotlin.String
import kotlin.Unit

class ProductPageActivity : BaseActivity<ActivityProductPageBinding>(R.layout.activity_product_page)
    {
  private val viewModel: ProductPageVM by viewModels<ProductPageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.productPageVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "PRODUCT_PAGE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ProductPageActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
