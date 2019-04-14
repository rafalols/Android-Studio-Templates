package ${packageName}.${lowerCaseName}

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import androidx.databinding.DataBindingUtil
import ${applicationPackage}.R
import ${applicationPackage}.databinding.${itemBinding}


class ${adapter}: RecyclerView.Adapter<${viewHolder}>() {

    var list: List<${item}> = emptyList()
        set(value) {
            field = value
            notifyDataSetChanged()
        }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ${viewHolder} {
        val binding: ${itemBinding} = DataBindingUtil.inflate(LayoutInflater.from(parent.context), R.layout.${layoutName}, parent, false)
        return ${viewHolder}(binding)
    }

    override fun getItemCount(): Int {
        return list.size
    }

    override fun onBindViewHolder(holder: ${viewHolder}, position: Int) {
        holder.bind(list[position])
    }
}
