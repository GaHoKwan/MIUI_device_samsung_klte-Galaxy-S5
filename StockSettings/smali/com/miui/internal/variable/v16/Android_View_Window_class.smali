.class public Lcom/miui/internal/variable/v16/Android_View_Window_class;
.super Lcom/miui/internal/variable/Android_View_Window_class;
.source "Android_View_Window_class.java"


# static fields
.field private static final EXTRA_FLAG_STATUS_BAR_DARK_MODE:I = 0x10

.field private static final EXTRA_FLAG_STATUS_BAR_TRANSPARENT:I = 0x1

.field private static final EXTRA_FLAG_STATUS_BAR_TRANSPARENT_MASK:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_Window_class;-><init>()V

    return-void
.end method


# virtual methods
.method public setTranslucentStatus(Landroid/view/Window;I)Z
    .locals 8
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "translucentStatus"    # I

    .prologue
    const/16 v1, 0x11

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    sget-object v4, Lcom/miui/internal/variable/v16/Android_View_Window_class;->setExtraFlags:Lmiui/reflect/Method;

    if-nez v4, :cond_0

    .line 47
    :goto_0
    return v2

    .line 28
    :cond_0
    const/4 v2, 0x1

    .line 29
    .local v2, "success":Z
    if-nez p2, :cond_1

    .line 31
    :try_start_0
    sget-object v3, Lcom/miui/internal/variable/v16/Android_View_Window_class;->setExtraFlags:Lmiui/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, p1, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v3

    const-string v4, "clearExtraFlags failed"

    invoke-virtual {v3, v4, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    const/4 v2, 0x0

    .line 35
    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    if-ne p2, v3, :cond_2

    .line 40
    .local v1, "flags":I
    :goto_1
    :try_start_1
    sget-object v3, Lcom/miui/internal/variable/v16/Android_View_Window_class;->setExtraFlags:Lmiui/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, p1, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 41
    :catch_1
    move-exception v0

    .line 42
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v3

    const-string v4, "addExtraFlags failed"

    invoke-virtual {v3, v4, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v2, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "flags":I
    :cond_2
    move v1, v3

    .line 37
    goto :goto_1
.end method
