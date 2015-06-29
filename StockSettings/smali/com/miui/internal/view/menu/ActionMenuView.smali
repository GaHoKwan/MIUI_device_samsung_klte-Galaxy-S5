.class public abstract Lcom/miui/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/miui/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;,
        Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# instance fields
.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mOpenCloseAnimator:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

.field private mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 34
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;-><init>(Lcom/miui/internal/view/menu/ActionMenuView;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mOpenCloseAnimator:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    .line 35
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeAlpha(FZZ)F
    .locals 3
    .param p1, "percent"    # F
    .param p2, "fromHasActionMenu"    # Z
    .param p3, "toHasActionMenu"    # Z

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 225
    const/high16 v0, 0x3f800000    # 1.0f

    .line 226
    .local v0, "alpha":F
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    if-eqz p2, :cond_2

    .line 229
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v0, v1, v2

    goto :goto_0

    .line 230
    :cond_2
    if-eqz p3, :cond_0

    .line 231
    mul-float v1, p1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v0, v1, v2

    goto :goto_0
.end method

.method protected computeTranslationY(FZZ)F
    .locals 8
    .param p1, "percent"    # F
    .param p2, "fromHasActionMenu"    # Z
    .param p3, "toHasActionMenu"    # Z

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 208
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v2

    int-to-float v0, v2

    .line 210
    .local v0, "height":F
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 211
    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 212
    mul-float/2addr p1, v7

    .line 220
    :cond_0
    :goto_0
    mul-float v1, p1, v0

    .line 221
    .local v1, "translationY":F
    return v1

    .line 214
    .end local v1    # "translationY":F
    :cond_1
    sub-float v2, v6, p1

    mul-float p1, v7, v2

    goto :goto_0

    .line 216
    :cond_2
    if-eqz p3, :cond_0

    .line 217
    sub-float p1, v6, p1

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public filterLeftoverView(I)Z
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->removeViewAt(I)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 91
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 93
    .local v0, "params":Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 103
    instance-of v1, p1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_0

    .line 104
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 107
    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 117
    .local v0, "result":Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 118
    return-object v0
.end method

.method public abstract getCollapsedHeight()I
.end method

.method public getPresenter()Lcom/miui/internal/view/menu/ActionMenuPresenter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 136
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 139
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    instance-of v3, v1, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 140
    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 142
    :cond_0
    if-lez p1, :cond_1

    instance-of v3, v0, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 143
    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 145
    :cond_1
    return v2
.end method

.method public initialize(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/miui/internal/view/menu/MenuBuilder;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 133
    return-void
.end method

.method public invokeItem(Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/miui/internal/view/menu/MenuItemImpl;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 48
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 53
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 55
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 57
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 72
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 73
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0, v1, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public onPageScrolled(IFZZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "ratio"    # F
    .param p3, "fromHasActionMenu"    # Z
    .param p4, "toHasActionMenu"    # Z

    .prologue
    .line 239
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->computeAlpha(FZZ)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setAlpha(F)V

    .line 241
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->computeTranslationY(FZZ)F

    move-result v0

    .line 242
    .local v0, "translationY":F
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 243
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->setTranslationY(F)V

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mOpenCloseAnimator:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->setTranslationY(F)V

    .line 246
    return-void
.end method

.method public playCloseAnimator()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mOpenCloseAnimator:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->close()V

    .line 204
    return-void
.end method

.method public playOpenAnimator()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mOpenCloseAnimator:Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView$OpenCloseAnimator;->open()V

    .line 200
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 81
    return-void
.end method

.method public setPresenter(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mPresenter:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 39
    return-void
.end method
