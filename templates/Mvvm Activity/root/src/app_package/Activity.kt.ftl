package ${packageName}.${lowerCaseName}

import ${applicationPackage}.R
import ${applicationPackage}.databinding.${viewBinding}
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.ViewModelProviders
import android.os.Bundle
import androidx.databinding.DataBindingUtil
<#if addRecyclerView>
import androidx.recyclerview.widget.LinearLayoutManager
</#if>

class ${activity}: AppCompatActivity() {

    <#if addParameter>private val param: String by lazy { intent.getStringExtra(SAMPLE_PARAM) }</#if>
    private val viewModel by lazy { ViewModelProviders.of(this).get(${viewModel}::class.java) }
    <#if addRecyclerView>private val adapter = ${adapter}()</#if>
    private lateinit var binding: ${viewBinding}
 
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = DataBindingUtil.setContentView(this, R.layout.${layoutName})

        binding.viewModel = viewModel
        <#if addRecyclerView>
        binding.recyclerView.layoutManager = LinearLayoutManager(this)
        binding.recyclerView.adapter = adapter</#if>
    }
<#if addParameter>
    companion object {
        const val SAMPLE_PARAM = "sample_param"
    }
</#if>
}