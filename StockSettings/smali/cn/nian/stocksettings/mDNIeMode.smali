.class public Lcn/nian/stocksettings/mDNIeMode;
.super Landroid/preference/ListPreference;
.source "mDNIeMode.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FILE:Ljava/lang/String; = "/sys/class/mdnie/mdnie/mode"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-virtual {p0, p0}, Lcn/nian/stocksettings/mDNIeMode;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 17
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 22
    const-string v0, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v0}, Lcn/nian/stocksettings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-static {}, Lcn/nian/stocksettings/mDNIeMode;->isSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v1, "/sys/class/mdnie/mdnie/mode"

    const-string v2, "mdnie_mode"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nian/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 35
    const-string v0, "/sys/class/mdnie/mdnie/mode"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcn/nian/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method
