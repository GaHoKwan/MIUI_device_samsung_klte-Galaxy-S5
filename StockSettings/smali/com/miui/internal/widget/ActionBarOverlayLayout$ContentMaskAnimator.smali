.class public Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentMaskAnimator"
.end annotation


# instance fields
.field private mHideAnimator:Landroid/animation/ObjectAnimator;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mShowAnimator:Landroid/animation/ObjectAnimator;

.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, 0x2

    .line 684
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 687
    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 688
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 690
    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 691
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 692
    return-void

    .line 687
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 690
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/internal/widget/ActionBarOverlayLayout;
    .param p2, "x1"    # Landroid/view/View$OnClickListener;
    .param p3, "x2"    # Lcom/miui/internal/widget/ActionBarOverlayLayout$1;

    .prologue
    .line 676
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public hide()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$400(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->bringToFront()V

    .line 726
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 714
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$400(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->bringToFront()V

    .line 716
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 718
    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 720
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 732
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 704
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 707
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$400(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->bringToFront()V

    .line 708
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->this$0:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    # getter for: Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    :cond_0
    return-void
.end method

.method public show()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method
