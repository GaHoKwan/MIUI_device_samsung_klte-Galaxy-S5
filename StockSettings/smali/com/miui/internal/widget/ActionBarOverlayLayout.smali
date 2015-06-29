.class public Lcom/miui/internal/widget/ActionBarOverlayLayout;
.super Landroid/widget/FrameLayout;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ActionBarOverlayLayout$1;,
        Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;,
        Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;,
        Lcom/miui/internal/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;,
        Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mActionBar:Lmiui/app/ActionBar;

.field private mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

.field private mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

.field protected mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

.field protected mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private mActionMode:Landroid/view/ActionMode;

.field private mBaseContentInsets:Landroid/graphics/Rect;

.field private mBaseInnerInsets:Landroid/graphics/Rect;

.field private mCallback:Landroid/view/Window$Callback;

.field private mContentAutoFitSystemWindow:Z

.field private mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

.field private mContentInsets:Landroid/graphics/Rect;

.field private mContentMask:Landroid/view/View;

.field protected mContentView:Landroid/view/View;

.field private mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

.field private mContextMenuCallback:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

.field private mContextMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mInnerInsets:Landroid/graphics/Rect;

.field private mIsAttachedToFloatingWindow:Z

.field private mLastBaseContentInsets:Landroid/graphics/Rect;

.field private mLastInnerInsets:Landroid/graphics/Rect;

.field private mMask1:Landroid/graphics/Bitmap;

.field private mMask2:Landroid/graphics/Bitmap;

.field private mMask3:Landroid/graphics/Bitmap;

.field private mMask4:Landroid/graphics/Bitmap;

.field private mOnStatusBarChangeListener:Lmiui/app/OnStatusBarChangeListener;

.field private mOverlayMode:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRequestFitSystemWindow:Z

.field private mRootSubDecor:Z

.field private mTranslucentStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 101
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 103
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 105
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 107
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 109
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 115
    new-instance v1, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    .line 130
    sget-object v1, Lcom/miui/internal/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 132
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 134
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 136
    :cond_0
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 138
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 140
    :cond_1
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 142
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 144
    :cond_2
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 146
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 149
    :cond_3
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    .line 150
    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v1, :cond_4

    .line 151
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 153
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    return-void
.end method

.method static synthetic access$202(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarOverlayLayout;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->dismissContextMenu()V

    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 243
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p3, :cond_0

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    .line 244
    const/4 v0, 0x1

    .line 245
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 247
    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    .line 248
    const/4 v0, 0x1

    .line 249
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 251
    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    .line 252
    const/4 v0, 0x1

    .line 253
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 255
    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    .line 256
    const/4 v0, 0x1

    .line 257
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 259
    :cond_3
    return v0
.end method

.method private computeFitSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "innerInsets"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    .line 227
    .local v0, "isRootSubDecor":Z
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    .line 229
    .local v1, "translucentStatus":Z
    if-nez v0, :cond_0

    .line 230
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 233
    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 234
    if-eqz v0, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 236
    :cond_2
    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 238
    :cond_3
    return-void
.end method

.method private createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 628
    instance-of v0, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    .line 629
    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    .line 631
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    goto :goto_0
.end method

.method private dismissContextMenu()V
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    .line 801
    :cond_0
    return-void
.end method

.method public static getActionBarOverlayLayout(Landroid/view/View;)Lcom/miui/internal/widget/ActionBarOverlayLayout;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "actionBarOverlayLayout":Lcom/miui/internal/widget/ActionBarOverlayLayout;
    :goto_0
    if-eqz p0, :cond_0

    .line 159
    instance-of v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 160
    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    .line 170
    :cond_0
    return-object v0

    .line 164
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .restart local p0    # "view":Landroid/view/View;
    goto :goto_0

    .line 167
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private getHeightMeasureSpec(I)I
    .locals 8
    .param p1, "heightMeasureSpec"    # I

    .prologue
    .line 432
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 433
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 436
    .local v2, "heightSize":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 438
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v7, :cond_1

    const/4 v3, 0x1

    .line 440
    .local v3, "isPortrait":Z
    :goto_0
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 441
    .local v5, "tvh":Landroid/util/TypedValue;
    :goto_1
    if-eqz v5, :cond_0

    iget v6, v5, Landroid/util/TypedValue;->type:I

    if-eqz v6, :cond_0

    .line 443
    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    .line 444
    invoke-virtual {v5, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v0, v6

    .line 451
    .local v0, "h":I
    :goto_2
    if-lez v0, :cond_0

    .line 452
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 456
    .end local v0    # "h":I
    .end local v3    # "isPortrait":Z
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "tvh":Landroid/util/TypedValue;
    :cond_0
    return p1

    .line 438
    .restart local v4    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 440
    .restart local v3    # "isPortrait":Z
    :cond_2
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto :goto_1

    .line 445
    .restart local v5    # "tvh":Landroid/util/TypedValue;
    :cond_3
    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    .line 446
    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v6

    float-to-int v0, v6

    .restart local v0    # "h":I
    goto :goto_2

    .line 448
    .end local v0    # "h":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "h":I
    goto :goto_2
.end method

.method private getWidthMeasureSpec(I)I
    .locals 7
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 406
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 408
    .local v4, "widthMode":I
    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 410
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v6, :cond_1

    const/4 v0, 0x1

    .line 412
    .local v0, "isPortrait":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 413
    .local v2, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v2, :cond_0

    iget v5, v2, Landroid/util/TypedValue;->type:I

    if-eqz v5, :cond_0

    .line 415
    iget v5, v2, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 416
    invoke-virtual {v2, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v3, v5

    .line 423
    .local v3, "w":I
    :goto_2
    if-lez v3, :cond_0

    .line 424
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 428
    .end local v0    # "isPortrait":Z
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "tvw":Landroid/util/TypedValue;
    .end local v3    # "w":I
    :cond_0
    return p1

    .line 410
    .restart local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    .restart local v0    # "isPortrait":Z
    :cond_2
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto :goto_1

    .line 417
    .restart local v2    # "tvw":Landroid/util/TypedValue;
    :cond_3
    iget v5, v2, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    .line 418
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    float-to-int v3, v5

    .restart local v3    # "w":I
    goto :goto_2

    .line 420
    .end local v3    # "w":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "w":I
    goto :goto_2
.end method

.method private isAttachedToFloatingWindow()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 481
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 482
    .local v0, "locationOnScreen":[I
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getLocationOnScreen([I)V

    .line 483
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 484
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    aget v4, v0, v3

    if-eqz v4, :cond_0

    aget v4, v0, v2

    if-eqz v4, :cond_0

    aget v4, v0, v3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v4, v5, :cond_0

    aget v4, v0, v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v4, v5, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private isBackPressed(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 580
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pullChildren()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 534
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 535
    sget v0, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 536
    sget v0, Lcom/miui/internal/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    .line 537
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    sget v1, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    .line 539
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 541
    :cond_0
    sget v0, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    .line 543
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 461
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 464
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 467
    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mIsAttachedToFloatingWindow:Z

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 469
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 470
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 471
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask2:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask2:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 472
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask3:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask3:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 473
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 559
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    :goto_0
    return v1

    .line 563
    :cond_0
    const/4 v0, 0x0

    .line 564
    .local v0, "handled":Z
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isBackPressed(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 565
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_4

    .line 566
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContextView;->hideOverflowMenu()Z

    move-result v1

    if-nez v1, :cond_2

    .line 567
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 568
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 570
    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    move v1, v0

    .line 576
    goto :goto_0

    .line 572
    :cond_4
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->hideOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 14
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 193
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiui/app/OnStatusBarChangeListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiui/app/OnStatusBarChangeListener;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-interface {v0, v1}, Lmiui/app/OnStatusBarChangeListener;->onStatusBarHeightChange(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 198
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->computeFitSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 200
    const/4 v13, 0x0

    .line 201
    .local v13, "changed":Z
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v0

    if-nez v0, :cond_6

    move v4, v3

    :goto_0
    move-object v0, p0

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v13

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_3

    .line 210
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    move-object v6, p0

    move v9, v3

    move v10, v5

    move v11, v3

    move v12, v3

    invoke-direct/range {v6 .. v12}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v13, v0

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 215
    const/4 v13, 0x1

    .line 218
    :cond_4
    if-eqz v13, :cond_5

    .line 219
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 222
    :cond_5
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    return v0

    :cond_6
    move v4, v5

    .line 205
    goto :goto_0
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBar:Lmiui/app/ActionBar;

    return-object v0
.end method

.method public getActionBarView()Lcom/miui/internal/widget/ActionBarView;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    return-object v0
.end method

.method protected getBottomInset()I
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getCollapsedHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallback()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;
    .locals 2
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 510
    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public isRootSubDecor()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    return v0
.end method

.method public isTranslucentStatus()Z
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 265
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 266
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 277
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 278
    return-void
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 282
    invoke-direct/range {p0 .. p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidthMeasureSpec(I)I

    move-result p1

    .line 283
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeightMeasureSpec(I)I

    move-result p2

    .line 285
    const/16 v18, 0x0

    .line 286
    .local v18, "maxHeight":I
    const/16 v19, 0x0

    .line 287
    .local v19, "maxWidth":I
    const/4 v12, 0x0

    .line 289
    .local v12, "childState":I
    const/16 v21, 0x0

    .line 290
    .local v21, "topInset":I
    const/4 v11, 0x0

    .line 292
    .local v11, "bottomInset":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 293
    .local v15, "contentView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    .line 297
    .local v14, "contentMask":Landroid/view/View;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 298
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 300
    .local v3, "child":Landroid/view/View;
    if-eq v3, v15, :cond_0

    if-eq v3, v14, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    .line 297
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 304
    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 305
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    .line 306
    .local v17, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 307
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 308
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v12, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_1

    .line 311
    .end local v3    # "child":Landroid/view/View;
    .end local v17    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v21

    .line 316
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_4

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getBottomInset()I

    move-result v11

    .line 323
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v2, :cond_5

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 341
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v2

    if-eqz v2, :cond_6

    if-lez v21, :cond_6

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 347
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v2, :cond_d

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v21

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v11

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 360
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-object v5, v15

    invoke-direct/range {v4 .. v10}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    if-eqz v2, :cond_8

    .line 363
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 365
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    .line 368
    :cond_8
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v15

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 369
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    .line 370
    .restart local v17    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 371
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 372
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v12, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v12

    .line 375
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 376
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v14

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 380
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int v19, v19, v2

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int v18, v18, v2

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v2

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 388
    move/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1, v12}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v2

    shl-int/lit8 v4, v12, 0x10

    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isAttachedToFloatingWindow()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mIsAttachedToFloatingWindow:Z

    .line 392
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mIsAttachedToFloatingWindow:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_a

    .line 393
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 397
    .local v20, "res":Landroid/content/res/Resources;
    sget v2, Lcom/miui/internal/R$drawable;->popup_mask_1:I

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask1:Landroid/graphics/Bitmap;

    .line 398
    sget v2, Lcom/miui/internal/R$drawable;->popup_mask_2:I

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask2:Landroid/graphics/Bitmap;

    .line 399
    sget v2, Lcom/miui/internal/R$drawable;->popup_mask_3:I

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask3:Landroid/graphics/Bitmap;

    .line 400
    sget v2, Lcom/miui/internal/R$drawable;->popup_mask_4:I

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask4:Landroid/graphics/Bitmap;

    .line 403
    .end local v20    # "res":Landroid/content/res/Resources;
    :cond_a
    return-void

    .line 328
    .end local v17    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_b
    const v2, 0x1020002

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 329
    .local v13, "content":Landroid/view/ViewGroup;
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 330
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 331
    .local v22, "v":Landroid/view/View;
    if-gtz v21, :cond_c

    .line 332
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    .line 334
    :cond_c
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    .line 351
    .end local v13    # "content":Landroid/view/ViewGroup;
    .end local v22    # "v":Landroid/view/View;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 352
    if-lez v21, :cond_e

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move/from16 v0, v21

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 358
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v11

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 356
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v21

    iput v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_4
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestFitSystemWindows()V

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    .line 272
    return-void
.end method

.method public setActionBar(Lmiui/app/ActionBar;)V
    .locals 0
    .param p1, "actionBar"    # Lmiui/app/ActionBar;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBar:Lmiui/app/ActionBar;

    .line 499
    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    .line 523
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lmiui/app/OnStatusBarChangeListener;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiui/app/OnStatusBarChangeListener;

    .line 805
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 0
    .param p1, "overlayMode"    # Z

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 503
    return-void
.end method

.method public setRootSubDecor(Z)V
    .locals 0
    .param p1, "rootSubDecor"    # Z

    .prologue
    .line 554
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    .line 555
    return-void
.end method

.method public setTranslucentStatus(I)V
    .locals 1
    .param p1, "translucentStatus"    # I

    .prologue
    .line 526
    iget v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    if-eq v0, p1, :cond_0

    .line 527
    iput p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    .line 528
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 530
    :cond_0
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    .line 177
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/miui/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    .line 183
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_1
    return v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->clear()V

    goto :goto_0

    .line 187
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    goto :goto_1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 590
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    .line 591
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 593
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "mode":Landroid/view/ActionMode;
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 597
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object v1

    .line 598
    .local v1, "wrappedCallback":Landroid/view/ActionMode$Callback;
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 601
    .end local v1    # "wrappedCallback":Landroid/view/ActionMode$Callback;
    :cond_1
    if-eqz v0, :cond_2

    .line 602
    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 605
    :cond_2
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 606
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v2, v3}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 609
    :cond_3
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object v2
.end method

.method public startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 613
    instance-of v1, p1, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 615
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 619
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object v0

    .line 620
    .local v0, "wrappedCallback":Landroid/view/ActionMode$Callback;
    invoke-virtual {p1, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 621
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 623
    .end local v0    # "wrappedCallback":Landroid/view/ActionMode$Callback;
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
