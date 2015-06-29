.class public Lcom/miui/internal/variable/v16/Android_View_LayoutInflater_class;
.super Lcom/miui/internal/variable/Android_View_LayoutInflater_class;
.source "Android_View_LayoutInflater_class.java"


# instance fields
.field private mCookieInflate:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_LayoutInflater_class;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelNextDecorViewInflater()V
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/miui/internal/variable/v16/Android_View_LayoutInflater_class;->mCookieInflate:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_LayoutInflater_class;->detachMethod(J)V

    .line 28
    invoke-super {p0}, Lcom/miui/internal/variable/Android_View_LayoutInflater_class;->cancelNextDecorViewInflater()V

    .line 29
    return-void
.end method

.method protected handle()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 33
    const-wide/16 v2, 0x0

    move-object v1, p0

    move-object v6, v4

    move v7, v5

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/variable/v16/Android_View_LayoutInflater_class;->handleInflate(JLandroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    return-void
.end method

.method protected handleInflate(JLandroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .param p1, "cookie"    # J
    .param p3, "inflater"    # Landroid/view/LayoutInflater;
    .param p4, "resId"    # I
    .param p5, "root"    # Landroid/view/ViewGroup;
    .param p6, "attachToRoot"    # Z

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/miui/internal/variable/v16/Android_View_LayoutInflater_class;->mReplaceToMiuiDecorView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_View_LayoutInflater_class;->mDecorViewWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/variable/v16/Android_View_LayoutInflater_class;->mReplaceToMiuiDecorView:Z

    .line 44
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_View_LayoutInflater_class;->mDecorViewWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/app/ActivityDelegate;->getDecorViewLayoutRes(Landroid/content/Context;)I

    move-result p4

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_View_LayoutInflater_class;->mDecorViewWindow:Landroid/view/Window;

    .line 48
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_View_LayoutInflater_class;->originalInflate(JLandroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyNextDecorViewInflater(Landroid/view/Window;)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/miui/internal/variable/Android_View_LayoutInflater_class;->notifyNextDecorViewInflater(Landroid/view/Window;)V

    .line 22
    const-string v0, "inflate"

    const-string v1, "(ILandroid/view/ViewGroup;Z)Landroid/view/View;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_LayoutInflater_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/variable/v16/Android_View_LayoutInflater_class;->mCookieInflate:J

    .line 23
    return-void
.end method

.method protected originalInflate(JLandroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "inflater"    # Landroid/view/LayoutInflater;
    .param p4, "resId"    # I
    .param p5, "root"    # Landroid/view/ViewGroup;
    .param p6, "attachToRoot"    # Z

    .prologue
    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_View_LayoutInflater_class.inflate(int, ViewGroup)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
