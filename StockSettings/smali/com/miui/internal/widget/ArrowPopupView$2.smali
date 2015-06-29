.class Lcom/miui/internal/widget/ArrowPopupView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ArrowPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ArrowPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancel:Z

.field final synthetic this$0:Lcom/miui/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ArrowPopupView;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->mCancel:Z

    .line 142
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->mCancel:Z

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/widget/ArrowPopupView;->mIsDismissing:Z
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->access$102(Lcom/miui/internal/widget/ArrowPopupView;Z)Z

    .line 150
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->access$002(Lcom/miui/internal/widget/ArrowPopupView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 151
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;
    invoke-static {v0}, Lcom/miui/internal/widget/ArrowPopupView;->access$200(Lcom/miui/internal/widget/ArrowPopupView;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->dismiss()V

    .line 152
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowMode(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->mCancel:Z

    .line 136
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$2;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v1, 0x1

    # setter for: Lcom/miui/internal/widget/ArrowPopupView;->mIsDismissing:Z
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->access$102(Lcom/miui/internal/widget/ArrowPopupView;Z)Z

    .line 137
    return-void
.end method
