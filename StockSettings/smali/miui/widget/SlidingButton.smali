.class public Lmiui/widget/SlidingButton;
.super Landroid/widget/CheckBox;
.source "SlidingButton.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0xb4

.field private static final FULL_ALPHA:I = 0xff

.field private static final SCALE_ANIMATION_DELAY:I = 0x64


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mBarOff:Landroid/graphics/Bitmap;

.field private mBarOffPaint:Landroid/graphics/Paint;

.field private mBarOn:Landroid/graphics/Bitmap;

.field private mBarOnPaint:Landroid/graphics/Paint;

.field private mFrame:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mLastX:I

.field private mMask:Landroid/graphics/Bitmap;

.field private mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOriginalTouchPointX:I

.field private mSliderMoved:Z

.field private mSliderOff:Landroid/graphics/drawable/Drawable;

.field private mSliderOffset:I

.field private mSliderOn:Landroid/graphics/drawable/Drawable;

.field private mSliderOnAlpha:I

.field private mSliderPositionEnd:I

.field private mSliderPositionStart:I

.field private mSliderWidth:I

.field private mTapThreshold:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v11, 0x7

    const/4 v8, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lmiui/widget/SlidingButton;->mTmpRect:Landroid/graphics/Rect;

    .line 87
    new-instance v6, Lmiui/widget/SlidingButton$1;

    invoke-direct {v6, p0}, Lmiui/widget/SlidingButton$1;-><init>(Lmiui/widget/SlidingButton;)V

    iput-object v6, p0, Lmiui/widget/SlidingButton;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 133
    sget-object v6, Lcom/miui/internal/R$styleable;->SlidingButton:[I

    sget v7, Lcom/miui/internal/R$style;->Widget_SlidingButton:I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v9}, Lmiui/widget/SlidingButton;->setDrawingCacheEnabled(Z)V

    .line 138
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lmiui/widget/SlidingButton;->mTapThreshold:I

    .line 140
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/Drawable;

    .line 141
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lmiui/widget/SlidingButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 142
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lmiui/widget/SlidingButton;->mSliderOff:Landroid/graphics/drawable/Drawable;

    .line 143
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Lmiui/widget/SlidingButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v6, p0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Lmiui/widget/SlidingButton;->mWidth:I

    .line 146
    iget-object v6, p0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iput v6, p0, Lmiui/widget/SlidingButton;->mHeight:I

    .line 148
    iget v6, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget-object v7, p0, Lmiui/widget/SlidingButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    .line 149
    iput v9, p0, Lmiui/widget/SlidingButton;->mSliderPositionStart:I

    .line 150
    iget v6, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v7, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    sub-int/2addr v6, v7

    iput v6, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    .line 151
    iget v6, p0, Lmiui/widget/SlidingButton;->mSliderPositionStart:I

    iput v6, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    .line 153
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 154
    .local v4, "valueSlideOff":Landroid/util/TypedValue;
    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 155
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 156
    .local v5, "valueSlideOn":Landroid/util/TypedValue;
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 157
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 158
    .local v2, "slideOff":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iget v7, p0, Lmiui/widget/SlidingButton;->mWidth:I

    mul-int/lit8 v7, v7, 0x2

    iget v8, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    sub-int/2addr v7, v8

    iget v8, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-static {v6, v7, v8, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lmiui/widget/SlidingButton;->mBarOff:Landroid/graphics/Bitmap;

    .line 162
    iget v6, v4, Landroid/util/TypedValue;->type:I

    iget v7, v5, Landroid/util/TypedValue;->type:I

    if-ne v6, v7, :cond_0

    iget v6, v4, Landroid/util/TypedValue;->data:I

    iget v7, v5, Landroid/util/TypedValue;->data:I

    if-ne v6, v7, :cond_0

    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    if-ne v6, v7, :cond_0

    .line 165
    iget-object v6, p0, Lmiui/widget/SlidingButton;->mBarOff:Landroid/graphics/Bitmap;

    iput-object v6, p0, Lmiui/widget/SlidingButton;->mBarOn:Landroid/graphics/Bitmap;

    .line 173
    :goto_0
    iget-object v6, p0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v8, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 175
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 176
    .local v1, "maskDrawable":Landroid/graphics/drawable/Drawable;
    iget v6, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v7, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v1, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 177
    invoke-direct {p0, v1}, Lmiui/widget/SlidingButton;->convertToAlphaMask(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lmiui/widget/SlidingButton;->mMask:Landroid/graphics/Bitmap;

    .line 179
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lmiui/widget/SlidingButton;->mBarOffPaint:Landroid/graphics/Paint;

    .line 180
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lmiui/widget/SlidingButton;->mBarOnPaint:Landroid/graphics/Paint;

    .line 181
    iget-object v6, p0, Lmiui/widget/SlidingButton;->mBarOnPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 182
    iget-object v6, p0, Lmiui/widget/SlidingButton;->mBarOffPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 183
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    return-void

    .line 167
    .end local v1    # "maskDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 168
    .local v3, "slidingOn":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iget v7, p0, Lmiui/widget/SlidingButton;->mWidth:I

    mul-int/lit8 v7, v7, 0x2

    iget v8, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    sub-int/2addr v7, v8

    iget v8, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-static {v6, v7, v8, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lmiui/widget/SlidingButton;->mBarOn:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method static synthetic access$002(Lmiui/widget/SlidingButton;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lmiui/widget/SlidingButton;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 33
    iput-object p1, p0, Lmiui/widget/SlidingButton;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lmiui/widget/SlidingButton;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/SlidingButton;

    .prologue
    .line 33
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    return v0
.end method

.method static synthetic access$200(Lmiui/widget/SlidingButton;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/SlidingButton;

    .prologue
    .line 33
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    return v0
.end method

.method static synthetic access$300(Lmiui/widget/SlidingButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/SlidingButton;

    .prologue
    .line 33
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method private animateToState(Z)V
    .locals 10
    .param p1, "isChecked"    # Z

    .prologue
    const-wide/16 v8, 0xb4

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 304
    iget-object v3, p0, Lmiui/widget/SlidingButton;->mAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 305
    iget-object v3, p0, Lmiui/widget/SlidingButton;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 306
    const/4 v3, 0x0

    iput-object v3, p0, Lmiui/widget/SlidingButton;->mAnimator:Landroid/animation/Animator;

    .line 308
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 309
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const-string v5, "SliderOffset"

    new-array v6, v7, [I

    if-eqz p1, :cond_1

    iget v3, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    :goto_0
    aput v3, v6, v4

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 311
    .local v2, "slidingAnimator":Landroid/animation/ObjectAnimator;
    const-string v5, "SliderOnAlpha"

    new-array v6, v7, [I

    if-eqz p1, :cond_2

    const/16 v3, 0xff

    :goto_1
    aput v3, v6, v4

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 312
    .local v1, "scaleAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 313
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 314
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 315
    iput-object v0, p0, Lmiui/widget/SlidingButton;->mAnimator:Landroid/animation/Animator;

    .line 316
    iget-object v3, p0, Lmiui/widget/SlidingButton;->mAnimator:Landroid/animation/Animator;

    iget-object v4, p0, Lmiui/widget/SlidingButton;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 317
    iget-object v3, p0, Lmiui/widget/SlidingButton;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 318
    return-void

    .line 309
    .end local v1    # "scaleAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "slidingAnimator":Landroid/animation/ObjectAnimator;
    :cond_1
    iget v3, p0, Lmiui/widget/SlidingButton;->mSliderPositionStart:I

    goto :goto_0

    .restart local v2    # "slidingAnimator":Landroid/animation/ObjectAnimator;
    :cond_2
    move v3, v4

    .line 311
    goto :goto_1
.end method

.method private animateToggle()V
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lmiui/widget/SlidingButton;->animateToState(Z)V

    .line 301
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertToAlphaMask(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 195
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 196
    .local v1, "mask":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    return-object v1
.end method

.method private drawBar(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mBarOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mBarOn:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/SlidingButton;->mBarOnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mBarOffPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mBarOff:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/SlidingButton;->mBarOffPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 391
    :cond_1
    return-void
.end method

.method private moveSlider(I)V
    .locals 2
    .param p1, "offsetX"    # I

    .prologue
    .line 322
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    .line 323
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderPositionStart:I

    if-ge v0, v1, :cond_1

    .line 324
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderPositionStart:I

    iput v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    .line 328
    :cond_0
    :goto_0
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    invoke-virtual {p0, v0}, Lmiui/widget/SlidingButton;->setSliderOffset(I)V

    .line 329
    return-void

    .line 325
    :cond_1
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    if-le v0, v1, :cond_0

    .line 326
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    iput v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    .line 223
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 224
    return-void
.end method

.method public getSliderOffset()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    return v0
.end method

.method public getSliderOnAlpha()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOnAlpha:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v7, 0xff

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 363
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v5, v7

    .line 364
    .local v5, "alpha":I
    :goto_0
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lmiui/widget/SlidingButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 366
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mMask:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 368
    invoke-direct {p0, p1}, Lmiui/widget/SlidingButton;->drawBar(Landroid/graphics/Canvas;)V

    .line 370
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 372
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOnAlpha:I

    if-gt v0, v7, :cond_0

    .line 373
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mSliderOff:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v2, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    iget v3, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 374
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mSliderOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderOnAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 378
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v2, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    iget v3, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 379
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mSliderOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 381
    return-void

    .line 363
    .end local v5    # "alpha":I
    :cond_1
    const/16 v5, 0x7f

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 228
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lmiui/widget/SlidingButton;->setMeasuredDimension(II)V

    .line 229
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 233
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 290
    :goto_0
    return v6

    .line 237
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 238
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 239
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 240
    .local v3, "y":I
    iget-object v1, p0, Lmiui/widget/SlidingButton;->mTmpRect:Landroid/graphics/Rect;

    .line 241
    .local v1, "sliderFrame":Landroid/graphics/Rect;
    iget v4, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v7, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v8, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 243
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v6, v5

    .line 290
    goto :goto_0

    .line 245
    :pswitch_0
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    iput-boolean v5, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    .line 247
    invoke-virtual {p0, v5}, Lmiui/widget/SlidingButton;->setPressed(Z)V

    .line 251
    :goto_2
    iput v2, p0, Lmiui/widget/SlidingButton;->mLastX:I

    .line 252
    iput v2, p0, Lmiui/widget/SlidingButton;->mOriginalTouchPointX:I

    .line 253
    iput-boolean v6, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    goto :goto_1

    .line 249
    :cond_2
    iput-boolean v6, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    goto :goto_2

    .line 257
    :pswitch_1
    iget-boolean v4, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    if-eqz v4, :cond_1

    .line 258
    iget v4, p0, Lmiui/widget/SlidingButton;->mLastX:I

    sub-int v4, v2, v4

    invoke-direct {p0, v4}, Lmiui/widget/SlidingButton;->moveSlider(I)V

    .line 259
    iput v2, p0, Lmiui/widget/SlidingButton;->mLastX:I

    .line 260
    iget v4, p0, Lmiui/widget/SlidingButton;->mOriginalTouchPointX:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lmiui/widget/SlidingButton;->mTapThreshold:I

    if-lt v4, v6, :cond_1

    .line 261
    iput-boolean v5, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    .line 262
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 268
    :pswitch_2
    iget-boolean v4, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    if-eqz v4, :cond_5

    .line 269
    iget-boolean v4, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    if-nez v4, :cond_3

    .line 270
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateToggle()V

    .line 277
    :goto_3
    iput-boolean v6, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    .line 278
    iput-boolean v6, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    .line 279
    invoke-virtual {p0, v6}, Lmiui/widget/SlidingButton;->setPressed(Z)V

    goto :goto_1

    .line 272
    :cond_3
    iget v4, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v7, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    div-int/lit8 v7, v7, 0x2

    if-lt v4, v7, :cond_4

    move v4, v5

    :goto_4
    invoke-direct {p0, v4}, Lmiui/widget/SlidingButton;->animateToState(Z)V

    goto :goto_3

    :cond_4
    move v4, v6

    goto :goto_4

    .line 275
    :cond_5
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateToggle()V

    goto :goto_3

    .line 283
    :pswitch_3
    iput-boolean v6, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    .line 284
    iput-boolean v6, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    .line 285
    invoke-virtual {p0, v6}, Lmiui/widget/SlidingButton;->setPressed(Z)V

    .line 286
    iget v4, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v7, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    div-int/lit8 v7, v7, 0x2

    if-lt v4, v7, :cond_6

    move v6, v5

    :cond_6
    invoke-direct {p0, v6}, Lmiui/widget/SlidingButton;->animateToState(Z)V

    goto :goto_1

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 218
    return-void
.end method

.method public setChecked(Z)V
    .locals 5
    .param p1, "checked"    # Z

    .prologue
    const/16 v2, 0xff

    const/4 v3, 0x0

    .line 203
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    .line 205
    .local v0, "oldState":Z
    if-eq v0, p1, :cond_0

    .line 206
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    if-eqz p1, :cond_1

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderPositionEnd:I

    :goto_0
    iput v1, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    .line 208
    iget-object v4, p0, Lmiui/widget/SlidingButton;->mBarOnPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 209
    iget-object v4, p0, Lmiui/widget/SlidingButton;->mBarOffPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 210
    if-eqz p1, :cond_4

    :goto_3
    iput v2, p0, Lmiui/widget/SlidingButton;->mSliderOnAlpha:I

    .line 211
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 213
    :cond_0
    return-void

    .line 207
    :cond_1
    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderPositionStart:I

    goto :goto_0

    :cond_2
    move v1, v3

    .line 208
    goto :goto_1

    :cond_3
    move v1, v3

    .line 209
    goto :goto_2

    :cond_4
    move v2, v3

    .line 210
    goto :goto_3
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 190
    iput-object p1, p0, Lmiui/widget/SlidingButton;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 191
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 296
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 297
    return-void
.end method

.method public setSliderOffset(I)V
    .locals 0
    .param p1, "sliderOffset"    # I

    .prologue
    .line 342
    iput p1, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    .line 343
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 344
    return-void
.end method

.method public setSliderOnAlpha(I)V
    .locals 0
    .param p1, "sliderOnAlpha"    # I

    .prologue
    .line 357
    iput p1, p0, Lmiui/widget/SlidingButton;->mSliderOnAlpha:I

    .line 358
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 359
    return-void
.end method
