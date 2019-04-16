package ${packageName}.${lowerCaseName}

import androidx.recyclerview.widget.RecyclerView
import ${applicationPackage}.databinding.${itemBinding}

class ${viewHolder}(
	private val binding: ${itemBinding}
) : RecyclerView.ViewHolder(binding.root) {

    fun bind(item: ${item}) {
        binding.item = item
    }

}
