.class Lmiui/widget/ImmersionListPopupWindow$AnimationListener;
.super Ljava/lang/Object;
.source "ImmersionListPopupWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ImmersionListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationListener"
.end annotation


# instance fields
.field private mBackgroundAnimator:Landroid/animation/Animator;

.field private mInAnimation:Z

.field final synthetic this$0:Lmiui/widget/ImmersionListPopupWindow;


# direct methods
.method private constructor <init>(Lmiui/widget/ImmersionListPopupWindow;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ImmersionListPopupWindow;Lmiui/widget/ImmersionListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/widget/ImmersionListPopupWindow;
    .param p2, "x1"    # Lmiui/widget/ImmersionListPopupWindow$1;

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->mBackgroundAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->mBackgroundAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 417
    iput-object v1, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->mBackgroundAnimator:Landroid/animation/Animator;

    .line 419
    :cond_0
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    # getter for: Lmiui/widget/ImmersionListPopupWindow;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->access$100(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 420
    iget-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->mInAnimation:Z

    if-nez v0, :cond_1

    .line 421
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    # invokes: Lmiui/widget/ImmersionListPopupWindow;->superDismiss()V
    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->access$900(Lmiui/widget/ImmersionListPopupWindow;)V

    .line 423
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 427
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 405
    iget-boolean v1, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->mInAnimation:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    # getter for: Lmiui/widget/ImmersionListPopupWindow;->mFadeInAnimationController:Landroid/view/animation/LayoutAnimationController;
    invoke-static {v1}, Lmiui/widget/ImmersionListPopupWindow;->access$700(Lmiui/widget/ImmersionListPopupWindow;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    .line 407
    .local v0, "controller":Landroid/view/animation/LayoutAnimationController;
    :goto_0
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    iget-boolean v2, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->mInAnimation:Z

    invoke-virtual {v1, v0, v2}, Lmiui/widget/ImmersionListPopupWindow;->getBackgroundAnimator(Landroid/view/animation/LayoutAnimationController;Z)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->mBackgroundAnimator:Landroid/animation/Animator;

    .line 408
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->mBackgroundAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->mBackgroundAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 411
    :cond_0
    return-void

    .line 405
    .end local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    :cond_1
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    # getter for: Lmiui/widget/ImmersionListPopupWindow;->mFadeOutAnimationController:Landroid/view/animation/LayoutAnimationController;
    invoke-static {v1}, Lmiui/widget/ImmersionListPopupWindow;->access$800(Lmiui/widget/ImmersionListPopupWindow;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    goto :goto_0
.end method

.method public setIsInAnimation(Z)V
    .locals 0
    .param p1, "isInAnimation"    # Z

    .prologue
    .line 400
    iput-boolean p1, p0, Lmiui/widget/ImmersionListPopupWindow$AnimationListener;->mInAnimation:Z

    .line 401
    return-void
.end method
