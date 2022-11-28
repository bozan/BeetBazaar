package com.beyzaozansapplication.app.modules.search.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.beyzaozansapplication.app.R
import com.beyzaozansapplication.app.databinding.RowSearchBinding
import com.beyzaozansapplication.app.modules.search.`data`.model.SearchRowModel
import kotlin.Int
import kotlin.collections.List

class SearchAdapter(
  var list: List<SearchRowModel>
) : RecyclerView.Adapter<SearchAdapter.RowSearchVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSearchVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_search,parent,false)
    return RowSearchVH(view)
  }

  override fun onBindViewHolder(holder: RowSearchVH, position: Int) {
    val searchRowModel = SearchRowModel()
    // TODO uncomment following line after integration with data source
    // val searchRowModel = list[position]
    holder.binding.searchRowModel = searchRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SearchRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: SearchRowModel
    ) {
    }
  }

  inner class RowSearchVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSearchBinding = RowSearchBinding.bind(itemView)
  }
}
