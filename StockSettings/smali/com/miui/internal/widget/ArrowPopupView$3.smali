.class Lcom/miui/internal/widget/ArrowPopupView$3;
.super Ljava/lang/Object;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ArrowPopupView;->animateToShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ArrowPopupView;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x64

    const-wide/16 v10, 0x1e

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 467
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    invoke-virtual {v4}, Lcom/miui/internal/widget/ArrowPopupView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 468
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v4}, Lcom/miui/internal/widget/ArrowPopupView;->access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 469
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v4}, Lcom/miui/internal/widget/ArrowPopupView;->access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 471
    :cond_0
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v4, v5}, Lcom/miui/internal/widget/ArrowPopupView;->access$002(Lcom/miui/internal/widget/ArrowPopupView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 472
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    aput v9, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 473
    .local v2, "dimAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 475
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/miui/internal/widget/ArrowPopupView;->access$300(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    aput v9, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 476
    .local v1, "contentAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 477
    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 478
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/miui/internal/widget/ArrowPopupView;->access$400(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/ImageView;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    aput v9, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 479
    .local v0, "arrowAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 480
    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 482
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    const-string v5, "RollingPercent"

    new-array v6, v7, [F

    aput v9, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 483
    .local v3, "rollAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 484
    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 485
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const v5, 0x3f99999a    # 1.2f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 487
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v4}, Lcom/miui/internal/widget/ArrowPopupView;->access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v8

    aput-object v1, v5, v7

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 488
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v4}, Lcom/miui/internal/widget/ArrowPopupView;->access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v5}, Lcom/miui/internal/widget/ArrowPopupView;->access$500(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 489
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView$3;->this$0:Lcom/miui/internal/widget/ArrowPopupView;

    # getter for: Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v4}, Lcom/miui/internal/widget/ArrowPopupView;->access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 490
    return v7
.end method
