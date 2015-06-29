.class public Lcom/miui/internal/component/module/ModuleResourceLoader;
.super Ljava/lang/Object;
.source "ModuleResourceLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/lang/String;)V
    .locals 2
    .param p0, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 21
    sget v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 22
    invoke-static {p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load2Initial(Ljava/lang/String;)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {p0, v0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load2Current(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static load2Current(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "resourcePath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    move-result-object v0

    .line 30
    .local v0, "AssetManagerClass":Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;
    invoke-interface {v0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->newInstance()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 32
    .local v2, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 34
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    .line 35
    invoke-interface {v0, v2, p0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/miui/internal/component/module/ModuleResourceLoader;->replaceAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    .line 38
    return-void
.end method

.method public static load2Initial(Ljava/lang/String;)V
    .locals 8
    .param p0, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    move-result-object v0

    .line 42
    .local v0, "AssetManagerClass":Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;
    invoke-interface {v0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->newInstance()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 44
    .local v3, "assets":Landroid/content/res/AssetManager;
    invoke-static {}, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/internal/variable/Android_App_ActivityThread_class$Factory;->get()Lcom/miui/internal/variable/Android_App_ActivityThread_class;

    move-result-object v1

    .line 45
    .local v1, "activityThreadClass":Lcom/miui/internal/variable/Android_App_ActivityThread_class;
    invoke-interface {v1}, Lcom/miui/internal/variable/Android_App_ActivityThread_class;->currentActivityThread()Ljava/lang/Object;

    move-result-object v4

    .line 47
    .local v4, "at":Ljava/lang/Object;
    invoke-static {}, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/internal/variable/Android_App_LoadedApk_class$Factory;->get()Lcom/miui/internal/variable/Android_App_LoadedApk_class;

    move-result-object v6

    .line 48
    .local v6, "loadedApkClass":Lcom/miui/internal/variable/Android_App_LoadedApk_class;
    invoke-interface {v1, v4}, Lcom/miui/internal/variable/Android_App_ActivityThread_class;->getInitialLoadedApk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 50
    .local v5, "la":Ljava/lang/Object;
    invoke-interface {v6, v5}, Lcom/miui/internal/variable/Android_App_LoadedApk_class;->getApplicationInfo(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 52
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v0, v3, v7}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    .line 53
    invoke-interface {v0, v3, p0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    .line 55
    invoke-interface {v6, v5}, Lcom/miui/internal/variable/Android_App_LoadedApk_class;->getResources(Ljava/lang/Object;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/miui/internal/component/module/ModuleResourceLoader;->replaceAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    .line 56
    return-void
.end method

.method public static load2System(Ljava/lang/String;)V
    .locals 3
    .param p0, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    move-result-object v0

    .line 60
    .local v0, "AssetManagerClass":Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;
    invoke-interface {v0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->newInstance()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 62
    .local v1, "assets":Landroid/content/res/AssetManager;
    invoke-interface {v0, v1, p0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/internal/component/module/ModuleResourceLoader;->replaceAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    .line 65
    return-void
.end method

.method private static replaceAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "assets"    # Landroid/content/res/AssetManager;

    .prologue
    .line 69
    new-instance v0, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v0, p1, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 72
    .local v0, "newRes":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 74
    .local v1, "oldAssets":Landroid/content/res/AssetManager;
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_Resources_class;

    move-result-object v2

    .line 75
    .local v2, "resourcesClass":Lcom/miui/internal/variable/Android_Content_Res_Resources_class;
    invoke-virtual {v2, p0, p1}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    .line 76
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    .line 79
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 82
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 83
    return-void
.end method
