.class public Lcom/miui/internal/component/module/ModuleLoader;
.super Ljava/lang/Object;
.source "ModuleLoader.java"


# static fields
.field private static final MODULES_MANIFEST_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final MODULES_MANIFEST_FILE_NAME:Ljava/lang/String; = "modules.xml"

.field private static final MODULE_FILE_EXTENSION:Ljava/lang/String; = ".apk"

.field private static final OPT_FOLDER:Ljava/lang/String; = "modules-opt"


# instance fields
.field private loadedModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private moduleFolder:Ljava/io/File;

.field private optFolder:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "folder"    # Ljava/io/File;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->loadedModules:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleLoader;->moduleFolder:Ljava/io/File;

    .line 30
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/internal/component/module/ModuleLoader;->moduleFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "modules-opt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->optFolder:Ljava/io/File;

    .line 31
    iget-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->moduleFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 32
    iget-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->optFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 33
    invoke-direct {p0}, Lcom/miui/internal/component/module/ModuleLoader;->loadModules()V

    .line 34
    return-void
.end method

.method private getDefaultModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/component/module/Module;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/component/module/Module;>;"
    return-object v0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "optFolderPath"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x0

    sget-object v1, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/miui/internal/component/module/ModuleClassLoader;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    .line 91
    return-void
.end method

.method private loadModule(Ljava/io/File;Z)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "uninstalled"    # Z

    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "apkPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 61
    .local v1, "optFolderPath":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/miui/internal/component/module/ModuleLoader;->optFolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_0
    invoke-static {v0, v1}, Lcom/miui/internal/component/module/ModuleLoader;->loadClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v0}, Lcom/miui/internal/component/module/ModuleLoader;->loadResource(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private loadModules()V
    .locals 8

    .prologue
    .line 37
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/miui/internal/component/module/ModuleLoader;->moduleFolder:Ljava/io/File;

    const-string v7, "modules.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/miui/internal/component/module/ModuleLoader;->parseModules(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    .line 38
    .local v3, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/component/module/Module;>;"
    if-nez v3, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/miui/internal/component/module/ModuleLoader;->getDefaultModules()Ljava/util/List;

    move-result-object v3

    .line 41
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/component/module/Module;

    .line 42
    .local v2, "module":Lcom/miui/internal/component/module/Module;
    const/4 v4, 0x1

    .line 43
    .local v4, "uninstalled":Z
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/miui/internal/component/module/ModuleLoader;->moduleFolder:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/miui/internal/component/module/Module;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 45
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v5, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-virtual {v2}, Lcom/miui/internal/component/module/Module;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/internal/component/module/Module;->getSystemApkName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/internal/util/PackageHelper;->getApkPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .restart local v0    # "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 50
    new-instance v5, Lcom/miui/internal/component/module/ModuleNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no such module found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/miui/internal/component/module/Module;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/miui/internal/component/module/ModuleNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 52
    :cond_2
    invoke-direct {p0, v0, v4}, Lcom/miui/internal/component/module/ModuleLoader;->loadModule(Ljava/io/File;Z)V

    .line 53
    iget-object v5, p0, Lcom/miui/internal/component/module/ModuleLoader;->loadedModules:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "module":Lcom/miui/internal/component/module/Module;
    .end local v4    # "uninstalled":Z
    :cond_3
    return-void
.end method

.method public static loadResource(Ljava/lang/String;)V
    .locals 0
    .param p0, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private parseModules(Ljava/io/File;)Ljava/util/List;
    .locals 2
    .param p1, "moduleFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/component/module/Module;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/component/module/Module;>;"
    goto :goto_0
.end method
