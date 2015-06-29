.class public Lcom/miui/internal/view/menu/PhoneActionMenuView;
.super Lcom/miui/internal/view/menu/ActionMenuView;
.source "PhoneActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/PhoneActionMenuView$1;,
        Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;,
        Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final SCALE_RATIO:I = 0x2


# instance fields
.field private mBackgroundHeight:I

.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mBitmapRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBlurBackground:Landroid/graphics/drawable/Drawable;

.field private mCollapseBackground:Landroid/graphics/drawable/Drawable;

.field private mExpandBackground:Landroid/graphics/drawable/Drawable;

.field private mMenuItemHeight:I

.field private mMenuItemWidth:I

.field private mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

.field private mOverflowMenuView:Landroid/view/View;

.field private mOverflowMenuViewAnimator:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

.field private mSplitActionBarOverlayHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/miui/internal/R$attr;->expandBackground:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/miui/internal/R$attr;->splitActionBarOverlayHeight:I

    aput v2, v0, v1

    sput-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 76
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 77
    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->extractBackground()V

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/view/menu/PhoneActionMenuView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/view/menu/PhoneActionMenuView;
    .param p1, "x1"    # Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/view/menu/PhoneActionMenuView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    return-object v0
.end method

.method private extractBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 350
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 351
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-nez v0, :cond_2

    .line 352
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 353
    iput v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundHeight:I

    .line 365
    :cond_0
    :goto_1
    return-void

    .line 350
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 356
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    if-nez v1, :cond_3

    .line 357
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 359
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 361
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundHeight:I

    .line 362
    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 363
    iput v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundHeight:I

    goto :goto_1
.end method

.method private getOverflowMenuViewAnimator()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$1;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    return-object v0
.end method

.method private makeBlur()V
    .locals 15

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/miui/internal/R$attr;->immersionBlurMask:I

    invoke-static {v11, v12}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 149
    .local v2, "blurMask":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 150
    .local v7, "root":Landroid/view/View;
    if-nez v7, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const/4 v8, 0x0

    .line 156
    .local v8, "target":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->relativeToRootY()I

    move-result v10

    .line 157
    .local v10, "y":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 160
    iget-object v11, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBitmapRef:Ljava/lang/ref/WeakReference;

    if-eqz v11, :cond_2

    .line 161
    iget-object v11, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBitmapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v8, v0

    .line 163
    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getWidth()I

    move-result v12

    if-ne v11, v12, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getHeight()I

    move-result v12

    if-eq v11, v12, :cond_5

    .line 165
    :cond_3
    if-eqz v8, :cond_4

    .line 166
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 167
    const/4 v8, 0x0

    .line 169
    :cond_4
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 170
    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v11, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBitmapRef:Ljava/lang/ref/WeakReference;

    .line 172
    :cond_5
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 173
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->relativeToRootY()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    invoke-virtual {v7, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 175
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 176
    .local v9, "width":I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 177
    .local v6, "height":I
    div-int/lit8 v11, v9, 0x2

    div-int/lit8 v12, v6, 0x2

    const/4 v13, 0x0

    invoke-static {v8, v11, v12, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 178
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/miui/internal/R$dimen;->screenshot_blur_radius:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 180
    .local v3, "blurRadius":I
    invoke-static {v8, v3}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 181
    .local v1, "blur":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    invoke-static {v1, v9, v6, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 182
    new-instance v4, Landroid/graphics/Canvas;

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 184
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 185
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v11, v12, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v11, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 186
    .end local v1    # "blur":Landroid/graphics/Bitmap;
    .end local v3    # "blurRadius":I
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "height":I
    .end local v9    # "width":I
    .end local v10    # "y":I
    :catch_0
    move-exception v5

    .line 187
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    goto/16 :goto_0
.end method

.method private relativeToRootY()I
    .locals 5

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getTop()I

    move-result v3

    .line 193
    .local v3, "y":I
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 194
    .local v2, "root":Landroid/view/View;
    if-nez v2, :cond_0

    .line 195
    const/4 v4, -0x1

    .line 203
    :goto_0
    return v4

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 198
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_1

    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_1

    if-eq v0, v2, :cond_1

    move-object v1, v0

    .line 199
    check-cast v1, Landroid/view/View;

    .line 200
    .local v1, "parentView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 201
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 202
    goto :goto_1

    .end local v1    # "parentView":Landroid/view/View;
    :cond_1
    move v4, v3

    .line 203
    goto :goto_0
.end method


# virtual methods
.method public filterLeftoverView(I)Z
    .locals 6
    .param p1, "childIndex"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-ne v0, v5, :cond_0

    .line 99
    const/4 v1, 0x0

    .line 104
    .local v1, "filter":Z
    :goto_0
    if-eqz v1, :cond_3

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->filterLeftoverView(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    return v4

    .line 101
    .end local v1    # "filter":Z
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    .line 102
    .local v2, "lp":Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    if-eqz v2, :cond_1

    iget-boolean v5, v2, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v5, :cond_2

    :cond_1
    move v1, v4

    .restart local v1    # "filter":Z
    :goto_2
    goto :goto_0

    .end local v1    # "filter":Z
    :cond_2
    move v1, v3

    goto :goto_2

    .end local v2    # "lp":Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v1    # "filter":Z
    :cond_3
    move v4, v3

    .line 104
    goto :goto_1
.end method

.method public getCollapsedHeight()I
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    .prologue
    .line 211
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 212
    .local v1, "state":Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v2, :cond_1

    .line 213
    :cond_0
    const/4 v2, 0x0

    .line 223
    :goto_0
    return v2

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v0

    .line 217
    .local v0, "animator":Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v2, :cond_3

    .line 218
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 219
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->hide()V

    .line 223
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 220
    :cond_3
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v2, :cond_2

    .line 221
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    goto :goto_1
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 316
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v4, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v4, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v4, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v3, v4, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 318
    .local v1, "expand":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 319
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 320
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 322
    :cond_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    .line 323
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    iget v5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 325
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 327
    :cond_2
    return-void

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "expand":Z
    :cond_3
    move v1, v2

    .line 316
    goto :goto_0

    .line 322
    .restart local v1    # "expand":Z
    :cond_4
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 288
    sub-int v6, p4, p2

    .line 289
    .local v6, "width":I
    sub-int v3, p5, p3

    .line 291
    .local v3, "height":I
    iget v8, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemWidth:I

    sub-int v8, v6, v8

    shr-int/lit8 v7, v8, 0x1

    .line 292
    .local v7, "x":I
    const/4 v5, 0x0

    .line 293
    .local v5, "top":I
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    .line 294
    .local v0, "bottom":I
    iget-object v8, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    if-eqz v8, :cond_0

    .line 295
    iget-object v8, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/Rect;->top:I

    .line 296
    iget v8, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundHeight:I

    iget v10, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v2

    .line 299
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 300
    invoke-virtual {p0, v4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 301
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-ne v1, v8, :cond_1

    .line 299
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v1, v7, v5, v8, v0}, Landroid/view/View;->layout(IIII)V

    .line 306
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_1

    .line 309
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 310
    iget-object v8, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v9, 0x0

    iget v10, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundHeight:I

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v8, v9, v10, v6, v3}, Landroid/view/View;->layout(IIII)V

    .line 312
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 243
    const/4 v11, 0x0

    .line 244
    .local v11, "measuredWidth":I
    const/4 v10, 0x0

    .line 247
    .local v10, "measuredHeight":I
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v8

    .line 248
    .local v8, "count":I
    if-nez v8, :cond_0

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    .line 250
    invoke-virtual {p0, v11, v10}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setMeasuredDimension(II)V

    .line 284
    :goto_0
    return-void

    .line 254
    :cond_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_2

    .line 255
    invoke-virtual {p0, v9}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 256
    .local v1, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-ne v1, v0, :cond_1

    .line 254
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 260
    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 261
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v11, v0

    .line 262
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_2

    .line 264
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    iput v11, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemWidth:I

    .line 265
    iput v10, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    .line 267
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 268
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 269
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 270
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v10, v0

    .line 272
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v2, :cond_3

    .line 273
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_5

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setTranslationY(F)V

    .line 279
    :cond_3
    :goto_4
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundHeight:I

    iget v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    if-le v0, v2, :cond_4

    .line 280
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundHeight:I

    iget v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    sub-int/2addr v0, v2

    add-int/2addr v10, v0

    .line 282
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 283
    invoke-virtual {p0, v11, v10}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_3

    .line 276
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setTranslationY(F)V

    goto :goto_4
.end method

.method public onPageScrolled(IFZZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "ratio"    # F
    .param p3, "fromHasActionMenu"    # Z
    .param p4, "toHasActionMenu"    # Z

    .prologue
    .line 337
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->computeAlpha(FZZ)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setAlpha(F)V

    .line 339
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->computeTranslationY(FZZ)F

    move-result v2

    .line 340
    .local v2, "y":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 341
    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 342
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-ne v0, v3, :cond_0

    .line 340
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 347
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getTranslationY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 89
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 90
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->extractBackground()V

    .line 92
    :cond_0
    return-void
.end method

.method public setOverflowMenuView(Landroid/view/View;)V
    .locals 1
    .param p1, "overflowMenuView"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->cancel()V

    .line 112
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->removeView(Landroid/view/View;)V

    .line 115
    :cond_0
    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->addView(Landroid/view/View;)V

    .line 118
    :cond_1
    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 119
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->extractBackground()V

    .line 121
    :cond_2
    return-void
.end method

.method public setValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 368
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setTranslationY(F)V

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setTranslationY(F)V

    goto :goto_0
.end method

.method public showOverflowMenu()Z
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 125
    .local v1, "state":Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 126
    :cond_0
    const/4 v2, 0x0

    .line 140
    :goto_0
    return v2

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v0

    .line 130
    .local v0, "animator":Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v2, :cond_3

    .line 131
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->makeBlur()V

    .line 132
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    .line 133
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->show()V

    .line 139
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

    .line 140
    const/4 v2, 0x1

    goto :goto_0

    .line 134
    :cond_3
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v2, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->makeBlur()V

    .line 136
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    goto :goto_1
.end method
