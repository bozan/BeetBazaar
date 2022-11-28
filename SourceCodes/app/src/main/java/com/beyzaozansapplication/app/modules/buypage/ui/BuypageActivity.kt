package com.beyzaozansapplication.app.modules.buypage.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.beyzaozansapplication.app.R
import com.beyzaozansapplication.app.appcomponents.base.BaseActivity
import com.beyzaozansapplication.app.databinding.ActivityBuypageBinding
import com.beyzaozansapplication.app.modules.buypage.`data`.model.BuypageRowModel
import com.beyzaozansapplication.app.modules.buypage.`data`.viewmodel.BuypageVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class BuypageActivity : BaseActivity<ActivityBuypageBinding>(R.layout.activity_buypage) {
  private val viewModel: BuypageVM by viewModels<BuypageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val buypageAdapter = BuypageAdapter(viewModel.buypageList.value?:mutableListOf())
    binding.recyclerBuypage.adapter = buypageAdapter
    buypageAdapter.setOnItemClickListener(
    object : BuypageAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : BuypageRowModel) {
        onClickRecyclerBuypage(view, position, item)
      }
    }
    )
    viewModel.buypageList.observe(this) {
      buypageAdapter.updateData(it)
    }
    binding.buypageVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerBuypage(
    view: View,
    position: Int,
    item: BuypageRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "BUYPAGE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, BuypageActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
