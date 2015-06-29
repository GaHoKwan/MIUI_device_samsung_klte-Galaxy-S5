.class Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;
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
    name = "SearchViewAnimationProcessor"
.end annotation


# instance fields
.field private mButtonCancelMargin:I

.field final synthetic this$0:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 4
    .param p1, "animateToVisible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 550
    if-eqz p1, :cond_0

    .line 552
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 553
    .local v0, "measureSpec":I
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mButtonCancel:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$000(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 554
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mButtonCancel:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$000(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->mButtonCancelMargin:I

    .line 560
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mButtonCancel:Landroid/view/View;
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$000(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->mButtonCancelMargin:I

    add-int/2addr v2, v3

    # setter for: Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXStart:I
    invoke-static {v1, v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$202(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 562
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXStart:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$200(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    # setter for: Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXLength:I
    invoke-static {v1, v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$302(Lcom/miui/internal/widget/SearchActionModeView;I)I

    .line 563
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 564
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 566
    .end local v0    # "measureSpec":I
    :cond_0
    return-void

    .line 557
    .restart local v0    # "measureSpec":I
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mButtonCancel:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$000(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->mButtonCancelMargin:I

    .line 558
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$drawable;->edit_text_search_input_bg_light:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onStop(Z)V
    .locals 3
    .param p1, "animateToVisible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 602
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 603
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setAlpha(F)V

    .line 605
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_1

    .line 606
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 607
    .local v0, "lParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mButtonCancel:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$000(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->mButtonCancelMargin:I

    add-int/2addr v1, v2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 609
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    .end local v0    # "lParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    if-eqz p1, :cond_4

    .line 612
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_2

    .line 613
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 614
    .restart local v0    # "lParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mButtonCancel:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$000(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->mButtonCancelMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 615
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    .end local v0    # "lParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    :goto_1
    return-void

    .line 607
    .restart local v0    # "lParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 618
    .end local v0    # "lParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$drawable;->edit_text_search_normal_light:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 619
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1
.end method

.method public onUpdate(ZF)V
    .locals 7
    .param p1, "animateToVisible"    # Z
    .param p2, "progress"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 570
    if-nez p1, :cond_0

    .line 571
    sub-float p2, v6, p2

    .line 574
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_3

    .line 575
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mButtonCancel:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$000(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXStart:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$200(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXLength:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 577
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/SearchActionModeView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v3}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXLength:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRight(I)V

    .line 588
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    if-lez v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mOriginalPaddingTop:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$500(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v4}, Lcom/miui/internal/widget/SearchActionModeView;->access$400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v4}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v5}, Lcom/miui/internal/widget/SearchActionModeView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/miui/internal/widget/SearchActionModeView;->setPadding(IIII)V

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setAlpha(F)V

    .line 594
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$600(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 595
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$600(Lcom/miui/internal/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sub-float v2, v6, p2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 597
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v1, p2}, Lcom/miui/internal/widget/SearchActionModeView;->setAlpha(F)V

    .line 598
    return-void

    .line 581
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mButtonCancel:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$000(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXLength:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXStart:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$200(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 583
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXStart:I
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$200(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v6, p2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXLength:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 585
    .local v0, "translationx":F
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz p1, :cond_4

    .end local v0    # "translationx":F
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTranslationX(F)V

    goto/16 :goto_0

    .restart local v0    # "translationx":F
    :cond_4
    iget-object v2, p0, Lcom/miui/internal/widget/SearchActionModeView$SearchViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mBackViewTranslationXLength:I
    invoke-static {v2}, Lcom/miui/internal/widget/SearchActionModeView;->access$300(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_1
.end method
