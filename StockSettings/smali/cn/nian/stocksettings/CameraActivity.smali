.class public Lcn/nian/stocksettings/CameraActivity;
.super Lmiui/preference/PreferenceActivity;
.source "CameraActivity.java"


# static fields
.field private static final AOSPCAMERA:Ljava/lang/String; = "aosp_camera"

.field private static final CMCAMERA:Ljava/lang/String; = "cm_camera"

.field private static final NUBIACAMERA:Ljava/lang/String; = "nubia_camera"


# instance fields
.field private mAospCamera:Landroid/preference/Preference;

.field private mCmCamera:Landroid/preference/Preference;

.field private mNubiaCamera:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private initStyle()V
    .locals 1

    .prologue
    .line 12
    sget v0, Lmiui/R$style;->Theme_Light_Settings:I

    invoke-virtual {p0, v0}, Lcn/nian/stocksettings/CameraActivity;->setTheme(I)V

    .line 13
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/nian/stocksettings/CameraActivity;->initStyle()V

    .line 24
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcn/nian/stocksettings/CameraActivity;->addPreferencesFromResource(I)V

    .line 27
    const-string v0, "aosp_camera"

    invoke-virtual {p0, v0}, Lcn/nian/stocksettings/CameraActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcn/nian/stocksettings/CameraActivity;->mAospCamera:Landroid/preference/Preference;

    .line 28
    const-string v0, "cm_camera"

    invoke-virtual {p0, v0}, Lcn/nian/stocksettings/CameraActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcn/nian/stocksettings/CameraActivity;->mCmCamera:Landroid/preference/Preference;

    .line 29
    const-string v0, "nubia_camera"

    invoke-virtual {p0, v0}, Lcn/nian/stocksettings/CameraActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcn/nian/stocksettings/CameraActivity;->mNubiaCamera:Landroid/preference/Preference;

    .line 31
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferencescreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v1, 0x7d0

    .line 35
    iget-object v0, p0, Lcn/nian/stocksettings/CameraActivity;->mAospCamera:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 36
    const-string v0, "mount -o remount,rw /system"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 37
    const-string v0, "rm -rf /system/app/Camera.apk"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 38
    const-string v0, "cp /system/app/CameraDir/miui_camera.apk /system/app/Camera.apk"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 39
    const-string v0, "\u5f53\u524d\u76f8\u673a\u5df2\u7ecf\u8bbe\u7f6e\u4e3aMIUI\u76f8\u673a"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/nian/stocksettings/CameraActivity;->mCmCamera:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 42
    const-string v0, "mount -o remount,rw /system"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 43
    const-string v0, "rm -rf /system/app/Camera.apk"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 44
    const-string v0, "cp /system/app/CameraDir/cm_camera.apk /system/app/Camera.apk"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 45
    const-string v0, "\u5f53\u524d\u76f8\u673a\u5df2\u7ecf\u8bbe\u7f6e\u4e3aCM\u76f8\u673a"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 47
    :cond_1
    iget-object v0, p0, Lcn/nian/stocksettings/CameraActivity;->mNubiaCamera:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 48
    const-string v0, "mount -o remount,rw /system"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 49
    const-string v0, "rm -rf /system/app/Camera.apk"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 50
    const-string v0, "cp /system/app/CameraDir/nubia_camera.apk /system/app/Camera.apk"

    invoke-static {v0}, Lcn/nian/stocksettings/RootCmd;->RunRootCmd(Ljava/lang/String;)I

    .line 51
    const-string v0, "\u5f53\u524d\u76f8\u673a\u5df2\u7ecf\u8bbe\u7f6e\u4e3aNubia\u76f8\u673a"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
