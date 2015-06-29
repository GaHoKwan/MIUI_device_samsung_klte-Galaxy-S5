.class public Lcom/miui/internal/widget/GuidePopupView;
.super Landroid/widget/FrameLayout;
.source "GuidePopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/GuidePopupView$WrapperOnClickListener;
    }
.end annotation


# static fields
.field public static final ARROW_BOTTOM_LEFT_MODE:I = 0x7

.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_BOTTOM_RIGHT_MODE:I = 0x5

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_NONE_MODE:I = -0x1

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_LEFT_MODE:I = 0x4

.field public static final ARROW_TOP_MODE:I = 0x1

.field public static final ARROW_TOP_RIGHT_MODE:I = 0x6


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mAnchorHeight:I

.field private mAnchorLocationX:I

.field private mAnchorLocationY:I

.field private mAnchorWidth:I

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mArrowMode:I

.field private mColorBackground:I

.field private mContext:Landroid/content/Context;

.field private mDefaultOffset:I

.field private mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

.field private mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mIsDismissing:Z

.field private mIsMirrored:Z

.field private mLineLength:F

.field private mMinBorder:I

.field private mMirroredTextGroup:Landroid/widget/LinearLayout;

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mStartPointRadius:F

.field private mTextCircleRadius:F

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextGroup:Landroid/widget/LinearLayout;

.field private mTextSize:I

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mUseDefaultOffset:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/GuidePopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 166
    sget v0, Lcom/miui/internal/R$attr;->guidePopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/GuidePopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput-boolean v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    .line 105
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 107
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    .line 111
    new-instance v2, Lcom/miui/internal/widget/GuidePopupView$1;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/GuidePopupView$1;-><init>(Lcom/miui/internal/widget/GuidePopupView;)V

    iput-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 133
    new-instance v2, Lcom/miui/internal/widget/GuidePopupView$2;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/GuidePopupView$2;-><init>(Lcom/miui/internal/widget/GuidePopupView;)V

    iput-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 159
    iput v5, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    .line 172
    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mContext:Landroid/content/Context;

    .line 174
    sget-object v2, Lcom/miui/internal/R$styleable;->GuidePopupView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 178
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mStartPointRadius:F

    .line 179
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mLineLength:F

    .line 180
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 181
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mColorBackground:I

    .line 183
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 184
    .local v1, "paintColor":I
    iget-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    const/16 v2, 0xf

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextSize:I

    .line 187
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 189
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mLineLength:F

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    const/high16 v4, 0x40200000    # 2.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mMinBorder:I

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/GuidePopupView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/GuidePopupView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/internal/widget/GuidePopupView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/widget/GuidePopupView;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mIsDismissing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/GuidePopupView;)Lmiui/widget/GuidePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/GuidePopupView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/GuidePopupView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/widget/GuidePopupView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method private adjustArrowMode()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    .line 207
    invoke-virtual {p0}, Lcom/miui/internal/widget/GuidePopupView;->getWidth()I

    move-result v4

    .line 208
    .local v4, "displayWidth":I
    invoke-virtual {p0}, Lcom/miui/internal/widget/GuidePopupView;->getHeight()I

    move-result v3

    .line 210
    .local v3, "displayHeight":I
    new-array v7, v11, [I

    .line 211
    .local v7, "remainSize":[I
    const/4 v8, 0x0

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    aput v9, v7, v8

    .line 212
    const/4 v8, 0x1

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    sub-int v9, v3, v9

    iget v10, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorHeight:I

    sub-int/2addr v9, v10

    aput v9, v7, v8

    .line 213
    const/4 v8, 0x2

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    aput v9, v7, v8

    .line 214
    const/4 v8, 0x3

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    sub-int v9, v4, v9

    iget v10, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorWidth:I

    sub-int/2addr v9, v10

    aput v9, v7, v8

    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, "arrowMode":I
    const/high16 v6, -0x80000000

    .line 221
    .local v6, "maxSpace":I
    iget v8, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int v0, v8, v9

    .line 222
    .local v0, "anchorCenterX":I
    iget v8, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorHeight:I

    div-int/lit8 v9, v9, 0x2

    add-int v1, v8, v9

    .line 223
    .local v1, "anchorCenterY":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v11, :cond_0

    .line 224
    aget v8, v7, v5

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mMinBorder:I

    if-lt v8, v9, :cond_2

    .line 225
    move v2, v5

    .line 232
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 263
    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/GuidePopupView;->setArrowMode(I)V

    .line 264
    return-void

    .line 227
    :cond_2
    aget v8, v7, v5

    if-le v8, v6, :cond_3

    .line 228
    move v2, v5

    .line 229
    aget v6, v7, v5

    .line 223
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 234
    :pswitch_0
    int-to-float v8, v0

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 235
    const/4 v2, 0x7

    goto :goto_1

    .line 236
    :cond_4
    sub-int v8, v4, v0

    int-to-float v8, v8

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 237
    const/4 v2, 0x5

    goto :goto_1

    .line 241
    :pswitch_1
    int-to-float v8, v0

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    .line 242
    const/4 v2, 0x4

    goto :goto_1

    .line 243
    :cond_5
    sub-int v8, v4, v0

    int-to-float v8, v8

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 244
    const/4 v2, 0x6

    goto :goto_1

    .line 248
    :pswitch_2
    int-to-float v8, v1

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    .line 249
    const/4 v2, 0x6

    goto :goto_1

    .line 250
    :cond_6
    sub-int v8, v3, v1

    int-to-float v8, v8

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 251
    const/4 v2, 0x5

    goto :goto_1

    .line 255
    :pswitch_3
    int-to-float v8, v1

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_7

    .line 256
    const/4 v2, 0x4

    goto :goto_1

    .line 257
    :cond_7
    sub-int v8, v3, v1

    int-to-float v8, v8

    iget v9, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 258
    const/4 v2, 0x7

    goto :goto_1

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private arrowLayout()V
    .locals 5

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->caculateDefaultOffset()V

    .line 272
    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    iget-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetX:I

    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetY:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/miui/internal/widget/GuidePopupView;->drawText(ILandroid/widget/LinearLayout;II)V

    .line 273
    iget-boolean v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mIsMirrored:Z

    if-eqz v1, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->getMirroredMode()I

    move-result v0

    .line 275
    .local v0, "mirroredMode":I
    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetX:I

    neg-int v2, v2

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetY:I

    neg-int v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/internal/widget/GuidePopupView;->drawText(ILandroid/widget/LinearLayout;II)V

    .line 277
    .end local v0    # "mirroredMode":I
    :cond_0
    return-void
.end method

.method private caculateDefaultOffset()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 447
    iget-boolean v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    if-nez v3, :cond_0

    .line 448
    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mDefaultOffset:I

    .line 467
    :goto_0
    return-void

    .line 451
    :cond_0
    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorWidth:I

    div-int/lit8 v1, v3, 0x2

    .line 452
    .local v1, "halfAnchorWidth":I
    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorHeight:I

    div-int/lit8 v0, v3, 0x2

    .line 453
    .local v0, "halfAnchorHeight":I
    int-to-double v4, v1

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v6, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 454
    .local v2, "halfDiagonal":I
    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    packed-switch v3, :pswitch_data_0

    .line 464
    iput v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mDefaultOffset:I

    goto :goto_0

    .line 457
    :pswitch_0
    iput v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mDefaultOffset:I

    goto :goto_0

    .line 461
    :pswitch_1
    iput v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mDefaultOffset:I

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private drawPopup(Landroid/graphics/Canvas;III)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "arrowMode"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 325
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 326
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 327
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    int-to-float v6, v0

    .line 328
    .local v6, "anchorX":F
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    int-to-float v2, v0

    .line 330
    .local v2, "anchorY":F
    const/4 v7, 0x0

    .line 331
    .local v7, "degrees":F
    packed-switch p2, :pswitch_data_0

    .line 358
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 360
    invoke-virtual {p1, v7, v6, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 361
    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mDefaultOffset:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 364
    .local v8, "sc":I
    sub-float v1, v6, v3

    add-float/2addr v3, v6

    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mStartPointRadius:F

    add-float v4, v2, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 365
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mStartPointRadius:F

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 366
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 368
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 369
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 371
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mLineLength:F

    add-float v4, v2, v0

    iget-object v5, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v6

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 374
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mLineLength:F

    add-float/2addr v2, v0

    .line 376
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    add-float/2addr v2, v0

    .line 377
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 379
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 381
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 382
    return-void

    .line 333
    .end local v8    # "sc":I
    :pswitch_0
    const/4 v7, 0x0

    .line 334
    goto :goto_0

    .line 336
    :pswitch_1
    const/high16 v7, 0x43340000    # 180.0f

    .line 337
    goto :goto_0

    .line 339
    :pswitch_2
    const/high16 v7, -0x3d4c0000    # -90.0f

    .line 340
    goto :goto_0

    .line 342
    :pswitch_3
    const/high16 v7, 0x42b40000    # 90.0f

    .line 343
    goto :goto_0

    .line 345
    :pswitch_4
    const/high16 v7, -0x3dcc0000    # -45.0f

    .line 346
    goto :goto_0

    .line 348
    :pswitch_5
    const/high16 v7, 0x42340000    # 45.0f

    .line 349
    goto :goto_0

    .line 351
    :pswitch_6
    const/high16 v7, -0x3cf90000    # -135.0f

    .line 352
    goto :goto_0

    .line 354
    :pswitch_7
    const/high16 v7, 0x43070000    # 135.0f

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private drawText(ILandroid/widget/LinearLayout;II)V
    .locals 16
    .param p1, "arrowMode"    # I
    .param p2, "textGroup"    # Landroid/widget/LinearLayout;
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/internal/widget/GuidePopupView;->mDefaultOffset:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/internal/widget/GuidePopupView;->mLineLength:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    add-float v10, v12, v13

    .line 387
    .local v10, "textCenterToAnchor":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorWidth:I

    div-int/lit8 v13, v13, 0x2

    add-int v2, v12, v13

    .line 388
    .local v2, "anchorCenterX":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorHeight:I

    div-int/lit8 v13, v13, 0x2

    add-int v3, v12, v13

    .line 389
    .local v3, "anchorCenterY":I
    const/4 v5, 0x0

    .local v5, "left":I
    const/4 v11, 0x0

    .local v11, "top":I
    const/4 v6, 0x0

    .local v6, "right":I
    const/4 v4, 0x0

    .line 391
    .local v4, "bottom":I
    packed-switch p1, :pswitch_data_0

    .line 416
    :goto_0
    move v9, v10

    .line 417
    .local v9, "rotateRadius":F
    float-to-double v12, v9

    const-wide v14, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-int v7, v12

    .line 418
    .local v7, "rotateOffsetX":I
    int-to-float v12, v7

    sub-float v12, v9, v12

    float-to-int v8, v12

    .line 420
    .local v8, "rotateOffsetY":I
    packed-switch p1, :pswitch_data_1

    .line 438
    :goto_1
    add-int v5, v5, p3

    .line 439
    add-int v11, v11, p4

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v12

    add-int v6, v5, v12

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    add-int v4, v11, v12

    .line 443
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v11, v6, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 444
    return-void

    .line 395
    .end local v7    # "rotateOffsetX":I
    .end local v8    # "rotateOffsetY":I
    .end local v9    # "rotateRadius":F
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v5, v2, v12

    .line 396
    int-to-float v12, v3

    add-float/2addr v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    float-to-int v11, v12

    .line 398
    goto :goto_0

    .line 402
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v5, v2, v12

    .line 403
    int-to-float v12, v3

    sub-float/2addr v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    float-to-int v11, v12

    .line 404
    goto :goto_0

    .line 406
    :pswitch_2
    int-to-float v12, v2

    add-float/2addr v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    float-to-int v5, v12

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v11, v3, v12

    .line 409
    goto :goto_0

    .line 411
    :pswitch_3
    int-to-float v12, v2

    sub-float/2addr v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    float-to-int v5, v12

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v11, v3, v12

    goto :goto_0

    .line 422
    .restart local v7    # "rotateOffsetX":I
    .restart local v8    # "rotateOffsetY":I
    .restart local v9    # "rotateRadius":F
    :pswitch_4
    add-int/2addr v5, v7

    .line 423
    sub-int/2addr v11, v8

    .line 424
    goto :goto_1

    .line 426
    :pswitch_5
    sub-int/2addr v5, v7

    .line 427
    sub-int/2addr v11, v8

    .line 428
    goto :goto_1

    .line 430
    :pswitch_6
    add-int/2addr v5, v7

    .line 431
    add-int/2addr v11, v8

    .line 432
    goto :goto_1

    .line 434
    :pswitch_7
    sub-int/2addr v5, v7

    .line 435
    add-int/2addr v11, v8

    goto :goto_1

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 420
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getMirroredMode()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 470
    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    if-ne v1, v0, :cond_0

    .line 476
    :goto_0
    return v0

    .line 473
    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 474
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addGuideTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 9
    .param p1, "linearLayout"    # Landroid/widget/LinearLayout;
    .param p2, "guideText"    # Ljava/lang/String;

    .prologue
    .line 563
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 579
    :cond_0
    return-void

    .line 566
    :cond_1
    const-string v6, "\n"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, "lines":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-eqz v6, :cond_0

    .line 570
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 571
    .local v4, "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mContext:Landroid/content/Context;

    sget v7, Lcom/miui/internal/R$layout;->guide_popup_text_view:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/miui/internal/widget/GuidePopupView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 572
    .local v5, "text":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    const/4 v6, 0x0

    iget v7, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextSize:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 574
    iget-object v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_2

    .line 575
    iget-object v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 577
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public animateToDismiss()V
    .locals 4

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mIsDismissing:Z

    if-eqz v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 507
    :cond_1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 508
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 509
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 510
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public animateToShow()V
    .locals 2

    .prologue
    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/GuidePopupView;->setAlpha(F)V

    .line 482
    invoke-virtual {p0}, Lcom/miui/internal/widget/GuidePopupView;->invalidate()V

    .line 483
    invoke-virtual {p0}, Lcom/miui/internal/widget/GuidePopupView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/widget/GuidePopupView$3;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/GuidePopupView$3;-><init>(Lcom/miui/internal/widget/GuidePopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 498
    return-void
.end method

.method public clearOffset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 550
    invoke-virtual {p0, v0, v0}, Lcom/miui/internal/widget/GuidePopupView;->setOffset(II)V

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    .line 552
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 304
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 308
    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 309
    iget-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 310
    iget-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 311
    iget-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 312
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 313
    iget-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 317
    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetX:I

    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetY:I

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/miui/internal/widget/GuidePopupView;->drawPopup(Landroid/graphics/Canvas;III)V

    .line 318
    iget-boolean v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mIsMirrored:Z

    if-eqz v2, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->getMirroredMode()I

    move-result v1

    .line 320
    .local v1, "mirroredMode":I
    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetX:I

    neg-int v2, v2

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetY:I

    neg-int v3, v3

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/internal/widget/GuidePopupView;->drawPopup(Landroid/graphics/Canvas;III)V

    .line 322
    .end local v1    # "mirroredMode":I
    :cond_0
    return-void
.end method

.method public getArrowMode()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    return v0
.end method

.method public getColorBackground()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mColorBackground:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 198
    sget v0, Lcom/miui/internal/R$id;->text_group:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    .line 199
    sget v0, Lcom/miui/internal/R$id;->mirrored_text_group:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    .line 200
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 281
    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorWidth:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorHeight:I

    if-nez v4, :cond_1

    .line 282
    :cond_0
    iget-object v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/miui/internal/widget/GuidePopupView;->setAnchor(Landroid/view/View;)V

    .line 284
    :cond_1
    iget-object v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    .line 285
    .local v3, "textViewWidth":I
    iget-object v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    .line 286
    .local v2, "textViewHeight":I
    int-to-double v4, v3

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v6, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 287
    .local v0, "diagonalLength":D
    div-double v4, v0, v8

    iget v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 288
    iget-boolean v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mIsMirrored:Z

    if-eqz v4, :cond_2

    .line 289
    iget-object v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    .line 290
    iget-object v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    .line 291
    int-to-double v4, v3

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v6, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 292
    div-double v4, v0, v8

    iget v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    .line 295
    :cond_2
    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 296
    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->adjustArrowMode()V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_3
    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->arrowLayout()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 587
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 588
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 590
    .local v2, "y":I
    new-instance v0, Landroid/graphics/Rect;

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    iget v5, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    iget-object v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    iget-object v7, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 592
    .local v0, "anchorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    iget-object v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->callOnClick()Z

    .line 597
    :goto_0
    return v8

    .line 596
    :cond_0
    iget-object v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v3, v8}, Lmiui/widget/GuidePopupWindow;->dismiss(Z)V

    goto :goto_0
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    .line 534
    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorWidth:I

    .line 535
    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorHeight:I

    .line 537
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 538
    .local v0, "location":[I
    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 539
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    .line 540
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    .line 541
    return-void
.end method

.method public setArrowMode(I)V
    .locals 0
    .param p1, "arrowMode"    # I

    .prologue
    .line 518
    iput p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    .line 519
    return-void
.end method

.method public setArrowMode(IZ)V
    .locals 2
    .param p1, "arrowMode"    # I
    .param p2, "isMirrored"    # Z

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/GuidePopupView;->setArrowMode(I)V

    .line 523
    iput-boolean p2, p0, Lcom/miui/internal/widget/GuidePopupView;->mIsMirrored:Z

    .line 524
    iget-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mIsMirrored:Z

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setGuidePopupWindow(Lmiui/widget/GuidePopupWindow;)V
    .locals 0
    .param p1, "guidePopupWindow"    # Lmiui/widget/GuidePopupWindow;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

    .line 556
    return-void
.end method

.method public setOffset(II)V
    .locals 1
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 544
    iput p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetX:I

    .line 545
    iput p2, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetY:I

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    .line 547
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 583
    return-void
.end method
