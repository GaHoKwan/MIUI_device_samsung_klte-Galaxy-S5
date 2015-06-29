.class Lcom/miui/internal/widget/ActionBarContainer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarContainer;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarContainer;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer$2;->this$0:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer$2;->this$0:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->access$002(Lcom/miui/internal/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 90
    return-void
.end method
