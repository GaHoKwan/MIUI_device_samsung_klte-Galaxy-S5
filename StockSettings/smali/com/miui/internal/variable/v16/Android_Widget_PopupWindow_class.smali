.class public Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;
.super Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;
.source "Android_Widget_PopupWindow_class.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;-><init>()V

    return-void
.end method


# virtual methods
.method public setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V
    .locals 6
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "enabled"    # Z

    .prologue
    .line 15
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled:Lmiui/reflect/Method;

    if-eqz v1, :cond_0

    .line 17
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled:Lmiui/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "invoke setLayoutInScreenEnabled failed"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setLayoutInsetDecor(Landroid/widget/PopupWindow;Z)V
    .locals 6
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "enabled"    # Z

    .prologue
    .line 26
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;->setLayoutInsetDecor:Lmiui/reflect/Method;

    if-eqz v1, :cond_0

    .line 28
    :try_start_0
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Widget_PopupWindow_class;->setLayoutInsetDecor:Lmiui/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "invoke setLayoutInsetDecor failed"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
