.class Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/Button;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 470
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 471
    const/4 v0, 0x0

    # getter for: Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenuAttrs:I
    invoke-static {p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$200(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 473
    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 474
    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 476
    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 477
    return-void
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 480
    move-object v1, p0

    .line 481
    .local v1, "view":Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 482
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 483
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x0

    .line 484
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 485
    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    .line 488
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    if-nez v1, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 493
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v3

    .line 497
    :cond_1
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    # invokes: Lcom/miui/internal/view/menu/ActionMenuPresenter;->getOverflowMenuItem()Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-static {v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$300(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 505
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 506
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 507
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    goto :goto_0

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method
