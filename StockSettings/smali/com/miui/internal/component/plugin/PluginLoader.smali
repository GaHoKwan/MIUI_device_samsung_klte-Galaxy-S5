.class public Lcom/miui/internal/component/plugin/PluginLoader;
.super Ljava/lang/Object;
.source "PluginLoader.java"


# static fields
.field private static final OPT_FOLDER:Ljava/lang/String; = "plugins-opt"

.field private static final PLUGIN_FILE_EXTENSION:Ljava/lang/String; = ".apk"

.field private static final PLUGIN_MANIFEST_BUILT_IN_PATH:Ljava/lang/String; = "assets/PluginManifest.xml"

.field private static final PLUGIN_MANIFEST_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final PLUGIN_MANIFEST_FILE_NAME:Ljava/lang/String; = "PluginManifest.xml"

.field private static classLoaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static extensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/component/plugin/Plugin;",
            ">;>;"
        }
    .end annotation
.end field

.field private static pluginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/component/plugin/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private static resourcesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private optFolder:Ljava/io/File;

.field private pluginFolder:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->pluginMap:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->extensionMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->classLoaderMap:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->resourcesMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "folder"    # Ljava/io/File;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/miui/internal/component/plugin/PluginLoader;->pluginFolder:Ljava/io/File;

    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/internal/component/plugin/PluginLoader;->pluginFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "plugins-opt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/component/plugin/PluginLoader;->optFolder:Ljava/io/File;

    .line 48
    iget-object v0, p0, Lcom/miui/internal/component/plugin/PluginLoader;->pluginFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 49
    iget-object v0, p0, Lcom/miui/internal/component/plugin/PluginLoader;->optFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 50
    invoke-direct {p0}, Lcom/miui/internal/component/plugin/PluginLoader;->loadPlugins()V

    .line 51
    invoke-direct {p0}, Lcom/miui/internal/component/plugin/PluginLoader;->buildExtensionMap()V

    .line 52
    return-void
.end method

.method private addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 189
    :try_start_0
    const-class v1, Landroid/content/res/AssetManager;

    const-string v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 203
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 192
    new-instance v1, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke asset manager encounter an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 195
    new-instance v1, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke asset manager encounter an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 198
    new-instance v1, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke asset manager encounter an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 201
    new-instance v1, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke asset manager encounter an error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private buildExtensionMap()V
    .locals 7

    .prologue
    .line 116
    sget-object v6, Lcom/miui/internal/component/plugin/PluginLoader;->pluginMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 117
    .local v3, "key":Ljava/lang/String;
    sget-object v6, Lcom/miui/internal/component/plugin/PluginLoader;->pluginMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/component/plugin/Plugin;

    .line 118
    .local v4, "plugin":Lcom/miui/internal/component/plugin/Plugin;
    invoke-virtual {v4}, Lcom/miui/internal/component/plugin/Plugin;->getExtensions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, "extension":Ljava/lang/String;
    sget-object v6, Lcom/miui/internal/component/plugin/PluginLoader;->extensionMap:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 120
    .local v5, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/component/plugin/Plugin;>;"
    if-nez v5, :cond_1

    .line 121
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/component/plugin/Plugin;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .restart local v5    # "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/component/plugin/Plugin;>;"
    sget-object v6, Lcom/miui/internal/component/plugin/PluginLoader;->extensionMap:Ljava/util/Map;

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    .end local v0    # "extension":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "plugin":Lcom/miui/internal/component/plugin/Plugin;
    .end local v5    # "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/component/plugin/Plugin;>;"
    :cond_2
    return-void
.end method

.method private loadPlugin(Ljava/io/File;Ljava/io/File;)Lcom/miui/internal/component/plugin/Plugin;
    .locals 1
    .param p1, "manifest"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Lcom/miui/internal/component/plugin/PluginLoader;->loadPlugin(Ljava/io/InputStream;Ljava/io/File;)Lcom/miui/internal/component/plugin/Plugin;

    move-result-object v0

    return-object v0
.end method

.method private loadPlugin(Ljava/io/InputStream;Ljava/io/File;)Lcom/miui/internal/component/plugin/Plugin;
    .locals 2
    .param p1, "manifest"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/internal/component/plugin/PluginParseException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/miui/internal/component/plugin/PluginManifestParser;

    invoke-direct {v0}, Lcom/miui/internal/component/plugin/PluginManifestParser;-><init>()V

    .line 110
    .local v0, "parser":Lcom/miui/internal/component/plugin/PluginManifestParser;
    invoke-virtual {v0, p1}, Lcom/miui/internal/component/plugin/PluginManifestParser;->parsePlugin(Ljava/io/InputStream;)Lcom/miui/internal/component/plugin/Plugin;

    move-result-object v1

    .line 111
    .local v1, "plugin":Lcom/miui/internal/component/plugin/Plugin;
    invoke-virtual {v1, p2}, Lcom/miui/internal/component/plugin/Plugin;->setFile(Ljava/io/File;)V

    .line 112
    return-object v1
.end method

.method private loadPlugins()V
    .locals 12

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/miui/internal/component/plugin/PluginLoader;->loadSelf()V

    .line 56
    iget-object v9, p0, Lcom/miui/internal/component/plugin/PluginLoader;->pluginFolder:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 57
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_1

    .line 77
    :cond_0
    return-void

    .line 60
    :cond_1
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 61
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".apk"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 62
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Lcom/miui/internal/component/plugin/PluginLoader;->pluginFolder:Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lmiui/os/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v6, "manifest":Ljava/io/File;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 65
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 66
    .local v8, "zip":Ljava/util/zip/ZipFile;
    new-instance v9, Ljava/util/zip/ZipEntry;

    const-string v10, "assets/PluginManifest.xml"

    invoke-direct {v9, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9, v6}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 68
    .end local v8    # "zip":Ljava/util/zip/ZipFile;
    :cond_2
    invoke-direct {p0, v6, v2}, Lcom/miui/internal/component/plugin/PluginLoader;->loadPlugin(Ljava/io/File;Ljava/io/File;)Lcom/miui/internal/component/plugin/Plugin;

    move-result-object v7

    .line 69
    .local v7, "plugin":Lcom/miui/internal/component/plugin/Plugin;
    sget-object v9, Lcom/miui/internal/component/plugin/PluginLoader;->pluginMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/miui/internal/component/plugin/PluginParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .end local v6    # "manifest":Ljava/io/File;
    .end local v7    # "plugin":Lcom/miui/internal/component/plugin/Plugin;
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    .restart local v6    # "manifest":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Lcom/miui/internal/component/plugin/PluginParseException;
    invoke-virtual {v1}, Lcom/miui/internal/component/plugin/PluginParseException;->printStackTrace()V

    goto :goto_1
.end method

.method private loadSelf()V
    .locals 8

    .prologue
    .line 80
    const/4 v4, 0x0

    .line 81
    .local v4, "plugin":Lcom/miui/internal/component/plugin/Plugin;
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/internal/component/plugin/PluginContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 85
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "PluginManifest.xml"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/miui/internal/component/plugin/PluginLoader;->loadPlugin(Ljava/io/InputStream;Ljava/io/File;)Lcom/miui/internal/component/plugin/Plugin;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/miui/internal/component/plugin/PluginParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 93
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 94
    new-instance v4, Lcom/miui/internal/component/plugin/Plugin;

    .end local v4    # "plugin":Lcom/miui/internal/component/plugin/Plugin;
    invoke-direct {v4}, Lcom/miui/internal/component/plugin/Plugin;-><init>()V

    .line 95
    .restart local v4    # "plugin":Lcom/miui/internal/component/plugin/Plugin;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/internal/component/plugin/Plugin;->setName(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/internal/component/plugin/Plugin;->setGroup(Ljava/lang/String;)V

    .line 97
    sget-object v5, Lcom/miui/internal/component/plugin/AccessPermission;->PRIVATE:Lcom/miui/internal/component/plugin/AccessPermission;

    invoke-virtual {v4, v5}, Lcom/miui/internal/component/plugin/Plugin;->setResources(Lcom/miui/internal/component/plugin/AccessPermission;)V

    .line 99
    :cond_1
    sget-object v5, Lcom/miui/internal/component/plugin/PluginLoader;->pluginMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v5, Lcom/miui/internal/component/plugin/PluginLoader;->classLoaderMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v5, Lcom/miui/internal/component/plugin/PluginLoader;->resourcesMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Lcom/miui/internal/component/plugin/PluginParseException;
    invoke-virtual {v1}, Lcom/miui/internal/component/plugin/PluginParseException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v1    # "e":Lcom/miui/internal/component/plugin/PluginParseException;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private newClassLoader(Lcom/miui/internal/component/plugin/Plugin;)Ljava/lang/ClassLoader;
    .locals 5
    .param p1, "plugin"    # Lcom/miui/internal/component/plugin/Plugin;

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "dexFilePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/internal/component/plugin/PluginLoader;->optFolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "optFolderPath":Ljava/lang/String;
    new-instance v2, Ldalvik/system/DexClassLoader;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v0, v1, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v2
.end method

.method private newResources(Lcom/miui/internal/component/plugin/Plugin;)Landroid/content/res/Resources;
    .locals 9
    .param p1, "plugin"    # Lcom/miui/internal/component/plugin/Plugin;

    .prologue
    .line 166
    const/4 v5, 0x0

    .line 168
    .local v5, "resources":Landroid/content/res/Resources;
    :try_start_0
    const-class v6, Landroid/content/res/AssetManager;

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 169
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/miui/internal/component/plugin/PluginLoader;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getDependencies()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/component/plugin/Dependency;

    .line 171
    .local v2, "dependency":Lcom/miui/internal/component/plugin/Dependency;
    invoke-virtual {v2}, Lcom/miui/internal/component/plugin/Dependency;->isResourcesRequired()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    sget-object v6, Lcom/miui/internal/component/plugin/PluginLoader;->pluginMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/miui/internal/component/plugin/Dependency;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/component/plugin/Plugin;

    invoke-virtual {v6}, Lcom/miui/internal/component/plugin/Plugin;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/miui/internal/component/plugin/PluginLoader;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 177
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v2    # "dependency":Lcom/miui/internal/component/plugin/Dependency;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 178
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 179
    new-instance v6, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke asset manager encounter an error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 175
    .end local v3    # "e":Ljava/lang/InstantiationException;
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "resources":Landroid/content/res/Resources;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/miui/internal/component/plugin/PluginContext;->getInstance()Lcom/miui/internal/component/plugin/PluginContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/internal/component/plugin/PluginContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 176
    .local v1, "base":Landroid/content/res/Resources;
    new-instance v5, Landroid/content/res/Resources;

    .end local v5    # "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    .restart local v5    # "resources":Landroid/content/res/Resources;
    return-object v5

    .line 180
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v1    # "base":Landroid/content/res/Resources;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "resources":Landroid/content/res/Resources;
    :catch_1
    move-exception v3

    .line 181
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 182
    new-instance v6, Lcom/miui/internal/component/plugin/PluginException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke asset manager encounter an error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/miui/internal/component/plugin/PluginException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public getClassLoader(Lcom/miui/internal/component/plugin/Plugin;)Ljava/lang/ClassLoader;
    .locals 4
    .param p1, "plugin"    # Lcom/miui/internal/component/plugin/Plugin;

    .prologue
    .line 138
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->classLoaderMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    sget-object v1, Lcom/miui/internal/component/plugin/PluginLoader;->classLoaderMap:Ljava/util/Map;

    monitor-enter v1

    .line 140
    :try_start_0
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->classLoaderMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->classLoaderMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/miui/internal/component/plugin/PluginLoader;->newClassLoader(Lcom/miui/internal/component/plugin/Plugin;)Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_1
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->classLoaderMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPlugins(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/component/plugin/Plugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->extensionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getResources(Lcom/miui/internal/component/plugin/Plugin;)Landroid/content/res/Resources;
    .locals 4
    .param p1, "plugin"    # Lcom/miui/internal/component/plugin/Plugin;

    .prologue
    .line 155
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->resourcesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    sget-object v1, Lcom/miui/internal/component/plugin/PluginLoader;->resourcesMap:Ljava/util/Map;

    monitor-enter v1

    .line 157
    :try_start_0
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->resourcesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->resourcesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/miui/internal/component/plugin/PluginLoader;->newResources(Lcom/miui/internal/component/plugin/Plugin;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_1
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->resourcesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/internal/component/plugin/Plugin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 130
    sget-object v0, Lcom/miui/internal/component/plugin/PluginLoader;->extensionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
