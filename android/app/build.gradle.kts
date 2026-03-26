import java.util.Properties
import java.io.FileInputStream
plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(FileInputStream(keystorePropertiesFile))
}

android {
    namespace = "com.thetechadhikari.portfolio"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }


    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.thetechadhikari.portfolio"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }
    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties["keyAlias"] as String
            keyPassword = keystoreProperties["keyPassword"] as String
            storeFile = keystoreProperties["storeFile"]?.let { file(it) }
            storePassword = keystoreProperties["storePassword"] as String
        }
    }

    buildTypes {
        getByName("debug") {signingConfig = signingConfigs.getByName("debug")}
      getByName("release") {signingConfig = signingConfigs.getByName("release")}
       
    }
    flavorDimensions += "default"
    productFlavors {
        create("develoment") {
            dimension = "default"
            resValue(
                type = "string",
                name = "app_name",
                value = "Portfolio (Dev)")
            applicationIdSuffix = ".dev"
        }
        create("qa") {
            dimension = "default"
            resValue(
                type = "string",
                name = "app_name",
                value = "Portfolio (Test)")
            applicationIdSuffix = ".qa"
        }
        create("production") {
            dimension = "default"
            resValue(
                type = "string",
                name = "app_name",
                value = "Tech Portfolio")
            
        }
    }
}

flutter {
    source = "../.."
}
