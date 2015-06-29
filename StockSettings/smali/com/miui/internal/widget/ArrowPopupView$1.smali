.class Lcom/miui/internal/widget/ArrowPopupView$1;
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
    .line 108
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$1;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView$1;->mCancel:Z

    .line 119
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView$1;->mCancel:Z

    if-eqz v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView$1;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->access$002(Lcom/miui/internal/widget/ArrowPopupView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ArrowPopupView$1;->mCancel:Z

    .line 114
    return-void
.end method
