.class public Lmiui/widget/CircleProgressBar;
.super Landroid/widget/ProgressBar;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/CircleProgressBar$OnProgressChangedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_NEED_DRAW_MIN_VALUE:I = 0xa

.field private static final DEFAULT_FADE_OUT_DURATION:I = 0x12c

.field private static final DEFAULT_ROTATE_VELOCITY:I = 0x12c


# instance fields
.field private mArcRect:Landroid/graphics/RectF;

.field private mBitmapForSoftLayer:Landroid/graphics/Bitmap;

.field private mCanvasForSoftLayer:Landroid/graphics/Canvas;

.field private mChangeProgressAnimator:Landroid/animation/Animator;

.field private mCurrentLevel:I

.field private mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

.field private mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

.field private mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevAlpha:I

.field private mPrevLevel:I

.field private mProgressChangedListener:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

.field private mProgressLevels:[I

.field private mRotateVelocity:I

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/16 v0, 0x12c

    iput v0, p0, Lmiui/widget/CircleProgressBar;->mRotateVelocity:I

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/CircleProgressBar;->setIndeterminate(Z)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    return-void
.end method

.method private calcDuration(I)I
    .locals 2
    .param p1, "angle"    # I

    .prologue
    .line 233
    mul-int/lit16 v0, p1, 0x3e8

    iget v1, p0, Lmiui/widget/CircleProgressBar;->mRotateVelocity:I

    div-int/2addr v0, v1

    return v0
.end method

.method private drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "back"    # Landroid/graphics/drawable/Drawable;
    .param p3, "fore"    # Landroid/graphics/drawable/Drawable;
    .param p4, "middle"    # Landroid/graphics/drawable/Drawable;
    .param p5, "rate"    # F
    .param p6, "alpha"    # I

    .prologue
    .line 327
    if-eqz p2, :cond_0

    .line 328
    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 329
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 333
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 334
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    const/4 v7, 0x0

    const/16 v8, 0x10

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 337
    iget-object v3, p0, Lmiui/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v5, v2, p5

    const/4 v6, 0x1

    iget-object v7, p0, Lmiui/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 338
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 339
    move-object/from16 v0, p4

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 360
    :goto_0
    iget-object v10, p0, Lmiui/widget/CircleProgressBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 361
    .local v10, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_1

    .line 362
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 363
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v12, v2, 0x2

    .line 364
    .local v12, "x":I
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v13, v2, 0x2

    .line 365
    .local v13, "y":I
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 366
    .local v11, "w":I
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 367
    .local v9, "h":I
    const/high16 v2, 0x43b40000    # 360.0f

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v12

    int-to-float v4, v13

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 368
    div-int/lit8 v2, v11, 0x2

    sub-int v2, v12, v2

    div-int/lit8 v3, v9, 0x2

    sub-int v3, v13, v3

    div-int/lit8 v4, v11, 0x2

    add-int/2addr v4, v12

    div-int/lit8 v5, v9, 0x2

    add-int/2addr v5, v13

    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 369
    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 370
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 374
    .end local v9    # "h":I
    .end local v11    # "w":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_1
    if-eqz p3, :cond_2

    .line 375
    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 376
    move-object/from16 v0, p3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 378
    :cond_2
    return-void

    .line 342
    .end local v10    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 343
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    .line 345
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lmiui/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lmiui/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 348
    :cond_4
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 349
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 350
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 351
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    iget-object v3, p0, Lmiui/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float v5, v5, p5

    const/4 v6, 0x1

    iget-object v7, p0, Lmiui/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 352
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 353
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 354
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 356
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private getBackDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getDrawables([I)[Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "resourceIds"    # [I

    .prologue
    const/4 v6, 0x0

    .line 157
    if-nez p1, :cond_1

    .line 158
    const/4 v0, 0x0

    .line 167
    :cond_0
    return-object v0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 161
    .local v2, "resources":Landroid/content/res/Resources;
    array-length v3, p1

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 162
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 163
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v1

    .line 164
    aget-object v3, v0, v1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    aget-object v5, v0, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getForeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getIntrinsicHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 297
    invoke-direct {p0, v2}, Lmiui/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 298
    .local v0, "minHeight":I
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 300
    :cond_0
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 302
    :cond_1
    return v0
.end method

.method private getIntrinsicWidth()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-direct {p0, v2}, Lmiui/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 289
    .local v0, "minWidth":I
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 291
    :cond_0
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 293
    :cond_1
    return v0
.end method

.method private getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getRate()F
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 238
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 239
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgressLevelCount()I

    move-result v1

    .line 240
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 241
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 242
    :cond_0
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 243
    :cond_1
    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 240
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->invalidate()V

    .line 246
    return-void
.end method

.method public getPrevAlpha()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lmiui/widget/CircleProgressBar;->mPrevAlpha:I

    return v0
.end method

.method public getProgressLevelCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->mProgressLevels:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->mProgressLevels:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/widget/CircleProgressBar;->mCurrentLevel:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->getBackDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v0, p0, Lmiui/widget/CircleProgressBar;->mCurrentLevel:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->getForeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lmiui/widget/CircleProgressBar;->mCurrentLevel:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->getRate()F

    move-result v5

    iget v0, p0, Lmiui/widget/CircleProgressBar;->mPrevAlpha:I

    rsub-int v6, v0, 0xff

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmiui/widget/CircleProgressBar;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    .line 318
    iget v0, p0, Lmiui/widget/CircleProgressBar;->mPrevAlpha:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 319
    iget v0, p0, Lmiui/widget/CircleProgressBar;->mPrevLevel:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->getBackDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v0, p0, Lmiui/widget/CircleProgressBar;->mPrevLevel:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->getForeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lmiui/widget/CircleProgressBar;->mPrevLevel:I

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->getMiddleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->getRate()F

    move-result v5

    iget v6, p0, Lmiui/widget/CircleProgressBar;->mPrevAlpha:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmiui/widget/CircleProgressBar;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_0
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->getIntrinsicWidth()I

    move-result v0

    invoke-direct {p0}, Lmiui/widget/CircleProgressBar;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/widget/CircleProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDrawablesForLevels([I[I[I)V
    .locals 3
    .param p1, "resourceIdBacks"    # [I
    .param p2, "resourceIdMiddles"    # [I
    .param p3, "resourceIdFores"    # [I

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lmiui/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2}, Lmiui/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p3}, Lmiui/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lmiui/widget/CircleProgressBar;->setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V

    .line 154
    return-void
.end method

.method public setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .param p1, "backs"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "middles"    # [Landroid/graphics/drawable/Drawable;
    .param p3, "fores"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v8, 0x0

    .line 102
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    .line 103
    iput-object p2, p0, Lmiui/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    .line 104
    iput-object p3, p0, Lmiui/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    .line 107
    if-eqz p1, :cond_0

    .line 108
    move-object v0, p1

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 109
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    if-eqz p2, :cond_1

    .line 113
    move-object v0, p2

    .restart local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 114
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    if-eqz p3, :cond_2

    .line 118
    move-object v0, p3

    .restart local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 119
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 124
    .end local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    move-object v0, p2

    .restart local v0    # "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 125
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_3

    .line 126
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 124
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 128
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    instance-of v4, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v4, :cond_4

    .line 129
    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_4

    .line 132
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "\'middles\' must a bitmap or nine patch drawable."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    new-instance v4, Landroid/graphics/RectF;

    aget-object v5, p2, v8

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, -0x5

    int-to-float v5, v5

    aget-object v6, p2, v8

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/lit8 v6, v6, -0x5

    int-to-float v6, v6

    aget-object v7, p2, v8

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, 0x5

    int-to-float v7, v7

    aget-object v8, p2, v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v8, 0x5

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lmiui/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    .line 140
    return-void
.end method

.method public setOnProgressChangedListener(Lmiui/widget/CircleProgressBar$OnProgressChangedListener;)V
    .locals 0
    .param p1, "progressChangedListener"    # Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

    .prologue
    .line 203
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->mProgressChangedListener:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

    .line 204
    return-void
.end method

.method public setPrevAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 385
    iput p1, p0, Lmiui/widget/CircleProgressBar;->mPrevAlpha:I

    .line 386
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->invalidate()V

    .line 387
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 8
    .param p1, "progress"    # I

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 252
    const/4 v2, -0x1

    .line 253
    .local v2, "newLevel":I
    iget-object v4, p0, Lmiui/widget/CircleProgressBar;->mProgressLevels:[I

    if-nez v4, :cond_3

    .line 254
    const/4 v2, 0x0

    .line 267
    :cond_0
    :goto_0
    iget v4, p0, Lmiui/widget/CircleProgressBar;->mCurrentLevel:I

    if-eq v2, v4, :cond_1

    .line 269
    iget v4, p0, Lmiui/widget/CircleProgressBar;->mCurrentLevel:I

    iput v4, p0, Lmiui/widget/CircleProgressBar;->mPrevLevel:I

    .line 270
    iput v2, p0, Lmiui/widget/CircleProgressBar;->mCurrentLevel:I

    .line 271
    const/16 v4, 0xff

    invoke-virtual {p0, v4}, Lmiui/widget/CircleProgressBar;->setPrevAlpha(I)V

    .line 272
    const-string v4, "prevAlpha"

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 273
    .local v0, "fadeOutAnimator":Landroid/animation/Animator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 274
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 275
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 278
    .end local v0    # "fadeOutAnimator":Landroid/animation/Animator;
    :cond_1
    iget-object v4, p0, Lmiui/widget/CircleProgressBar;->mProgressChangedListener:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

    if-eqz v4, :cond_2

    .line 279
    iget-object v4, p0, Lmiui/widget/CircleProgressBar;->mProgressChangedListener:Lmiui/widget/CircleProgressBar$OnProgressChangedListener;

    invoke-interface {v4}, Lmiui/widget/CircleProgressBar$OnProgressChangedListener;->onProgressChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_2
    monitor-exit p0

    return-void

    .line 256
    :cond_3
    :try_start_1
    iget-object v4, p0, Lmiui/widget/CircleProgressBar;->mProgressLevels:[I

    array-length v3, v4

    .line 257
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 258
    iget-object v4, p0, Lmiui/widget/CircleProgressBar;->mProgressLevels:[I

    aget v4, v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge p1, v4, :cond_5

    .line 259
    move v2, v1

    .line 263
    :cond_4
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 264
    move v2, v3

    goto :goto_0

    .line 257
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 250
    .end local v1    # "i":I
    .end local v2    # "newLevel":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setProgressByAnimator(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    .line 196
    return-void
.end method

.method public setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 212
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->stopProgressAnimator()V

    .line 213
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getProgress()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 214
    .local v0, "offsetAngle":I
    const-string v1, "progress"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    .line 215
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lmiui/widget/CircleProgressBar;->calcDuration(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 216
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 217
    if-eqz p2, :cond_0

    .line 218
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    :cond_0
    iget-object v1, p0, Lmiui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 221
    return-void
.end method

.method public setProgressLevels([I)V
    .locals 0
    .param p1, "progressLevels"    # [I

    .prologue
    .line 83
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->mProgressLevels:[I

    .line 84
    return-void
.end method

.method public setRotateVelocity(I)V
    .locals 0
    .param p1, "velocity"    # I

    .prologue
    .line 187
    iput p1, p0, Lmiui/widget/CircleProgressBar;->mRotateVelocity:I

    .line 188
    return-void
.end method

.method public setThumb(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 402
    invoke-virtual {p0}, Lmiui/widget/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/CircleProgressBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 403
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 410
    iput-object p1, p0, Lmiui/widget/CircleProgressBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 411
    return-void
.end method

.method public stopProgressAnimator()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lmiui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 230
    :cond_0
    return-void
.end method
