.class public Lcom/miui/internal/widget/ArrowPopupView;
.super Landroid/widget/FrameLayout;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;
    }
.end annotation


# static fields
.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_NONE_MODE:I = -0x1

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ArrowPopupView"


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mArrow:Landroid/widget/ImageView;

.field private mArrowBottom:Landroid/graphics/drawable/Drawable;

.field private mArrowLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowMode:I

.field private mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

.field private mArrowRight:Landroid/graphics/drawable/Drawable;

.field private mArrowTop:Landroid/graphics/drawable/Drawable;

.field private mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mContentFrame:Landroid/widget/FrameLayout;

.field private mContentFrameWrapper:Landroid/widget/LinearLayout;

.field private mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mIsDismissing:Z

.field private mMinBorder:I

.field private mNegativeButton:Landroid/widget/Button;

.field private mNegativeClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPositiveButton:Landroid/widget/Button;

.field private mPositiveClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private mRollingPercent:F

.field private mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mTitleBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleText:Landroid/widget/TextView;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 165
    sget v0, Lcom/miui/internal/R$attr;->arrowPopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTmpRect:Landroid/graphics/Rect;

    .line 100
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTmpRectF:Landroid/graphics/RectF;

    .line 108
    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$1;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 130
    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$2;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$2;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 156
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 171
    sget-object v1, Lcom/miui/internal/R$styleable;->ArrowPopupView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    .line 177
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 178
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

    .line 179
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    .line 180
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    .line 181
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    .line 183
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->arrow_popup_window_min_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mMinBorder:I

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ArrowPopupView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/internal/widget/ArrowPopupView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/ArrowPopupView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/internal/widget/ArrowPopupView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/ArrowPopupView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mIsDismissing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/ArrowPopupView;)Lmiui/widget/ArrowPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ArrowPopupView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ArrowPopupView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ArrowPopupView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/internal/widget/ArrowPopupView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/ArrowPopupView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method private adjustArrowMode()V
    .locals 13

    .prologue
    .line 523
    const/4 v11, 0x2

    new-array v1, v11, [I

    .line 524
    .local v1, "anchorLocation":[I
    iget-object v11, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v11, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 526
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v7

    .line 527
    .local v7, "displayWidth":I
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

    move-result v6

    .line 528
    .local v6, "displayHeight":I
    iget-object v11, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    .line 529
    .local v5, "contentWrapperWidth":I
    iget-object v11, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    .line 530
    .local v4, "contentWrapperHeight":I
    iget-object v11, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 531
    .local v0, "anchorHeight":I
    iget-object v11, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 533
    .local v2, "anchorWidth":I
    const/4 v11, 0x4

    new-array v10, v11, [I

    .line 534
    .local v10, "remainSize":[I
    const/4 v11, 0x0

    const/4 v12, 0x1

    aget v12, v1, v12

    sub-int/2addr v12, v4

    aput v12, v10, v11

    .line 535
    const/4 v11, 0x1

    const/4 v12, 0x1

    aget v12, v1, v12

    sub-int v12, v6, v12

    sub-int/2addr v12, v0

    sub-int/2addr v12, v4

    aput v12, v10, v11

    .line 536
    const/4 v11, 0x2

    const/4 v12, 0x0

    aget v12, v1, v12

    sub-int/2addr v12, v5

    aput v12, v10, v11

    .line 537
    const/4 v11, 0x3

    const/4 v12, 0x0

    aget v12, v1, v12

    sub-int v12, v7, v12

    sub-int/2addr v12, v2

    sub-int/2addr v12, v5

    aput v12, v10, v11

    .line 541
    const/4 v3, 0x0

    .line 542
    .local v3, "arrowMode":I
    const/high16 v9, -0x80000000

    .line 543
    .local v9, "maxSpace":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v11, 0x4

    if-ge v8, v11, :cond_0

    .line 544
    aget v11, v10, v8

    iget v12, p0, Lcom/miui/internal/widget/ArrowPopupView;->mMinBorder:I

    if-lt v11, v12, :cond_1

    .line 545
    move v3, v8

    .line 552
    :cond_0
    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ArrowPopupView;->setArrowMode(I)V

    .line 553
    return-void

    .line 547
    :cond_1
    aget v11, v10, v8

    if-le v11, v9, :cond_2

    .line 548
    move v3, v8

    .line 549
    aget v9, v10, v8

    .line 543
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private arrowHorizontalLayout()V
    .locals 26

    .prologue
    .line 346
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 347
    .local v17, "location":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 348
    const/16 v21, 0x0

    aget v4, v17, v21

    .line 349
    .local v4, "anchorLocationX":I
    const/16 v21, 0x1

    aget v5, v17, v21

    .line 350
    .local v5, "anchorLocationY":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->getLocationInWindow([I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 352
    .local v6, "anchorWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 353
    .local v3, "anchorHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v16

    .line 354
    .local v16, "displayWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

    move-result v15

    .line 355
    .local v15, "displayHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v14

    .line 358
    .local v14, "contentFrameWrapperWidth":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    .line 361
    .local v12, "contentFrameWrapperHeight":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    .line 362
    .local v10, "arrowWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    .line 363
    .local v7, "arrowHeight":I
    div-int/lit8 v21, v3, 0x2

    add-int v21, v21, v5

    const/16 v22, 0x1

    aget v22, v17, v22

    sub-int v20, v21, v22

    .line 364
    .local v20, "spaceTop":I
    sub-int v18, v15, v20

    .line 365
    .local v18, "spaceBottom":I
    sub-int v21, v3, v7

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v5

    const/16 v22, 0x1

    aget v22, v17, v22

    sub-int v9, v21, v22

    .line 367
    .local v9, "arrowSpaceTop":I
    div-int/lit8 v13, v12, 0x2

    .line 368
    .local v13, "contentFrameWrapperTopHeight":I
    sub-int v11, v12, v13

    .line 370
    .local v11, "contentFrameWrapperBottomHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getLeft()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetX:I

    move/from16 v22, v0

    add-int v19, v21, v22

    .line 371
    .local v19, "spaceLeft":I
    const/4 v8, 0x0

    .line 372
    .local v8, "arrowSpaceLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 373
    sub-int v21, v4, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v22

    add-int v21, v21, v22

    sub-int v21, v21, v10

    const/16 v22, 0x0

    aget v22, v17, v22

    sub-int v21, v21, v22

    add-int v19, v19, v21

    .line 375
    sub-int v21, v4, v10

    const/16 v22, 0x0

    aget v22, v17, v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetX:I

    move/from16 v22, v0

    add-int v8, v21, v22

    .line 382
    :cond_0
    :goto_2
    move/from16 v0, v20

    if-lt v0, v13, :cond_5

    move/from16 v0, v18

    if-lt v0, v11, :cond_5

    .line 384
    sub-int v21, v20, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    move/from16 v22, v0

    add-int v20, v21, v22

    .line 392
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    move/from16 v21, v0

    add-int v9, v9, v21

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v24, v19, v14

    move/from16 v0, v24

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    add-int v25, v20, v12

    move/from16 v0, v25

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v25

    invoke-virtual/range {v21 .. v25}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    add-int v22, v8, v10

    add-int v23, v9, v7

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v8, v9, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 404
    return-void

    .line 355
    .end local v7    # "arrowHeight":I
    .end local v8    # "arrowSpaceLeft":I
    .end local v9    # "arrowSpaceTop":I
    .end local v10    # "arrowWidth":I
    .end local v11    # "contentFrameWrapperBottomHeight":I
    .end local v12    # "contentFrameWrapperHeight":I
    .end local v13    # "contentFrameWrapperTopHeight":I
    .end local v14    # "contentFrameWrapperWidth":I
    .end local v18    # "spaceBottom":I
    .end local v19    # "spaceLeft":I
    .end local v20    # "spaceTop":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v14

    goto/16 :goto_0

    .line 358
    .restart local v14    # "contentFrameWrapperWidth":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v12

    goto/16 :goto_1

    .line 376
    .restart local v7    # "arrowHeight":I
    .restart local v8    # "arrowSpaceLeft":I
    .restart local v9    # "arrowSpaceTop":I
    .restart local v10    # "arrowWidth":I
    .restart local v11    # "contentFrameWrapperBottomHeight":I
    .restart local v12    # "contentFrameWrapperHeight":I
    .restart local v13    # "contentFrameWrapperTopHeight":I
    .restart local v18    # "spaceBottom":I
    .restart local v19    # "spaceLeft":I
    .restart local v20    # "spaceTop":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 377
    add-int v21, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v22

    sub-int v21, v21, v22

    add-int v21, v21, v10

    const/16 v22, 0x0

    aget v22, v17, v22

    sub-int v21, v21, v22

    add-int v19, v19, v21

    .line 379
    move/from16 v8, v19

    goto/16 :goto_2

    .line 385
    :cond_5
    move/from16 v0, v18

    if-ge v0, v11, :cond_6

    .line 387
    sub-int v21, v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    move/from16 v22, v0

    add-int v20, v21, v22

    goto/16 :goto_3

    .line 388
    :cond_6
    move/from16 v0, v20

    if-ge v0, v13, :cond_1

    .line 390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    move/from16 v20, v0

    goto/16 :goto_3
.end method

.method private arrowLayout()V
    .locals 5

    .prologue
    .line 261
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->arrowVerticalLayout()V

    .line 268
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 270
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 271
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_5

    .line 272
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    :cond_1
    :goto_1
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_2

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_3

    .line 279
    :cond_2
    const-string v2, "ArrowPopupView"

    const-string v3, "Invalid LayoutPrams of content view, please check the anchor view"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void

    .line 264
    .end local v0    # "contentView":Landroid/view/View;
    :cond_4
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->arrowHorizontalLayout()V

    goto :goto_0

    .line 274
    .restart local v0    # "contentView":Landroid/view/View;
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 275
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 276
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private arrowVerticalLayout()V
    .locals 26

    .prologue
    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 286
    .local v6, "anchorWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 287
    .local v3, "anchorHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getWidth()I

    move-result v16

    .line 288
    .local v16, "displayWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getHeight()I

    move-result v15

    .line 289
    .local v15, "displayHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v14

    .line 291
    .local v14, "contentFrameWrapperWidth":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v11

    .line 294
    .local v11, "contentFrameWrapperHeight":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    .line 295
    .local v10, "arrowWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    .line 297
    .local v7, "arrowHeight":I
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 298
    .local v17, "location":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 299
    const/16 v21, 0x0

    aget v4, v17, v21

    .line 300
    .local v4, "anchorLocationX":I
    const/16 v21, 0x1

    aget v5, v17, v21

    .line 301
    .local v5, "anchorLocationY":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->getLocationInWindow([I)V

    .line 302
    div-int/lit8 v21, v6, 0x2

    add-int v21, v21, v4

    const/16 v22, 0x0

    aget v22, v17, v22

    sub-int v18, v21, v22

    .line 303
    .local v18, "spaceLeft":I
    sub-int v19, v16, v18

    .line 304
    .local v19, "spaceRight":I
    sub-int v21, v6, v10

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v4

    const/16 v22, 0x0

    aget v22, v17, v22

    sub-int v8, v21, v22

    .line 306
    .local v8, "arrowSpaceLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ArrowPopupView;->getTop()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    move/from16 v22, v0

    add-int v20, v21, v22

    .line 307
    .local v20, "spaceTop":I
    const/4 v9, 0x0

    .line 308
    .local v9, "arrowSpaceTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    move/from16 v21, v0

    if-nez v21, :cond_4

    .line 309
    const/16 v21, 0x1

    aget v21, v17, v21

    sub-int v21, v5, v21

    sub-int v21, v21, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v22

    sub-int v22, v22, v7

    add-int v21, v21, v22

    add-int v20, v20, v21

    .line 311
    const/16 v21, 0x1

    aget v21, v17, v21

    sub-int v21, v5, v21

    sub-int v21, v21, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    move/from16 v22, v0

    add-int v9, v21, v22

    .line 318
    :cond_0
    :goto_2
    div-int/lit8 v12, v14, 0x2

    .line 319
    .local v12, "contentFrameWrapperLeftWidth":I
    sub-int v13, v14, v12

    .line 320
    .local v13, "contentFrameWrapperRightWidth":I
    move/from16 v0, v18

    if-lt v0, v12, :cond_5

    move/from16 v0, v19

    if-lt v0, v13, :cond_5

    .line 322
    sub-int v18, v18, v12

    .line 330
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetX:I

    move/from16 v21, v0

    add-int v18, v18, v21

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetX:I

    move/from16 v21, v0

    add-int v8, v8, v21

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v24, v18, v14

    move/from16 v0, v24

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    add-int v25, v20, v11

    move/from16 v0, v25

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v25

    invoke-virtual/range {v21 .. v25}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    add-int v22, v8, v10

    add-int v23, v9, v7

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v8, v9, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 343
    return-void

    .line 289
    .end local v4    # "anchorLocationX":I
    .end local v5    # "anchorLocationY":I
    .end local v7    # "arrowHeight":I
    .end local v8    # "arrowSpaceLeft":I
    .end local v9    # "arrowSpaceTop":I
    .end local v10    # "arrowWidth":I
    .end local v11    # "contentFrameWrapperHeight":I
    .end local v12    # "contentFrameWrapperLeftWidth":I
    .end local v13    # "contentFrameWrapperRightWidth":I
    .end local v14    # "contentFrameWrapperWidth":I
    .end local v17    # "location":[I
    .end local v18    # "spaceLeft":I
    .end local v19    # "spaceRight":I
    .end local v20    # "spaceTop":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v14

    goto/16 :goto_0

    .line 291
    .restart local v14    # "contentFrameWrapperWidth":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v11

    goto/16 :goto_1

    .line 312
    .restart local v4    # "anchorLocationX":I
    .restart local v5    # "anchorLocationY":I
    .restart local v7    # "arrowHeight":I
    .restart local v8    # "arrowSpaceLeft":I
    .restart local v9    # "arrowSpaceTop":I
    .restart local v10    # "arrowWidth":I
    .restart local v11    # "contentFrameWrapperHeight":I
    .restart local v17    # "location":[I
    .restart local v18    # "spaceLeft":I
    .restart local v19    # "spaceRight":I
    .restart local v20    # "spaceTop":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 313
    add-int v21, v5, v3

    const/16 v22, 0x1

    aget v22, v17, v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    add-int v21, v21, v7

    add-int v20, v20, v21

    .line 315
    move/from16 v9, v20

    goto/16 :goto_2

    .line 323
    .restart local v12    # "contentFrameWrapperLeftWidth":I
    .restart local v13    # "contentFrameWrapperRightWidth":I
    :cond_5
    move/from16 v0, v19

    if-ge v0, v13, :cond_6

    .line 325
    sub-int v18, v16, v14

    goto/16 :goto_3

    .line 326
    :cond_6
    move/from16 v0, v18

    if-ge v0, v12, :cond_1

    .line 328
    const/16 v18, 0x0

    goto/16 :goto_3
.end method


# virtual methods
.method public animateToDismiss()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xb4

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 496
    iget-boolean v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mIsDismissing:Z

    if-eqz v4, :cond_0

    .line 517
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    .line 500
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 502
    :cond_1
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 503
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 504
    .local v2, "dimAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 506
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 507
    .local v1, "contentAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 508
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    aput v9, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 509
    .local v0, "arrowAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 511
    const-string v4, "RollingPercent"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 512
    .local v3, "rollAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 514
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v7

    aput-object v1, v5, v8

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 515
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/miui/internal/widget/ArrowPopupView;->mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 516
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public animateToShow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 459
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->setAlpha(F)V

    .line 460
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ArrowPopupView;->setRollingPercent(F)V

    .line 461
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 463
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->invalidate()V

    .line 464
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/widget/ArrowPopupView$3;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/ArrowPopupView$3;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 493
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 417
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mRollingPercent:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 418
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTmpRectF:Landroid/graphics/RectF;

    .line 419
    .local v1, "rectF":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 420
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 421
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 422
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 423
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mRollingPercent:F

    sub-float v0, v3, v2

    .line 425
    .local v0, "percent":F
    iget v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    packed-switch v2, :pswitch_data_0

    .line 441
    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 442
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 443
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 447
    .end local v0    # "percent":F
    .end local v1    # "rectF":Landroid/graphics/RectF;
    :goto_1
    return-void

    .line 427
    .restart local v0    # "percent":F
    .restart local v1    # "rectF":Landroid/graphics/RectF;
    :pswitch_0
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 431
    :pswitch_1
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 434
    :pswitch_2
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 437
    :pswitch_3
    iget-object v2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 445
    .end local v0    # "percent":F
    .end local v1    # "rectF":Landroid/graphics/RectF;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getArrowMode()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNegativeButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPositiveButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getRollingPercent()F
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mRollingPercent:F

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 192
    sget v0, Lcom/miui/internal/R$id;->popup_arrow:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    .line 193
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    .line 194
    sget v0, Lcom/miui/internal/R$id;->content_wrapper:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    .line 195
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    sget v0, Lcom/miui/internal/R$id;->title_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 198
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleText:Landroid/widget/TextView;

    .line 200
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    .line 201
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    .line 203
    new-instance v0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 204
    new-instance v0, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lcom/miui/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 205
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 408
    iget v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->adjustArrowMode()V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/ArrowPopupView;->arrowLayout()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 599
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 600
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 603
    .local v2, "y":I
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTmpRect:Landroid/graphics/Rect;

    .line 604
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 605
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 606
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v4, v3}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 609
    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    invoke-interface {v4, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    .line 582
    return-void
.end method

.method public setArrowMode(I)V
    .locals 2
    .param p1, "arrowMode"    # I

    .prologue
    .line 560
    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 561
    packed-switch p1, :pswitch_data_0

    .line 578
    :goto_0
    return-void

    .line 563
    :pswitch_0
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 567
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 571
    :pswitch_2
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 575
    :pswitch_3
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setArrowPopupWindow(Lmiui/widget/ArrowPopupWindow;)V
    .locals 0
    .param p1, "arrowPopupWindow"    # Lmiui/widget/ArrowPopupWindow;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mArrowPopupWindow:Lmiui/widget/ArrowPopupWindow;

    .line 591
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "contentViewId"    # I

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    .line 230
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x2

    .line 210
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 216
    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :cond_0
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeButton:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mNegativeClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOffset(II)V
    .locals 0
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 585
    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetX:I

    .line 586
    iput p2, p0, Lcom/miui/internal/widget/ArrowPopupView;->mOffsetY:I

    .line 587
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveButton:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mPositiveClickListener:Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, p2}, Lcom/miui/internal/widget/ArrowPopupView$WrapperOnClickListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRollingPercent(F)V
    .locals 0
    .param p1, "rollingPercent"    # F

    .prologue
    .line 454
    iput p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mRollingPercent:F

    .line 455
    invoke-virtual {p0}, Lcom/miui/internal/widget/ArrowPopupView;->postInvalidateOnAnimation()V

    .line 456
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/miui/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 595
    return-void
.end method
