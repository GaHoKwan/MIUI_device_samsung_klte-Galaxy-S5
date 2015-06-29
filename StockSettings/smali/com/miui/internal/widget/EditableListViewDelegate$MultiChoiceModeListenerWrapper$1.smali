.class Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;
.super Ljava/lang/Object;
.source "EditableListViewDelegate.java"

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 4
    .param p1, "animateToVisible"    # Z

    .prologue
    .line 399
    if-eqz p1, :cond_0

    .line 400
    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object v3, v3, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # invokes: Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckBoxesInListView()Ljava/util/List;
    invoke-static {v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Ljava/util/List;

    move-result-object v1

    .line 401
    .local v1, "checkBoxes":Ljava/util/List;, "Ljava/util/List<Landroid/widget/CheckBox;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 402
    .local v0, "checkBox":Landroid/widget/CheckBox;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 403
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTranslationX(F)V

    .line 404
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setAlpha(F)V

    goto :goto_0

    .line 407
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "checkBoxes":Ljava/util/List;, "Ljava/util/List<Landroid/widget/CheckBox;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public onStop(Z)V
    .locals 5
    .param p1, "animateToVisible"    # Z

    .prologue
    .line 429
    if-nez p1, :cond_0

    .line 430
    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object v3, v3, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v4, 0x0

    # setter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v3, v4}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$402(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 431
    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object v3, v3, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # invokes: Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckBoxesInListView()Ljava/util/List;
    invoke-static {v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Ljava/util/List;

    move-result-object v1

    .line 432
    .local v1, "checkBoxes":Ljava/util/List;, "Ljava/util/List<Landroid/widget/CheckBox;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 433
    .local v0, "checkBox":Landroid/widget/CheckBox;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 436
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "checkBoxes":Ljava/util/List;, "Ljava/util/List<Landroid/widget/CheckBox;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 7
    .param p1, "animateToVisible"    # Z
    .param p2, "progress"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 411
    if-nez p1, :cond_0

    .line 412
    sub-float p2, v6, p2

    .line 414
    :cond_0
    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object v4, v4, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # invokes: Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckBoxesInListView()Ljava/util/List;
    invoke-static {v4}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Ljava/util/List;

    move-result-object v1

    .line 415
    .local v1, "checkBoxes":Ljava/util/List;, "Ljava/util/List<Landroid/widget/CheckBox;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 416
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 417
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v6, p2

    mul-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setTranslationX(F)V

    goto :goto_0

    .line 419
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_1
    if-eqz p1, :cond_2

    cmpl-float v4, p2, v6

    if-nez v4, :cond_2

    .line 420
    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object v4, v4, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v4}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$200(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    .line 421
    .local v2, "height":I
    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object v4, v4, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mLastBottom:I
    invoke-static {v4}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$300(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result v4

    if-le v4, v2, :cond_2

    .line 422
    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object v4, v4, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v4}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$200(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object v5, v5, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mLastBottom:I
    invoke-static {v5}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$300(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result v5

    sub-int/2addr v5, v2

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 425
    .end local v2    # "height":I
    :cond_2
    return-void
.end method
