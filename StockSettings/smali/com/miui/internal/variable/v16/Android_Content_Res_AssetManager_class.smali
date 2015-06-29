.class public Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "Android_Content_Res_AssetManager_class.java"

# interfaces
.implements Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy",
        "<",
        "Landroid/content/res/AssetManager;",
        ">;",
        "Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;"
    }
.end annotation


# static fields
.field private static final mAddAssetPath:Lmiui/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "addAssetPath"

    const-string v2, "(Ljava/lang/String;)I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->mAddAssetPath:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Landroid/content/res/AssetManager;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 27
    return-void
.end method


# virtual methods
.method public addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 6
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 63
    :try_start_0
    sget-object v2, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->mAddAssetPath:Lmiui/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, p1, v4}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :goto_0
    return v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v3, "android.content.res.AssetManager.addAssetPath"

    invoke-virtual {v2, v3, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public buildProxy()V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    const-string v1, "addAssetPath"

    const-string v2, "(Ljava/lang/String;)I"

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.content.res.AssetManager.addAssetPath"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected handle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->handleAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method protected handleAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 1
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/content/res/AssetManager;
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->originalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    .line 38
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->originalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public newInstance()Landroid/content/res/AssetManager;
    .locals 2

    .prologue
    .line 57
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "()V"

    invoke-static {v0, v1}, Lmiui/reflect/Constructor;->of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    return-object v0
.end method

.method protected originalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/content/res/AssetManager;
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Content_Res_AssetManager_class.originalAddAssetPath(long, AssetManager, String)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
