.class Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;
.super Ljava/lang/Object;
.source "PhoneActionMenuView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/PhoneActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuViewAnimator"
.end annotation


# instance fields
.field private mCollapseAnimator:Landroid/animation/AnimatorSet;

.field private mExpandAnimator:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;


# direct methods
.method private constructor <init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/internal/view/menu/PhoneActionMenuView;
    .param p2, "x1"    # Lcom/miui/internal/view/menu/PhoneActionMenuView$1;

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 423
    :cond_1
    return-void
.end method

.method public ensureAnimators()V
    .locals 10

    .prologue
    const/high16 v9, 0x10e0000

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 382
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_0

    .line 383
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-static {v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarOverlayLayout(Landroid/view/View;)Lcom/miui/internal/widget/ActionBarOverlayLayout;

    move-result-object v1

    .line 386
    .local v1, "overlayLayout":Lcom/miui/internal/widget/ActionBarOverlayLayout;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 387
    .local v2, "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    const-string v4, "Value"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 388
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    invoke-virtual {v1, p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->show()Landroid/animation/Animator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 389
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v3}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 390
    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 391
    iput-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 393
    new-instance v2, Landroid/animation/AnimatorSet;

    .end local v2    # "set":Landroid/animation/AnimatorSet;
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 394
    .restart local v2    # "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    const-string v4, "Value"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 395
    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    invoke-virtual {v1, p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->hide()Landroid/animation/Animator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 396
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v3}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 397
    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 398
    iput-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 400
    .end local v0    # "objectAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "overlayLayout":Lcom/miui/internal/widget/ActionBarOverlayLayout;
    .end local v2    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    return-void

    .line 387
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 394
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ensureAnimators()V

    .line 411
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 412
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 413
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 414
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 456
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    # setter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$102(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 449
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

    .line 450
    return-void

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    # getter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$200(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    # getter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$200(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    # setter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    invoke-static {v0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$102(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 453
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 440
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    # getter for: Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    invoke-static {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->access$100(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getPresenter()Lcom/miui/internal/view/menu/ActionMenuPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 463
    :cond_0
    return-void
.end method

.method public reverse()V
    .locals 4

    .prologue
    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    .line 430
    :cond_0
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 431
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    .line 434
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 435
    .local v0, "animator":Landroid/animation/Animator;
    check-cast v0, Landroid/animation/ValueAnimator;

    .end local v0    # "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    .line 437
    :cond_2
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->ensureAnimators()V

    .line 404
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 405
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 406
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 407
    return-void
.end method
