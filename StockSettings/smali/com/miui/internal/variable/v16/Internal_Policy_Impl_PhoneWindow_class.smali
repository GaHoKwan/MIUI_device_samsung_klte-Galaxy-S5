.class public Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;
.super Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;
.source "Internal_Policy_Impl_PhoneWindow_class.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "installDecor"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 17
    return-void
.end method

.method protected handle()V
    .locals 3

    .prologue
    .line 21
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->handleInstallDecor(JLjava/lang/Object;)V

    .line 22
    return-void
.end method

.method protected handleInstallDecor(JLjava/lang/Object;)V
    .locals 5
    .param p1, "cookie"    # J
    .param p3, "window"    # Ljava/lang/Object;

    .prologue
    .line 30
    move-object v2, p3

    check-cast v2, Landroid/view/Window;

    .line 31
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lmiui/os/Build;->isUsingMiui(Landroid/content/Context;)Z

    move-result v1

    .line 32
    .local v1, "usingMiui":Z
    if-eqz v1, :cond_0

    .line 33
    invoke-static {}, Lcom/miui/internal/variable/Android_View_LayoutInflater_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_LayoutInflater_class$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/internal/variable/Android_View_LayoutInflater_class$Factory;->get()Lcom/miui/internal/variable/Android_View_LayoutInflater_class;

    move-result-object v0

    .line 35
    .local v0, "layoutInflaterClass":Lcom/miui/internal/variable/Android_View_LayoutInflater_class;
    invoke-virtual {v0, v2}, Lcom/miui/internal/variable/Android_View_LayoutInflater_class;->notifyNextDecorViewInflater(Landroid/view/Window;)V

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->originalInstallDecor(JLjava/lang/Object;)V

    .line 37
    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_LayoutInflater_class;->cancelNextDecorViewInflater()V

    .line 41
    .end local v0    # "layoutInflaterClass":Lcom/miui/internal/variable/Android_View_LayoutInflater_class;
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Internal_Policy_Impl_PhoneWindow_class;->originalInstallDecor(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method protected originalInstallDecor(JLjava/lang/Object;)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "window"    # Ljava/lang/Object;

    .prologue
    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Internal_Policy_Impl_PhoneWindow_class.originalInstallDecor(long, Object)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
