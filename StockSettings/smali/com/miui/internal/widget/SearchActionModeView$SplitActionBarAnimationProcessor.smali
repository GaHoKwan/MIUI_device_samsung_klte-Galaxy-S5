.class Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;
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
    name = "SplitActionBarAnimationProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 0
    .param p1, "animateToVisible"    # Z

    .prologue
    .line 656
    return-void
.end method

.method public onStop(Z)V
    .locals 0
    .param p1, "animateToVisible"    # Z

    .prologue
    .line 671
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 2
    .param p1, "animateToVisible"    # Z
    .param p2, "progress"    # F

    .prologue
    .line 660
    if-nez p1, :cond_0

    .line 661
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p2, v1, p2

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$SplitActionBarAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/SearchActionModeView;->getSplitActionBarContainer()Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object v0

    .line 664
    .local v0, "splitActionBarContainer":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 665
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 667
    :cond_1
    return-void
.end method
