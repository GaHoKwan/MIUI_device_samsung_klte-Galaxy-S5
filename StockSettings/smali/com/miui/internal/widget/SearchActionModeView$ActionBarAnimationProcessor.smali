.class Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;
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
    name = "ActionBarAnimationProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 0
    .param p1, "animateToVisible"    # Z

    .prologue
    .line 628
    return-void
.end method

.method public onStop(Z)V
    .locals 2
    .param p1, "animateToVisible"    # Z

    .prologue
    .line 643
    if-eqz p1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    .line 645
    .local v0, "tabScrollView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 646
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 649
    .end local v0    # "tabScrollView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 4
    .param p1, "animateToVisible"    # Z
    .param p2, "progress"    # F

    .prologue
    .line 632
    if-nez p1, :cond_0

    .line 633
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p2, v1, p2

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    .line 636
    .local v0, "actionBarContainer":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 637
    neg-float v1, p2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mStatusBarPaddingTop:I
    invoke-static {v3}, Lcom/miui/internal/widget/SearchActionModeView;->access$400(Lcom/miui/internal/widget/SearchActionModeView;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 639
    :cond_1
    return-void
.end method
