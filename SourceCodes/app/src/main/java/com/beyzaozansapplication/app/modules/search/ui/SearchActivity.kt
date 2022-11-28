package com.beyzaozansapplication.app.modules.search.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.beyzaozansapplication.app.R
import com.beyzaozansapplication.app.appcomponents.base.BaseActivity
import com.beyzaozansapplication.app.databinding.ActivitySearchBinding
import com.beyzaozansapplication.app.modules.search.`data`.model.SearchRowModel
import com.beyzaozansapplication.app.modules.search.`data`.viewmodel.SearchVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchActivity : BaseActivity<ActivitySearchBinding>(R.layout.activity_search) {
  private val viewModel: SearchVM by viewModels<SearchVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val searchAdapter = SearchAdapter(viewModel.searchList.value?:mutableListOf())
    binding.recyclerSearch.adapter = searchAdapter
    searchAdapter.setOnItemClickListener(
    object : SearchAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchRowModel) {
        onClickRecyclerSearch(view, position, item)
      }
    }
    )
    viewModel.searchList.observe(this) {
      searchAdapter.updateData(it)
    }
    binding.searchVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSearch(
    view: View,
    position: Int,
    item: SearchRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SEARCH_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SearchActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
