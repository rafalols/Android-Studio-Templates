<?xml version="1.0" encoding="utf-8"?>
<layout
    xmlns:android="http://schemas.android.com/apk/res/android">

    <data>
        <variable
            name="item"
            type="${packageName}.${lowerCaseName}.${item}"
            />
    </data>

    <androidx.constraintlayout.widget.ConstraintLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent">

        <TextView
            android:id="@+id/name"
            android:text="@{item.name}"
            android:layout_width="match_parent"
            android:layout_height="wrap_content" />

    </androidx.constraintlayout.widget.ConstraintLayout>

</layout>