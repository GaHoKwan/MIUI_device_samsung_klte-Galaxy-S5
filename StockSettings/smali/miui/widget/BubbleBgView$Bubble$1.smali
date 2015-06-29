.class Lmiui/widget/BubbleBgView$Bubble$1;
.super Ljava/lang/Object;
.source "BubbleBgView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/BubbleBgView$Bubble;->resetAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/BubbleBgView$Bubble;


# direct methods
.method constructor <init>(Lmiui/widget/BubbleBgView$Bubble;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lmiui/widget/BubbleBgView$Bubble$1;->this$0:Lmiui/widget/BubbleBgView$Bubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 158
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 153
    iget-object v0, p0, Lmiui/widget/BubbleBgView$Bubble$1;->this$0:Lmiui/widget/BubbleBgView$Bubble;

    # invokes: Lmiui/widget/BubbleBgView$Bubble;->resetAnimator()V
    invoke-static {v0}, Lmiui/widget/BubbleBgView$Bubble;->access$500(Lmiui/widget/BubbleBgView$Bubble;)V

    .line 154
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 162
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 149
    return-void
.end method
