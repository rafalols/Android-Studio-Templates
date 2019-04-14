<?xml version="1.0" encoding="utf-8"?>
<layout
	xmlns:android="http://schemas.android.com/apk/res/android"
	xmlns:app="http://schemas.android.com/apk/res-auto">

	<data>
		<variable
            name="viewModel"
            type="${packageName}.${lowerCaseName}.${viewModel}" />
	</data>

	<androidx.constraintlayout.widget.ConstraintLayout
	    android:layout_width="match_parent"
	    android:layout_height="match_parent">
<#if addRecyclerView>
	    <androidx.recyclerview.widget.RecyclerView
            android:id="@+id/recycler_view"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            app:layout_constraintBottom_toBottomOf="parent"
            app:layout_constraintEnd_toEndOf="parent"
            app:layout_constraintStart_toStartOf="parent"
            app:layout_constraintTop_toTopOf="parent" />
</#if>
	</androidx.constraintlayout.widget.ConstraintLayout>
	
</layout>