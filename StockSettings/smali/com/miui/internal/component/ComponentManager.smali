.class public Lcom/miui/internal/component/ComponentManager;
.super Ljava/lang/Object;
.source "ComponentManager.java"


# static fields
.field private static final COMPONENT_BASE_TARGET_FOLDER:Ljava/lang/String; = "miuisdk"

.field private static final MODULE_BUILT_IN_FOLDER:Ljava/lang/String; = "modules"

.field private static final MODULE_TARGET_FOLDER:Ljava/lang/String; = "modules"

.field private static final PLUGIN_BUILT_IN_FOLDER:Ljava/lang/String; = "plugins"

.field private static final PLUGIN_TARGET_FOLDER:Ljava/lang/String; = "plugins"

.field private static sModuleLoader:Lcom/miui/internal/component/module/ModuleLoader;

.field private static sPluginLoader:Lcom/miui/internal/component/plugin/PluginLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteLegacyFolders(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 74
    .local v0, "folder":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "modules"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/FileUtils;->rm(Ljava/lang/String;)Z

    .line 75
    new-instance v1, Ljava/io/File;

    const-string v2, "dalvik-cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/FileUtils;->rm(Ljava/lang/String;)Z

    .line 76
    new-instance v1, Ljava/io/File;

    const-string v2, "plugins"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/FileUtils;->rm(Ljava/lang/String;)Z

    .line 77
    new-instance v1, Ljava/io/File;

    const-string v2, "opt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/os/FileUtils;->rm(Ljava/lang/String;)Z

    .line 78
    return-void
.end method

.method private static extractFiles(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scanFolderPath"    # Ljava/lang/String;
    .param p2, "targetFolder"    # Ljava/io/File;

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 53
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "paths":[Ljava/lang/String;
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 55
    .local v5, "path":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v7, "targetFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 57
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8, v7}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "paths":[Ljava/lang/String;
    .end local v7    # "targetFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 62
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private static getComponentBaseFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "miuisdk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getModulesFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/miui/internal/component/ComponentManager;->getComponentBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "modules"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getPluginsFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/miui/internal/component/ComponentManager;->getComponentBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "plugins"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static load(Lcom/miui/internal/core/Manifest;)V
    .locals 1
    .param p0, "manifest"    # Lcom/miui/internal/core/Manifest;

    .prologue
    .line 66
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/miui/internal/component/ComponentManager;->deleteLegacyFolders(Landroid/content/Context;)V

    .line 68
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/miui/internal/component/ComponentManager;->loadModules(Landroid/content/Context;)V

    .line 69
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/miui/internal/component/ComponentManager;->loadPlugins(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "optFolderPath"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcom/miui/internal/component/module/ModuleLoader;->loadClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private static loadModules(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v4, 0x0

    .line 82
    .local v4, "modulesFolder":Ljava/io/File;
    invoke-static {p0}, Lcom/miui/internal/component/ComponentManager;->getModulesFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 84
    .local v5, "ownModulesFolder":Ljava/io/File;
    const-string v8, "com.miui.sdk"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 85
    const/4 v7, 0x0

    .line 87
    .local v7, "sdkContext":Landroid/content/Context;
    :try_start_0
    const-string v8, "com.miui.sdk"

    const/4 v9, 0x2

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 92
    :goto_0
    if-eqz v7, :cond_0

    .line 93
    invoke-static {v7}, Lcom/miui/internal/component/ComponentManager;->getModulesFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 96
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 98
    :cond_1
    move-object v4, v5

    .line 99
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 100
    const-string v8, "modules"

    invoke-static {p0, v8, v4}, Lcom/miui/internal/component/ComponentManager;->extractFiles(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 117
    .end local v7    # "sdkContext":Landroid/content/Context;
    :cond_2
    :goto_1
    new-instance v8, Lcom/miui/internal/component/module/ModuleLoader;

    invoke-direct {v8, v4}, Lcom/miui/internal/component/module/ModuleLoader;-><init>(Ljava/io/File;)V

    sput-object v8, Lcom/miui/internal/component/ComponentManager;->sModuleLoader:Lcom/miui/internal/component/module/ModuleLoader;

    .line 118
    return-void

    .line 89
    .restart local v7    # "sdkContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 104
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiui/os/FileUtils;->rm(Ljava/lang/String;)Z

    goto :goto_1

    .line 107
    .end local v7    # "sdkContext":Landroid/content/Context;
    :cond_4
    move-object v4, v5

    .line 108
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 109
    const-string v8, "modules"

    invoke-static {p0, v8, v4}, Lcom/miui/internal/component/ComponentManager;->extractFiles(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 111
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f9

    invoke-static {v8, v9}, Lmiui/os/FileUtils;->chmod(Ljava/lang/String;I)Z

    .line 112
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v6, v0, v2

    .line 113
    .local v6, "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1a4

    invoke-static {v8, v9}, Lmiui/os/FileUtils;->chmod(Ljava/lang/String;I)Z

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static loadPlugins(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/miui/internal/component/plugin/PluginContext;->setApplicationContext(Landroid/content/Context;)V

    .line 123
    invoke-static {p0}, Lcom/miui/internal/component/ComponentManager;->getPluginsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 124
    .local v2, "pluginsFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    const-string v3, "plugins"

    invoke-static {p0, v3, v2}, Lcom/miui/internal/component/ComponentManager;->extractFiles(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 128
    :cond_0
    new-instance v3, Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-direct {v3, v2}, Lcom/miui/internal/component/plugin/PluginLoader;-><init>(Ljava/io/File;)V

    sput-object v3, Lcom/miui/internal/component/ComponentManager;->sPluginLoader:Lcom/miui/internal/component/plugin/PluginLoader;

    .line 129
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v3

    sget-object v4, Lcom/miui/internal/component/ComponentManager;->sPluginLoader:Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-virtual {v3, v4}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginLoader(Lcom/miui/internal/component/plugin/PluginLoader;)V

    .line 131
    new-instance v0, Lcom/miui/internal/component/plugin/PluginClassLoader;

    sget-object v3, Lcom/miui/internal/component/ComponentManager;->sPluginLoader:Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-direct {v0, v3}, Lcom/miui/internal/component/plugin/PluginClassLoader;-><init>(Lcom/miui/internal/component/plugin/PluginLoader;)V

    .line 132
    .local v0, "pluginClassLoader":Lcom/miui/internal/component/plugin/PluginClassLoader;
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginClassLoader(Lcom/miui/internal/component/plugin/PluginClassLoader;)V

    .line 134
    new-instance v1, Lcom/miui/internal/component/plugin/PluginResourceLoader;

    sget-object v3, Lcom/miui/internal/component/ComponentManager;->sPluginLoader:Lcom/miui/internal/component/plugin/PluginLoader;

    invoke-direct {v1, v3}, Lcom/miui/internal/component/plugin/PluginResourceLoader;-><init>(Lcom/miui/internal/component/plugin/PluginLoader;)V

    .line 135
    .local v1, "pluginResourceLoader":Lcom/miui/internal/component/plugin/PluginResourceLoader;
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/internal/component/plugin/PluginContext;->setPluginResourceLoader(Lcom/miui/internal/component/plugin/PluginResourceLoader;)V

    .line 136
    return-void
.end method

.method public static loadResource(Ljava/lang/String;)V
    .locals 0
    .param p0, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p0}, Lcom/miui/internal/component/module/ModuleLoader;->loadResource(Ljava/lang/String;)V

    .line 144
    return-void
.end method
