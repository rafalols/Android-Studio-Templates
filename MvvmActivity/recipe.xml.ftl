<?xml version="1.0"?>
<recipe>

    <#-- Add activity to manifest -->
    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <#-- Create layout -->
    <instantiate from="root/res/layout/activity.xml.ftl"
                     to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <#-- Create the directory -->
    <mkdir at="${escapeXmlAttribute(srcOut)}/${lowerCaseName}" />

    <#-- Instantiate the ftl files -->
    <instantiate from="root/src/app_package/Activity.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${lowerCaseName}/${activity}.kt" />
    <instantiate from="root/src/app_package/ViewModel.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${lowerCaseName}/${viewModel}.kt" />

     <#if addRecyclerView>
        <#-- Create layout -->
        <instantiate from="root/res/layout/viewholder.xml.ftl"
                        to="${escapeXmlAttribute(resOut)}/layout/${itemLayoutName}.xml" />
        <#-- Instantiate the ftl files -->
        <instantiate from="root/src/app_package/Adapter.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${lowerCaseName}/${adapter}.kt" />
        <instantiate from="root/src/app_package/ViewHolder.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${lowerCaseName}/${viewHolder}.kt" />
        <instantiate from="root/src/app_package/Item.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${lowerCaseName}/${item}.kt" />
    </#if>


    <#-- Open the files -->
    <open file="${escapeXmlAttribute(srcOut)}/${lowerCaseName}/${activity}.kt" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <#if addRecyclerView>
      <open file="${escapeXmlAttribute(srcOut)}/${lowerCaseName}/${adapter}.kt" />
      <open file="${escapeXmlAttribute(resOut)}/layout/${itemLayoutName}.xml" />
    </#if>


</recipe>
