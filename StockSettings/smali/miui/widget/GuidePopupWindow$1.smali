.class Lmiui/widget/GuidePopupWindow$1;
.super Ljava/lang/Object;
.source "GuidePopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/GuidePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/GuidePopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/GuidePopupWindow;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lmiui/widget/GuidePopupWindow$1;->this$0:Lmiui/widget/GuidePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow$1;->this$0:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow$1;->this$0:Lmiui/widget/GuidePopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->dismiss(Z)V

    .line 307
    :cond_0
    return-void
.end method
