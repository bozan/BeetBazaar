package com.beyzaozansapplication.app.modules.buypage.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.beyzaozansapplication.app.R
import com.beyzaozansapplication.app.databinding.RowBuypageBinding
import com.beyzaozansapplication.app.modules.buypage.`data`.model.BuypageRowModel
import kotlin.Int
import kotlin.collections.List

class BuypageAdapter(
  var list: List<BuypageRowModel>
) : RecyclerView.Adapter<BuypageAdapter.RowBuypageVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowBuypageVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_buypage,parent,false)
    return RowBuypageVH(view)
  }

  override fun onBindViewHolder(holder: RowBuypageVH, position: Int) {
    val buypageRowModel = BuypageRowModel()
    // TODO uncomment following line after integration with data source
    // val buypageRowModel = list[position]
    holder.binding.buypageRowModel = buypageRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<BuypageRowModel>) {
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
      item: BuypageRowModel
    ) {
    }
  }

  inner class RowBuypageVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowBuypageBinding = RowBuypageBinding.bind(itemView)
  }
}
