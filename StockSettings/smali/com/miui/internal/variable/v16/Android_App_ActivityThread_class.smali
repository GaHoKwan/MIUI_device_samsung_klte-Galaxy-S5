.class public Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;
.super Ljava/lang/Object;
.source "Android_App_ActivityThread_class.java"

# interfaces
.implements Lcom/miui/internal/variable/Android_App_ActivityThread_class;


# instance fields
.field private mCurrentActivityThread:Ljava/lang/Object;

.field private mCurrentApplication:Landroid/app/Application;

.field private mInitialLoadedApk:Ljava/lang/Object;

.field private mInitialPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v2, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentActivityThread:Ljava/lang/Object;

    .line 25
    iput-object v2, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentApplication:Landroid/app/Application;

    .line 31
    :try_start_0
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentActivityThread"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 32
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 33
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentActivityThread:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v3, "android.app.ActivityThread.currentActivityThread"

    invoke-virtual {v2, v3, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public currentActivityThread()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentActivityThread:Ljava/lang/Object;

    return-object v0
.end method

.method public currentApplication()Landroid/app/Application;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentApplication:Landroid/app/Application;

    if-nez v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentActivityThread:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "currentApplication"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 44
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 45
    const/4 v2, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iput-object v2, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentApplication:Landroid/app/Application;

    .line 47
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mCurrentApplication:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-object v2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v4, "android.app.ActivityThread.currentApplication"

    invoke-virtual {v2, v4, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 50
    goto :goto_0
.end method

.method public getInitialLoadedApk(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "activityThread"    # Ljava/lang/Object;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->getInitialPackageName(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mInitialLoadedApk:Ljava/lang/Object;

    return-object v0
.end method

.method public getInitialPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "activityThread"    # Ljava/lang/Object;

    .prologue
    .line 62
    :try_start_0
    iget-object v4, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mInitialPackageName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mPackages"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 64
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 66
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mInitialPackageName:Ljava/lang/String;

    .line 67
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 68
    .local v3, "value":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<*>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mInitialLoadedApk:Ljava/lang/Object;

    .line 70
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v3    # "value":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<*>;"
    :cond_0
    iget-object v4, p0, Lcom/miui/internal/variable/v16/Android_App_ActivityThread_class;->mInitialPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-object v4

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v4

    const-string v5, "android.app.ActivityThread.mPackages"

    invoke-virtual {v4, v5, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    const/4 v4, 0x0

    goto :goto_0
.end method
