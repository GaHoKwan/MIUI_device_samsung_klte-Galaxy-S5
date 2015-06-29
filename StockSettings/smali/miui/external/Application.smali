.class public Lmiui/external/Application;
.super Landroid/app/Application;
.source "Application.java"

# interfaces
.implements Lmiui/external/SdkConstants;


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.sdk"


# instance fields
.field private mApplicationDelegate:Lmiui/external/ApplicationDelegate;

.field private mInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 50
    invoke-direct {p0}, Lmiui/external/Application;->loadSdk()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-direct {p0}, Lmiui/external/Application;->initializeSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/external/Application;->mInitialized:Z

    .line 57
    invoke-virtual {p0}, Lmiui/external/Application;->onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;

    move-result-object v0

    iput-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    goto :goto_0
.end method

.method private handleGenericError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    const-string v0, "miuisdk"

    const-string v1, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    sget-object v0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/SdkErrorInstrumentation;->handleSdkError(Lmiui/external/SdkConstants$SdkError;)V

    .line 135
    return-void

    .line 123
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    instance-of v0, p1, Ljava/lang/ExceptionInInitializerError;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 128
    goto :goto_0
.end method

.method private handleUnknownError(Ljava/lang/String;I)V
    .locals 3
    .param p1, "phase"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 138
    const-string v0, "miuisdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support. phase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/SdkErrorInstrumentation;->handleSdkError(Lmiui/external/SdkConstants$SdkError;)V

    .line 141
    return-void
.end method

.method private initializeSdk()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v1, "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "com.miui.internal.core.SdkManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v6, "initialize"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/app/Application;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/util/Map;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 85
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 86
    const-string v3, "initialize"

    invoke-direct {p0, v3, v0}, Lmiui/external/Application;->handleUnknownError(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 93
    .end local v0    # "code":I
    .end local v1    # "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return v3

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v2}, Lmiui/external/Application;->handleGenericError(Ljava/lang/Throwable;)V

    move v3, v4

    .line 91
    goto :goto_0

    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "code":I
    .restart local v1    # "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    move v3, v5

    .line 93
    goto :goto_0
.end method

.method private loadSdk()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 62
    :try_start_0
    invoke-static {}, Lmiui/external/SdkHelper;->isMiuiSystem()Z

    move-result v5

    if-nez v5, :cond_0

    .line 63
    const/4 v5, 0x0

    const-string v6, "com.miui.sdk"

    const-string v7, "miui"

    invoke-static {v5, v6, v7}, Lmiui/external/SdkHelper;->getApkPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "apkPath":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "com.miui.sdk"

    invoke-static {v5, v6}, Lmiui/external/SdkHelper;->getLibPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "libPath":Ljava/lang/String;
    const/4 v5, 0x0

    const-class v6, Lmiui/external/Application;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v0, v5, v1, v6}, Lmiui/external/SdkLoader;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v2

    .line 66
    .local v2, "loaded":Z
    if-nez v2, :cond_0

    .line 67
    sget-object v5, Lmiui/external/SdkConstants$SdkError;->NO_SDK:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v5}, Lmiui/external/SdkErrorInstrumentation;->handleSdkError(Lmiui/external/SdkConstants$SdkError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "libPath":Ljava/lang/String;
    .end local v2    # "loaded":Z
    :goto_0
    return v4

    .line 71
    :catch_0
    move-exception v3

    .line 72
    .local v3, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v3}, Lmiui/external/Application;->handleGenericError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private startSdk()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v1, "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "com.miui.internal.core.SdkManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v6, "start"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/util/Map;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 103
    .local v0, "code":I
    if-ne v0, v5, :cond_0

    .line 104
    sget-object v3, Lmiui/external/SdkConstants$SdkError;->LOW_SDK_VERSION:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v3}, Lmiui/external/SdkErrorInstrumentation;->handleSdkError(Lmiui/external/SdkConstants$SdkError;)V

    move v3, v4

    .line 114
    .end local v0    # "code":I
    .end local v1    # "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return v3

    .line 106
    .restart local v0    # "code":I
    .restart local v1    # "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 107
    const-string v3, "start"

    invoke-direct {p0, v3, v0}, Lmiui/external/Application;->handleUnknownError(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 108
    goto :goto_0

    .line 110
    .end local v0    # "code":I
    .end local v1    # "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    .line 111
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v2}, Lmiui/external/Application;->handleGenericError(Ljava/lang/Throwable;)V

    move v3, v4

    .line 112
    goto :goto_0

    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "code":I
    .restart local v1    # "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    move v3, v5

    .line 114
    goto :goto_0
.end method


# virtual methods
.method public final getApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 221
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/external/Application;->superOnConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lmiui/external/Application;->mInitialized:Z

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p0}, Lmiui/external/ApplicationDelegate;->attach(Lmiui/external/Application;)V

    .line 166
    :cond_2
    invoke-direct {p0}, Lmiui/external/Application;->startSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {p0}, Lmiui/external/Application;->superOnCreate()V

    goto :goto_0
.end method

.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onLowMemory()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onLowMemory()V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lmiui/external/Application;->superOnLowMemory()V

    goto :goto_0
.end method

.method public final onTerminate()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onTerminate()V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lmiui/external/Application;->superOnTerminate()V

    goto :goto_0
.end method

.method public final onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onTrimMemory(I)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/external/Application;->superOnTrimMemory(I)V

    goto :goto_0
.end method

.method final superOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 230
    return-void
.end method

.method final superOnCreate()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 178
    return-void
.end method

.method final superOnLowMemory()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 204
    return-void
.end method

.method final superOnTerminate()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 191
    return-void
.end method

.method final superOnTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 217
    return-void
.end method
