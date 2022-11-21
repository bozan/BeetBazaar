package com.beyzaozansapplication.app.extensions

import android.util.Patterns
import android.widget.Toast
import com.beyzaozansapplication.app.R
import com.beyzaozansapplication.app.appcomponents.di.MyApp
import kotlin.Boolean
import kotlin.String

/**
 * Password should have, 
 * - at least a upper case letter
 * - at least a lower case letter
 * - at least a digit
 * - at least a special character [@#$%^&+=]
 * - length of at least 4
 * ⚫ no white space allowed
 */
public fun String?.isValidPassword(isMandatory: Boolean = false): Boolean {
  if (isNullOrEmpty()) {
    if (isMandatory) {
      Toast.makeText(
              MyApp.getInstance(),
              R.string.msg_please_enter_valid_pa,
              Toast.LENGTH_SHORT
          ).show()
    }
    return !isMandatory
  }
  val passwordRegex =
      "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#${'$'}%^&+=])(?=\\S+${'$'}).{4,}${'$'}".toRegex()
  val result = 
  passwordRegex.matches(this)
  if (!result) {
    Toast.makeText(
            MyApp.getInstance(),
            R.string.msg_please_enter_valid_pa,
            Toast.LENGTH_SHORT
        ).show()
  }
  return result
}

public fun String?.isText(isMandatory: Boolean = false): Boolean {
  if (isNullOrEmpty()) {
    if (isMandatory) {
      Toast.makeText(
              MyApp.getInstance(),
              R.string.msg_please_enter_valid_text,
              Toast.LENGTH_SHORT
          ).show()
    }
    return !isMandatory
  }
  val textRegex = "[a-zA-Z ]+".toRegex()
  val result = 
  textRegex.matches(this)
  if (!result) {
    Toast.makeText(
            MyApp.getInstance(),
            R.string.msg_please_enter_valid_text,
            Toast.LENGTH_SHORT
        ).show()
  }
  return result
}

public fun String?.isValidEmail(isMandatory: Boolean = false): Boolean {
  if (isNullOrEmpty()) {
    if (isMandatory) {
      Toast.makeText(
              MyApp.getInstance(),
              R.string.msg_please_enter_valid_email,
              Toast.LENGTH_SHORT
          ).show()
    }
    return !isMandatory
  }
  val result = 
  Patterns.EMAIL_ADDRESS.matcher(this).matches()
  if (!result) {
    Toast.makeText(
            MyApp.getInstance(),
            R.string.msg_please_enter_valid_email,
            Toast.LENGTH_SHORT
        ).show()
  }
  return result
}
