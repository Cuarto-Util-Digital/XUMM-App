# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /usr/local/Cellar/android-sdk/24.3.3/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Disabling obfuscation is useful if you collect stack traces from production crashes
# (unless you are using a system that supports de-obfuscate the stack traces).
-dontobfuscate

#------------- React Native ------------------
# Keep our interfaces so they can be used by other ProGuard rules.
# See http://sourceforge.net/p/proguard/bugs/466/
-keep,allowobfuscation @interface com.facebook.proguard.annotations.DoNotStrip
-keep,allowobfuscation @interface com.facebook.proguard.annotations.KeepGettersAndSetters
-keep,allowobfuscation @interface com.facebook.common.internal.DoNotStrip

# Do not strip any method/class that is annotated with @DoNotStrip
-keep @com.facebook.proguard.annotations.DoNotStrip class *
-keep @com.facebook.common.internal.DoNotStrip class *
-keepclassmembers class * {
    @com.facebook.proguard.annotations.DoNotStrip *;
    @com.facebook.common.internal.DoNotStrip *;
}

-keepclassmembers @com.facebook.proguard.annotations.KeepGettersAndSetters class * {
  void set*(***);
  *** get*();
}

-keep class * extends com.facebook.react.bridge.JavaScriptModule { *; }
-keep class * extends com.facebook.react.bridge.NativeModule { *; }
-keepclassmembers,includedescriptorclasses class * { native <methods>; }
-keepclassmembers class *  { @com.facebook.react.uimanager.annotations.ReactProp <methods>; }
-keepclassmembers class *  { @com.facebook.react.uimanager.annotations.ReactPropGroup <methods>; }

-dontwarn com.facebook.react.**

# TextLayoutBuilder uses a non-public Android constructor within StaticLayout.
# See libs/proxy/src/main/java/com/facebook/fbui/textlayoutbuilder/proxy for details.
-dontwarn android.text.StaticLayout

-keep class com.facebook.crypto.** {
   *;
}

#------------- okhttp ------------------
-keepattributes Signature
-keepattributes *Annotation*
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }
-dontwarn okhttp3.**

#------------- okio ------------------
-dontwarn java.nio.file.*
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
-dontwarn okio.**

#------------- firebase ------------------
-keep class io.invertase.firebase.** { *; }
-dontwarn io.invertase.firebase.**

-keep class com.google.firebase.** { *; }
-keepclassmembers  class com.google.firebase.** { *; }

#------------- realm ------------------
-keep class io.realm.react.**

#------------- Hermes ------------------
-keep class com.facebook.hermes.unicode.** { *; }
-keep class com.facebook.jni.** { *; }

#------------- Fingerprint ------------------
# MeiZu Fingerprint
-keep class com.fingerprints.service.** { *; }
-dontwarn com.fingerprints.service.**

# Samsung Fingerprint
-keep class com.samsung.android.sdk.** { *; }
-dontwarn com.samsung.android.sdk.**

#------------- Tangem SDK (spongycastle) ------------------
-keep class org.spongycastle.crypto.* {*;}
-keep class org.spongycastle.crypto.agreement.** {*;}
-keep class org.spongycastle.crypto.digests.* {*;}
-keep class org.spongycastle.crypto.ec.* {*;}
-keep class org.spongycastle.crypto.encodings.* {*;}
-keep class org.spongycastle.crypto.engines.* {*;}
-keep class org.spongycastle.crypto.macs.* {*;}
-keep class org.spongycastle.crypto.modes.* {*;}
-keep class org.spongycastle.crypto.paddings.* {*;}
-keep class org.spongycastle.crypto.params.* {*;}
-keep class org.spongycastle.crypto.prng.* {*;}
-keep class org.spongycastle.crypto.signers.* {*;}

-keep class org.spongycastle.jcajce.provider.asymmetric.* {*;}
-keep class org.spongycastle.jcajce.provider.asymmetric.util.* {*;}
-keep class org.spongycastle.jcajce.provider.asymmetric.dh.* {*;}
-keep class org.spongycastle.jcajce.provider.asymmetric.ec.* {*;}
-keep class org.spongycastle.jcajce.provider.asymmetric.x509.* {*;}
-keep class org.spongycastle.jcajce.provider.asymmetric.rsa.* {*;}

-keep class org.spongycastle.jcajce.provider.digest.** {*;}
-keep class org.spongycastle.jcajce.provider.keystore.** {*;}
-keep class org.spongycastle.jcajce.provider.symmetric.** {*;}
-keep class org.spongycastle.jcajce.spec.* {*;}
-keep class org.spongycastle.jce.** {*;}

-dontwarn org.spongycastle.**