.class public abstract Lcom/miui/internal/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuPresenter;


# instance fields
.field private mCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lcom/miui/internal/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuLayoutRes"    # I
    .param p3, "itemLayoutRes"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 47
    iput p2, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 48
    iput p3, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 49
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 117
    .local v0, "currentParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 121
    return-void
.end method

.method public abstract bindItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Lcom/miui/internal/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/miui/internal/view/menu/MenuItemImpl;

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView$ItemView;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/MenuView$ItemView;

    return-object v0
.end method

.method public expandItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/miui/internal/view/menu/MenuItemImpl;

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcom/miui/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 149
    instance-of v1, p2, Lcom/miui/internal/view/menu/MenuView$ItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 150
    check-cast v0, Lcom/miui/internal/view/menu/MenuView$ItemView;

    .line 154
    .local v0, "itemView":Lcom/miui/internal/view/menu/MenuView$ItemView;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->bindItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Lcom/miui/internal/view/menu/MenuView$ItemView;)V

    .line 155
    check-cast v0, Landroid/view/View;

    .end local v0    # "itemView":Lcom/miui/internal/view/menu/MenuView$ItemView;
    return-object v0

    .line 152
    :cond_0
    invoke-virtual {p0, p3}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView$ItemView;

    move-result-object v0

    .restart local v0    # "itemView":Lcom/miui/internal/view/menu/MenuView$ItemView;
    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/MenuView;

    iput-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    .line 61
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    iget-object v1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/miui/internal/view/menu/MenuView;->initialize(Lcom/miui/internal/view/menu/MenuBuilder;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    iput-object p2, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 56
    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    .line 181
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    .line 125
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mId:I

    .line 205
    return-void
.end method

.method public shouldIncludeItem(ILcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/miui/internal/view/menu/MenuItemImpl;

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 9
    .param p1, "cleared"    # Z

    .prologue
    .line 72
    iget-object v6, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    check-cast v6, Landroid/view/ViewGroup;

    .line 73
    .local v6, "parent":Landroid/view/ViewGroup;
    if-nez v6, :cond_1

    .line 107
    :cond_0
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    .line 78
    .local v0, "childIndex":I
    iget-object v8, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v8, :cond_6

    .line 79
    iget-object v8, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/miui/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 80
    iget-object v8, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lcom/miui/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 81
    .local v7, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 82
    .local v3, "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-virtual {p0, v0, v3}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 83
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "convertView":Landroid/view/View;
    instance-of v8, v1, Lcom/miui/internal/view/menu/MenuView$ItemView;

    if-eqz v8, :cond_5

    move-object v8, v1

    check-cast v8, Lcom/miui/internal/view/menu/MenuView$ItemView;

    invoke-interface {v8}, Lcom/miui/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v5

    .line 86
    .local v5, "oldItem":Lcom/miui/internal/view/menu/MenuItemImpl;
    :goto_1
    invoke-virtual {p0, v3, v1, v6}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/miui/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 87
    .local v4, "itemView":Landroid/view/View;
    if-eq v3, v5, :cond_3

    .line 89
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 93
    :cond_3
    if-eq v4, v1, :cond_4

    .line 94
    invoke-virtual {p0, v4, v0}, Lcom/miui/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 96
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v4    # "itemView":Landroid/view/View;
    .end local v5    # "oldItem":Lcom/miui/internal/view/menu/MenuItemImpl;
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 102
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/miui/internal/view/menu/MenuItemImpl;
    .end local v7    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/internal/view/menu/MenuItemImpl;>;"
    :cond_6
    :goto_2
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 103
    iget-object v8, p0, Lcom/miui/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/miui/internal/view/menu/MenuView;

    invoke-interface {v8, v0}, Lcom/miui/internal/view/menu/MenuView;->filterLeftoverView(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
