.class Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "EditableListViewDelegate.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/EditableListViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapterWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/miui/internal/widget/EditableListViewDelegate;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/widget/ListAdapter;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 525
    iput-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    .line 526
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 616
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v4, 0x8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 565
    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 567
    .local v3, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # invokes: Lcom/miui/internal/widget/EditableListViewDelegate;->findCheckBoxByView(Landroid/view/View;)Landroid/widget/CheckBox;
    invoke-static {v5, v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$000(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v0

    .line 568
    .local v0, "checkBox":Landroid/widget/CheckBox;
    if-eqz v0, :cond_4

    .line 569
    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v5}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$200(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v1

    .line 570
    .local v1, "choiceMode":I
    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v5, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemChecked(I)Z

    move-result v2

    .line 571
    .local v2, "isChecked":Z
    const/4 v5, 0x3

    if-ne v1, v5, :cond_5

    .line 572
    iget-object v5, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$400(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 576
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTranslationX()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_3

    .line 578
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setTranslationX(F)V

    .line 579
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 581
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 583
    .end local v1    # "choiceMode":I
    .end local v2    # "isChecked":Z
    :cond_4
    return-object v3

    .line 573
    .restart local v1    # "choiceMode":I
    .restart local v2    # "isChecked":Z
    :cond_5
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 574
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 608
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 536
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 541
    return-void
.end method
