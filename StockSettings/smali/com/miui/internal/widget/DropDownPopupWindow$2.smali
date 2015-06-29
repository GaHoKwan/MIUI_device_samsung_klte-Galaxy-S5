.class Lcom/miui/internal/widget/DropDownPopupWindow$2;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/DropDownPopupWindow;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/internal/widget/DropDownPopupWindow$2;->this$0:Lcom/miui/internal/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private tryDismiss()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow$2;->this$0:Lcom/miui/internal/widget/DropDownPopupWindow;

    # getter for: Lcom/miui/internal/widget/DropDownPopupWindow;->mDismissPending:Z
    invoke-static {v0}, Lcom/miui/internal/widget/DropDownPopupWindow;->access$500(Lcom/miui/internal/widget/DropDownPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow$2;->this$0:Lcom/miui/internal/widget/DropDownPopupWindow;

    # invokes: Lcom/miui/internal/widget/DropDownPopupWindow;->realDismiss()V
    invoke-static {v0}, Lcom/miui/internal/widget/DropDownPopupWindow;->access$600(Lcom/miui/internal/widget/DropDownPopupWindow;)V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/internal/widget/DropDownPopupWindow$2;->tryDismiss()V

    .line 71
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/miui/internal/widget/DropDownPopupWindow$2;->tryDismiss()V

    .line 66
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 75
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow$2;->this$0:Lcom/miui/internal/widget/DropDownPopupWindow;

    # getter for: Lcom/miui/internal/widget/DropDownPopupWindow;->mDismissPending:Z
    invoke-static {v0}, Lcom/miui/internal/widget/DropDownPopupWindow;->access$500(Lcom/miui/internal/widget/DropDownPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow$2;->this$0:Lcom/miui/internal/widget/DropDownPopupWindow;

    # getter for: Lcom/miui/internal/widget/DropDownPopupWindow;->mDropDownController:Lcom/miui/internal/widget/DropDownPopupWindow$Controller;
    invoke-static {v0}, Lcom/miui/internal/widget/DropDownPopupWindow;->access$700(Lcom/miui/internal/widget/DropDownPopupWindow;)Lcom/miui/internal/widget/DropDownPopupWindow$Controller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/miui/internal/widget/DropDownPopupWindow$2;->this$0:Lcom/miui/internal/widget/DropDownPopupWindow;

    # getter for: Lcom/miui/internal/widget/DropDownPopupWindow;->mDropDownController:Lcom/miui/internal/widget/DropDownPopupWindow$Controller;
    invoke-static {v0}, Lcom/miui/internal/widget/DropDownPopupWindow;->access$700(Lcom/miui/internal/widget/DropDownPopupWindow;)Lcom/miui/internal/widget/DropDownPopupWindow$Controller;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/internal/widget/DropDownPopupWindow$Controller;->onDismiss()V

    .line 61
    :cond_0
    return-void
.end method
