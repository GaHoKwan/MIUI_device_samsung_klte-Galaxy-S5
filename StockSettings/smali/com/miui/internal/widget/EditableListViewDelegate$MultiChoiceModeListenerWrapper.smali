.class Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;
.super Ljava/lang/Object;
.source "EditableListViewDelegate.java"

# interfaces
.implements Lmiui/widget/EditableListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/EditableListViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiChoiceModeListenerWrapper"
.end annotation


# instance fields
.field private mActionModeAnimationListener:Lmiui/view/ActionModeAnimationListener;

.field private mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/miui/internal/widget/EditableListViewDelegate;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V
    .locals 1

    .prologue
    .line 439
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;)V

    iput-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mActionModeAnimationListener:Lmiui/view/ActionModeAnimationListener;

    .line 440
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 474
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x1020019

    if-ne v0, v1, :cond_1

    .line 475
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 480
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 476
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102001a

    if-ne v0, v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isAllItemsChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAllItemsChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "checked"    # Z

    .prologue
    .line 512
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 513
    .local v1, "wrapped":Landroid/widget/AbsListView$MultiChoiceModeListener;
    instance-of v2, v1, Lmiui/widget/EditableListView$MultiChoiceModeListener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 514
    check-cast v0, Lmiui/widget/EditableListView$MultiChoiceModeListener;

    .line 515
    .local v0, "listener":Lmiui/widget/EditableListView$MultiChoiceModeListener;
    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$400(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lmiui/widget/EditableListView$MultiChoiceModeListener;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 517
    .end local v0    # "listener":Lmiui/widget/EditableListView$MultiChoiceModeListener;
    :cond_0
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 459
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # setter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I
    invoke-static {v1, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$502(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    .line 460
    sget v1, Lcom/miui/internal/R$string;->select_item:I

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(I)V

    .line 461
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # setter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$402(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 463
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$400(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;

    move-result-object v0

    check-cast v0, Lmiui/view/EditActionMode;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mActionModeAnimationListener:Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v0, v1}, Lmiui/view/EditActionMode;->addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V

    .line 464
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$600(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 465
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v1, -0x1

    # setter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mLastBottom:I
    invoke-static {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$302(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    .line 466
    const/4 v0, 0x1

    .line 469
    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I
    invoke-static {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$502(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    .line 454
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 455
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 11
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 485
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mPreventDispatchItemCheckedStateChange:Z
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$700(Lcom/miui/internal/widget/EditableListViewDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mSupportHeaderView:Z
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$800(Lcom/miui/internal/widget/EditableListViewDelegate;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$200(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 490
    .local v0, "headerCount":I
    :goto_1
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    .line 491
    .local v7, "itemcount":I
    if-lt p2, v0, :cond_0

    add-int v1, v7, v0

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    sub-int v2, p2, v0

    # invokes: Lcom/miui/internal/widget/EditableListViewDelegate;->isItemCheckable(I)Z
    invoke-static {v1, v2}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$900(Lcom/miui/internal/widget/EditableListViewDelegate;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    if-eqz p5, :cond_3

    const/4 v1, 0x1

    :goto_2
    # += operator for: Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I
    invoke-static {v2, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$512(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    .line 498
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$200(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v2}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$200(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 499
    .local v9, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$600(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object v1

    invoke-interface {v1, v9, p2, p3, p4}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    .line 500
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$600(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    .line 502
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 504
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mLastBottom:I
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$300(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 505
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$200(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v2}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$200(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 506
    .local v8, "lastview":Landroid/view/View;
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v2

    # setter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mLastBottom:I
    invoke-static {v1, v2}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$302(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    goto/16 :goto_0

    .line 489
    .end local v0    # "headerCount":I
    .end local v7    # "itemcount":I
    .end local v8    # "lastview":Landroid/view/View;
    .end local v9    # "view":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 496
    .restart local v0    # "headerCount":I
    .restart local v7    # "itemcount":I
    :cond_3
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 444
    return-void
.end method
