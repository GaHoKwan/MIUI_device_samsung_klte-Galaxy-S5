.class Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;
.super Ljava/lang/Object;
.source "SearchActionModeView.java"

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContentViewAnimationProcessor"
.end annotation


# instance fields
.field mViewPager:Lmiui/view/ViewPager;

.field final synthetic this$0:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 4
    .param p1, "animateToVisible"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 679
    if-eqz p1, :cond_2

    .line 680
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$700(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 681
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$800(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 682
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$800(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v1

    aget v1, v1, v3

    # setter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I
    invoke-static {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$702(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$600(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$800(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 685
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$800(Lcom/miui/internal/widget/SearchActionModeView;)[I

    move-result-object v1

    aget v1, v1, v3

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mActionBarLocation:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$700(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    sub-int/2addr v1, v2

    # setter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I
    invoke-static {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$902(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 686
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$900(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    neg-int v1, v1

    # setter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I
    invoke-static {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1002(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 687
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$600(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    add-int/2addr v0, v2

    # setter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYStart:I
    invoke-static {v1, v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1102(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 688
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYStart:I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1100(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    neg-int v1, v1

    # setter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYLength:I
    invoke-static {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1202(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 693
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/SearchActionModeView;->getViewPager()Lmiui/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mViewPager:Lmiui/view/ViewPager;

    .line 694
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mViewPager:Lmiui/view/ViewPager;

    if-eqz v0, :cond_1

    .line 695
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mViewPager:Lmiui/view/ViewPager;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lmiui/view/ViewPager;->setBottomMarginProgress(F)V

    .line 697
    :cond_1
    return-void

    .line 690
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    .line 691
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, v2, v2}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewPadding(II)V

    goto :goto_0

    .line 695
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public onStop(Z)V
    .locals 5
    .param p1, "animateToVisible"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 713
    if-nez p1, :cond_0

    .line 714
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1300(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 715
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$600(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$600(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$600(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    if-lez v0, :cond_2

    .line 721
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    .line 722
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0, v2}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mViewPager:Lmiui/view/ViewPager;

    if-eqz v0, :cond_3

    .line 725
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mViewPager:Lmiui/view/ViewPager;

    if-eqz p1, :cond_6

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Lmiui/view/ViewPager;->setBottomMarginProgress(F)V

    .line 727
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->mViewPager:Lmiui/view/ViewPager;

    .line 728
    return-void

    :cond_4
    move v1, v2

    .line 718
    goto :goto_0

    :cond_5
    move v0, v2

    .line 722
    goto :goto_1

    :cond_6
    move v0, v4

    .line 725
    goto :goto_2
.end method

.method public onUpdate(ZF)V
    .locals 3
    .param p1, "animateToVisible"    # Z
    .param p2, "progress"    # F

    .prologue
    .line 701
    if-nez p1, :cond_0

    .line 702
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v0

    if-lez v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setContentViewTranslation(I)V

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1300(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$900(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1000(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 708
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYStart:I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1100(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputViewTranslationYLength:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$1200(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setTranslationY(F)V

    .line 709
    return-void
.end method
