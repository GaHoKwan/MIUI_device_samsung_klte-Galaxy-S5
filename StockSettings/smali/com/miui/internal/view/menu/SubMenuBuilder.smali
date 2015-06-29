.class public Lcom/miui/internal/view/menu/SubMenuBuilder;
.super Lcom/miui/internal/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lcom/miui/internal/view/menu/MenuItemImpl;

.field private mParentMenu:Lcom/miui/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentMenu"    # Lcom/miui/internal/view/menu/MenuBuilder;
    .param p3, "item"    # Lcom/miui/internal/view/menu/MenuItemImpl;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 29
    iput-object p3, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    .line 30
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public collapseItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/internal/view/menu/MenuItemImpl;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public dispatchMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/internal/view/menu/MenuItemImpl;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->expandItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    .line 127
    .local v0, "itemId":I
    :goto_0
    if-nez v0, :cond_1

    .line 128
    const/4 v1, 0x0

    .line 130
    :goto_1
    return-object v1

    .line 126
    .end local v0    # "itemId":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    .restart local v0    # "itemId":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/miui/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 63
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 92
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 87
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 102
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 97
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/miui/internal/view/menu/MenuBuilder;

    .line 107
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 82
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 77
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 35
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 45
    return-void
.end method
