.class Lcom/miui/internal/widget/GuidePopupView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GuidePopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/GuidePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancel:Z

.field final synthetic this$0:Lcom/miui/internal/widget/GuidePopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/GuidePopupView;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView$1;->this$0:Lcom/miui/internal/widget/GuidePopupView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView$1;->mCancel:Z

    .line 122
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView$1;->mCancel:Z

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView$1;->this$0:Lcom/miui/internal/widget/GuidePopupView;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/miui/internal/widget/GuidePopupView;->access$002(Lcom/miui/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView$1;->mCancel:Z

    .line 117
    return-void
.end method
