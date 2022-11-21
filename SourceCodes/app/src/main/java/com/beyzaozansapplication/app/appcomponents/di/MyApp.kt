package com.beyzaozansapplication.app.appcomponents.di

import android.app.Application
import com.beyzaozansapplication.app.appcomponents.utility.PreferenceHelper
import org.koin.android.ext.koin.androidContext
import org.koin.android.ext.koin.androidLogger
import org.koin.core.context.loadKoinModules
import org.koin.core.context.startKoin
import org.koin.core.module.Module
import org.koin.dsl.module

/**
 * The application class which used to start koin for dependency injection
 */
class MyApp : Application() {

    public override fun onCreate(): Unit {
        super.onCreate()
        instance = this
        startKoin {
            androidLogger()
            androidContext(this@MyApp)
            loadKoinModules(getKoinModules())
        }
    }

    /**
     * method which prepares [PreferenceHelper]s koin module
     * @return [Module] - the koin module
     */
    private fun preferenceModule(): Module {
        val prefsModule = module {
            single {
                PreferenceHelper()
            }
        }
        return prefsModule
    }

    /**
     * method which returns the list of koin module to register
     * @return MutableList<Module> - list of koin modules
     */
    private fun getKoinModules(): MutableList<Module> {
        val koinModules = mutableListOf<Module>()
        koinModules.add(preferenceModule()) //register preference module
        return koinModules
    }

    public companion object {

        // the application instance
        private lateinit var instance: MyApp

        /**
         * method to get instance of application object
         */
        public fun getInstance(): MyApp = instance
    }
}