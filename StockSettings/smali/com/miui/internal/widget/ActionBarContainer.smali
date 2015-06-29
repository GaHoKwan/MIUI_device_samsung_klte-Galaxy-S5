.class public Lcom/miui/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"

# interfaces
.implements Lmiui/app/ActionBar$FragmentViewPagerChangeListener;


# static fields
.field private static final BG_EMBEDED_TABS_IDX:I = 0x1

.field private static final BG_LENGTH:I = 0x3

.field private static final BG_NORMAL_IDX:I = 0x0

.field private static final BG_STACKED_IDX:I = 0x2


# instance fields
.field private mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

.field private mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundArray:[Landroid/graphics/drawable/Drawable;

.field private mContentHeight:I

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mCustomBackground:Z

.field private mCustomViewAutoFitSystemWindow:Z

.field private mFragmentViewPagerMode:Z

.field private mHideListener:Landroid/animation/AnimatorListenerAdapter;

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mPendingInsets:Landroid/graphics/Rect;

.field private mRequestAnimation:Z

.field private mShowListener:Landroid/animation/AnimatorListenerAdapter;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;

.field private mTabContainerPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomBackground:Z

    .line 79
    new-instance v3, Lcom/miui/internal/widget/ActionBarContainer$1;

    invoke-direct {v3, p0}, Lcom/miui/internal/widget/ActionBarContainer$1;-><init>(Lcom/miui/internal/widget/ActionBarContainer;)V

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mHideListener:Landroid/animation/AnimatorListenerAdapter;

    .line 87
    new-instance v3, Lcom/miui/internal/widget/ActionBarContainer$2;

    invoke-direct {v3, p0}, Lcom/miui/internal/widget/ActionBarContainer$2;-><init>(Lcom/miui/internal/widget/ActionBarContainer;)V

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    .line 100
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    sget-object v3, Lmiui/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 105
    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v2

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const/16 v5, 0x15

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    .line 107
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 109
    const/16 v3, 0x13

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomViewAutoFitSystemWindow:Z

    .line 111
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getId()I

    move-result v3

    sget v4, Lcom/miui/internal/R$id;->split_action_bar:I

    if-ne v3, v4, :cond_0

    .line 112
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    .line 113
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mContentHeight:I

    .line 116
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    iget-boolean v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 120
    return-void

    :cond_2
    move v1, v2

    .line 118
    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/miui/internal/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarContainer;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method private applyInsets(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 349
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomViewAutoFitSystemWindow:Z

    if-nez v1, :cond_1

    .line 351
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 352
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 354
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void

    .line 352
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onMeasureSplit(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 410
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 411
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 415
    :cond_0
    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mContentHeight:I

    if-lez v3, :cond_1

    .line 416
    iget v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mContentHeight:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 419
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 422
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v0

    .line 423
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 424
    .local v1, "childHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 425
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    :cond_2
    if-nez v1, :cond_3

    .line 428
    invoke-virtual {p0, v5, v5}, Lcom/miui/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    .line 430
    :cond_3
    return-void
.end method

.method private selectDrawable()V
    .locals 4

    .prologue
    .line 559
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomBackground:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    const/4 v1, 0x0

    .line 566
    .local v1, "idx":I
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 567
    const/4 v1, 0x1

    .line 568
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    .line 569
    .local v0, "displayOptions":I
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_2

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_2

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_3

    .line 572
    :cond_2
    const/4 v1, 0x2

    .line 575
    .end local v0    # "displayOptions":I
    :cond_3
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 576
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 545
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 547
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mRequestAnimation:Z

    if-eqz v0, :cond_0

    .line 548
    new-instance v0, Lcom/miui/internal/widget/ActionBarContainer$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ActionBarContainer$3;-><init>(Lcom/miui/internal/widget/ActionBarContainer;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->post(Ljava/lang/Runnable;)Z

    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mRequestAnimation:Z

    .line 556
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 258
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 267
    :cond_2
    return-void
.end method

.method getCollapsedHeight()I
    .locals 5

    .prologue
    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, "collapsedHeight":I
    iget-boolean v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v4, :cond_4

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "actionMenuViewCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 155
    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_0

    .line 156
    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 157
    .local v0, "actionMenuView":Lcom/miui/internal/view/menu/ActionMenuView;
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v4

    if-lez v4, :cond_0

    .line 158
    add-int/lit8 v1, v1, 0x1

    .line 159
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 154
    .end local v0    # "actionMenuView":Lcom/miui/internal/view/menu/ActionMenuView;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_1
    sget-boolean v4, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v4, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 168
    :cond_2
    iget-boolean v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mFragmentViewPagerMode:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v4}, Lcom/miui/internal/widget/ActionBarContextView;->getAnimatedVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 170
    :cond_3
    const/4 v2, 0x0

    .line 173
    .end local v1    # "actionMenuViewCount":I
    .end local v3    # "i":I
    :cond_4
    return v2
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mContentHeight:I

    return v0
.end method

.method public getPendingInsets()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public hide(Z)V
    .locals 4
    .param p1, "anim"    # Z

    .prologue
    .line 489
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 493
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1

    .line 494
    const-string v0, "TranslationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 496
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 498
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mHideListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 499
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_2

    .line 331
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 125
    sget v0, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 126
    sget v0, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    .line 127
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    .line 434
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 436
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    .line 437
    .local v0, "containerHeight":I
    const/4 v2, 0x0

    .line 438
    .local v2, "tabHeight":I
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-eq v4, v6, :cond_0

    .line 439
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 440
    .local v3, "th":I
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/miui/internal/widget/ActionBarView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_3

    .line 443
    move v2, v3

    .line 444
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget v7, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 453
    :goto_0
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    sub-int v6, v0, v3

    invoke-virtual {v4, p2, v6, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 457
    .end local v3    # "th":I
    :cond_0
    const/4 v1, 0x0

    .line 458
    .local v1, "needsInvalidate":Z
    iget-boolean v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v4, :cond_6

    .line 459
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 460
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v5, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 461
    const/4 v1, 0x1

    .line 471
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 472
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->invalidate()V

    .line 474
    :cond_2
    return-void

    .line 447
    .end local v1    # "needsInvalidate":Z
    .restart local v3    # "th":I
    :cond_3
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    :goto_2
    add-int/2addr v3, v4

    .line 448
    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    add-int/2addr v4, v8

    :goto_3
    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    move v4, v5

    .line 447
    goto :goto_2

    .line 448
    :cond_5
    iget v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    goto :goto_3

    .line 464
    .end local v3    # "th":I
    .restart local v1    # "needsInvalidate":Z
    :cond_6
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarContainer;->selectDrawable()V

    .line 465
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 466
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    sub-int v6, p4, p2

    sub-int v7, v0, v2

    invoke-virtual {v4, v5, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 467
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 358
    iget-boolean v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v9, :cond_1

    .line 359
    invoke-direct/range {p0 .. p2}, Lcom/miui/internal/widget/ActionBarContainer;->onMeasureSplit(II)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v9, :cond_2

    .line 365
    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    iget-object v10, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    iget v11, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    iget-object v12, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    iget-object v13, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 369
    :cond_2
    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0, v9}, Lcom/miui/internal/widget/ActionBarContainer;->applyInsets(Landroid/view/View;)V

    .line 370
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    .line 371
    .local v2, "contextView":Lcom/miui/internal/widget/ActionBarContextView;
    if-eqz v2, :cond_3

    .line 372
    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    :goto_1
    invoke-virtual {v2, v9}, Lcom/miui/internal/widget/ActionBarContextView;->setContentInset(I)V

    .line 375
    :cond_3
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "actionBarViewHeight":I
    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v9}, Lcom/miui/internal/widget/ActionBarView;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v9}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v9

    if-lez v9, :cond_8

    const/4 v4, 0x1

    .line 379
    .local v4, "isActionBarViewVisible":Z
    :goto_2
    if-eqz v4, :cond_4

    .line 380
    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v9}, Lcom/miui/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 381
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v9}, Lcom/miui/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v9

    if-eqz v9, :cond_9

    iget v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 385
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    :goto_3
    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_5

    .line 386
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 387
    .local v7, "mode":I
    const/high16 v9, -0x80000000

    if-ne v7, v9, :cond_5

    .line 388
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 389
    .local v6, "maxHeight":I
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v10

    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-nez v4, :cond_a

    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    :goto_4
    add-int/2addr v9, v11

    invoke-virtual {p0, v10, v9}, Lcom/miui/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    .line 396
    .end local v6    # "maxHeight":I
    .end local v7    # "mode":I
    :cond_5
    const/4 v8, 0x0

    .line 397
    .local v8, "visibleChildren":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_b

    .line 398
    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 399
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-lez v9, :cond_6

    .line 400
    add-int/lit8 v8, v8, 0x1

    .line 397
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 372
    .end local v0    # "actionBarViewHeight":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "isActionBarViewVisible":Z
    .end local v8    # "visibleChildren":I
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 377
    .restart local v0    # "actionBarViewHeight":I
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 381
    .restart local v4    # "isActionBarViewVisible":Z
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v9}, Lcom/miui/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v9

    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v0, v9, v10

    goto :goto_3

    .line 389
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v6    # "maxHeight":I
    .restart local v7    # "mode":I
    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    .line 403
    .end local v6    # "maxHeight":I
    .end local v7    # "mode":I
    .restart local v3    # "i":I
    .restart local v8    # "visibleChildren":I
    :cond_b
    if-nez v8, :cond_0

    .line 404
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/miui/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 541
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "ratio"    # F
    .param p3, "fromHasActionMenu"    # Z
    .param p4, "toHasActionMenu"    # Z

    .prologue
    .line 529
    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_0

    .line 530
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 531
    .local v0, "menuView":Lcom/miui/internal/view/menu/ActionMenuView;
    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->onPageScrolled(IFZZ)V

    .line 535
    .end local v0    # "menuView":Lcom/miui/internal/view/menu/ActionMenuView;
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 538
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowHide()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    .line 486
    :cond_0
    return-void
.end method

.method public onWindowShow()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getMenuView()Lcom/miui/internal/view/menu/ActionMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    .line 480
    :cond_0
    return-void
.end method

.method public setActionBarContextView(Lcom/miui/internal/widget/ActionBarContextView;)V
    .locals 0
    .param p1, "actionBarContextView"    # Lcom/miui/internal/widget/ActionBarContextView;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    .line 131
    return-void
.end method

.method public setFragmentViewPagerMode(Z)V
    .locals 0
    .param p1, "fragmentViewPagerMode"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mFragmentViewPagerMode:Z

    .line 148
    return-void
.end method

.method public setPendingInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 140
    :cond_1
    return-void
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 180
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 181
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 184
    if-eqz p1, :cond_3

    .line 185
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 186
    if-nez v0, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->requestLayout()V

    .line 191
    :goto_0
    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomBackground:Z

    .line 195
    :goto_1
    iget-boolean v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    :cond_1
    :goto_2
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 197
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->invalidate()V

    .line 198
    return-void

    .line 189
    :cond_2
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 193
    :cond_3
    iput-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCustomBackground:Z

    goto :goto_1

    :cond_4
    move v1, v2

    .line 195
    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 219
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 222
    if-eqz p1, :cond_1

    .line 223
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 225
    :cond_1
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->invalidate()V

    .line 228
    return-void

    :cond_3
    move v0, v1

    .line 225
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 201
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 203
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    :cond_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 206
    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 209
    :cond_1
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 211
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 209
    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .locals 3
    .param p1, "tabView"    # Lcom/miui/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 305
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 309
    :cond_0
    if-eqz p1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 312
    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 313
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 314
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 315
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 317
    invoke-virtual {p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    .line 321
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 322
    return-void

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setTransitioning(Z)V
    .locals 1
    .param p1, "isTransitioning"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 278
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 280
    return-void

    .line 278
    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 237
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 238
    .local v0, "isVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 244
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 247
    :cond_2
    return-void

    .end local v0    # "isVisible":Z
    :cond_3
    move v0, v1

    .line 237
    goto :goto_0
.end method

.method public show(Z)V
    .locals 6
    .param p1, "anim"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 506
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 510
    :cond_0
    invoke-virtual {p0, v4}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 511
    if-eqz p1, :cond_2

    .line 512
    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_1

    .line 513
    const-string v1, "TranslationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v5, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 514
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x10e0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 516
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 517
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 519
    invoke-virtual {p0, v4}, Lcom/miui/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView;

    .line 520
    .local v0, "menuView":Lcom/miui/internal/view/menu/ActionMenuView;
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView;->startLayoutAnimation()V

    .line 525
    .end local v0    # "menuView":Lcom/miui/internal/view/menu/ActionMenuView;
    :cond_1
    :goto_0
    return-void

    .line 523
    :cond_2
    invoke-virtual {p0, v5}, Lcom/miui/internal/widget/ActionBarContainer;->setTranslationY(F)V

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
