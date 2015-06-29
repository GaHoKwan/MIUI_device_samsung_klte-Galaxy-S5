.class public abstract Lcom/miui/internal/variable/Android_View_LayoutInflater_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "Android_View_LayoutInflater_class.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_View_LayoutInflater_class$1;,
        Lcom/miui/internal/variable/Android_View_LayoutInflater_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy",
        "<",
        "Landroid/view/LayoutInflater;",
        ">;"
    }
.end annotation


# instance fields
.field protected mDecorViewWindow:Landroid/view/Window;

.field protected mReplaceToMiuiDecorView:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Landroid/view/LayoutInflater;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/variable/Android_View_LayoutInflater_class;->mReplaceToMiuiDecorView:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/variable/Android_View_LayoutInflater_class;->mDecorViewWindow:Landroid/view/Window;

    .line 23
    return-void
.end method


# virtual methods
.method public cancelNextDecorViewInflater()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/variable/Android_View_LayoutInflater_class;->mReplaceToMiuiDecorView:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/variable/Android_View_LayoutInflater_class;->mDecorViewWindow:Landroid/view/Window;

    .line 33
    return-void
.end method

.method public notifyNextDecorViewInflater(Landroid/view/Window;)V
    .locals 1
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/variable/Android_View_LayoutInflater_class;->mReplaceToMiuiDecorView:Z

    .line 27
    iput-object p1, p0, Lcom/miui/internal/variable/Android_View_LayoutInflater_class;->mDecorViewWindow:Landroid/view/Window;

    .line 28
    return-void
.end method
