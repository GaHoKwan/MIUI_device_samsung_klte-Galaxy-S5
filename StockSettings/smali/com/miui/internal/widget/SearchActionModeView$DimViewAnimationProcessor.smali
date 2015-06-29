.class Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;
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
    name = "DimViewAnimationProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SearchActionModeView;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 2
    .param p1, "animateToVisible"    # Z

    .prologue
    .line 735
    if-eqz p1, :cond_0

    .line 736
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1400(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1400(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1400(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 740
    :cond_0
    return-void
.end method

.method public onStop(Z)V
    .locals 2
    .param p1, "animateToVisible"    # Z

    .prologue
    const/16 v1, 0x8

    .line 750
    if-eqz p1, :cond_1

    .line 751
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$100(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1400(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1400(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/SearchActionModeView;->access$1400(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public onUpdate(ZF)V
    .locals 2
    .param p1, "animateToVisible"    # Z
    .param p2, "progress"    # F

    .prologue
    .line 744
    if-eqz p1, :cond_0

    move v0, p2

    .line 745
    .local v0, "alpha":F
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/SearchActionModeView$DimViewAnimationProcessor;->this$0:Lcom/miui/internal/widget/SearchActionModeView;

    # getter for: Lcom/miui/internal/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/internal/widget/SearchActionModeView;->access$1400(Lcom/miui/internal/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 746
    return-void

    .line 744
    .end local v0    # "alpha":F
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, p2

    goto :goto_0
.end method
