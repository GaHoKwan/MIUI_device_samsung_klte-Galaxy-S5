.class Lmiui/widget/SlidingButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlidingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/SlidingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lmiui/widget/SlidingButton;


# direct methods
.method constructor <init>(Lmiui/widget/SlidingButton;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lmiui/widget/SlidingButton$1;->this$0:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SlidingButton$1;->mCanceled:Z

    .line 98
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 102
    iget-boolean v1, p0, Lmiui/widget/SlidingButton$1;->mCanceled:Z

    if-eqz v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lmiui/widget/SlidingButton$1;->this$0:Lmiui/widget/SlidingButton;

    const/4 v2, 0x0

    # setter for: Lmiui/widget/SlidingButton;->mAnimator:Landroid/animation/Animator;
    invoke-static {v1, v2}, Lmiui/widget/SlidingButton;->access$002(Lmiui/widget/SlidingButton;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 106
    iget-object v1, p0, Lmiui/widget/SlidingButton$1;->this$0:Lmiui/widget/SlidingButton;

    # getter for: Lmiui/widget/SlidingButton;->mSliderOffset:I
    invoke-static {v1}, Lmiui/widget/SlidingButton;->access$100(Lmiui/widget/SlidingButton;)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/SlidingButton$1;->this$0:Lmiui/widget/SlidingButton;

    # getter for: Lmiui/widget/SlidingButton;->mSliderPositionEnd:I
    invoke-static {v2}, Lmiui/widget/SlidingButton;->access$200(Lmiui/widget/SlidingButton;)I

    move-result v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 107
    .local v0, "isChecked":Z
    :goto_1
    iget-object v1, p0, Lmiui/widget/SlidingButton$1;->this$0:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lmiui/widget/SlidingButton$1;->this$0:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 109
    iget-object v1, p0, Lmiui/widget/SlidingButton$1;->this$0:Lmiui/widget/SlidingButton;

    # getter for: Lmiui/widget/SlidingButton;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v1}, Lmiui/widget/SlidingButton;->access$300(Lmiui/widget/SlidingButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lmiui/widget/SlidingButton$1;->this$0:Lmiui/widget/SlidingButton;

    new-instance v2, Lmiui/widget/SlidingButton$1$1;

    invoke-direct {v2, p0, v0}, Lmiui/widget/SlidingButton$1$1;-><init>(Lmiui/widget/SlidingButton$1;Z)V

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 106
    .end local v0    # "isChecked":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/SlidingButton$1;->mCanceled:Z

    .line 93
    return-void
.end method
