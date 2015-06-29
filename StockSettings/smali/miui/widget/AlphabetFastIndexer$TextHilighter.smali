.class Lmiui/widget/AlphabetFastIndexer$TextHilighter;
.super Ljava/lang/Object;
.source "AlphabetFastIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextHilighter"
.end annotation


# instance fields
.field mActivatedColor:I

.field mAnimator:Landroid/animation/ValueAnimator;

.field mBackground:Landroid/graphics/drawable/BitmapDrawable;

.field mBmpBuffer:Landroid/graphics/Bitmap;

.field mCanvas:Landroid/graphics/Canvas;

.field mClearMode:Landroid/graphics/Xfermode;

.field mDstInMode:Landroid/graphics/Xfermode;

.field mHilightColor:I

.field mIndexes:[Ljava/lang/String;

.field mNormalColor:I

.field mPaint:Landroid/graphics/Paint;

.field mSrcBounds:Landroid/graphics/Rect;

.field mTextBound:Landroid/graphics/Rect;

.field mTextBoundIntersect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mPaint:Landroid/graphics/Paint;

    .line 140
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBound:Landroid/graphics/Rect;

    .line 141
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mSrcBounds:Landroid/graphics/Rect;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 143
    .local v7, "res":Landroid/content/res/Resources;
    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    .line 144
    .local v8, "table":[Ljava/lang/CharSequence;
    if-eqz v8, :cond_0

    .line 145
    array-length v10, v8

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, "i":I
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/CharSequence;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 148
    .local v2, "cs":Ljava/lang/CharSequence;
    iget-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 147
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 151
    .end local v0    # "arr$":[Ljava/lang/CharSequence;
    .end local v2    # "cs":Ljava/lang/CharSequence;
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_0
    sget v10, Lcom/miui/internal/R$array;->alphabet_table:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    .line 154
    :cond_1
    const/4 v10, 0x2

    sget v11, Lcom/miui/internal/R$color;->alphabet_indexer_text_color:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    iput v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mNormalColor:I

    .line 156
    const/4 v10, 0x3

    sget v11, Lcom/miui/internal/R$color;->alphabet_indexer_activated_text_color:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    iput v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mActivatedColor:I

    .line 158
    const/4 v10, 0x4

    sget v11, Lcom/miui/internal/R$color;->alphabet_indexer_highlight_text_color:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    iput v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mHilightColor:I

    .line 161
    iget-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mPaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    sget v12, Lcom/miui/internal/R$dimen;->alphabet_indexer_text_size:I

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual {p2, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 163
    iget-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mPaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    iget-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 165
    iget-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 167
    const/4 v10, 0x5

    invoke-virtual {p2, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 168
    .local v9, "textHilightBackground":Landroid/graphics/drawable/Drawable;
    if-nez v9, :cond_2

    .line 169
    sget v10, Lcom/miui/internal/R$drawable;->alphabet_indexer_text_highlight_bg:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 171
    :cond_2
    if-eqz v9, :cond_3

    instance-of v10, v9, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_3

    .line 172
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9    # "textHilightBackground":Landroid/graphics/drawable/Drawable;
    iput-object v9, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 174
    iget-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mBackground:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 175
    .local v1, "bmp":Landroid/graphics/Bitmap;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mBmpBuffer:Landroid/graphics/Bitmap;

    .line 176
    new-instance v10, Landroid/graphics/Canvas;

    iget-object v11, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mBmpBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mCanvas:Landroid/graphics/Canvas;

    .line 178
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBoundIntersect:Landroid/graphics/Rect;

    .line 180
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mClearMode:Landroid/graphics/Xfermode;

    .line 181
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v10, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mDstInMode:Landroid/graphics/Xfermode;

    .line 184
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->update(FF)V

    .line 185
    return-void
.end method


# virtual methods
.method beginDraw()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 228
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mPaint:Landroid/graphics/Paint;

    .line 230
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    .line 231
    .local v1, "xfermode":Landroid/graphics/Xfermode;
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mClearMode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 232
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 233
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 236
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mBackground:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 237
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mBackground:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 239
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBoundIntersect:Landroid/graphics/Rect;

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 241
    return-void
.end method

.method draw(Landroid/graphics/Canvas;ZIFF)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "isPressed"    # Z
    .param p3, "pos"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 199
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mPaint:Landroid/graphics/Paint;

    .line 202
    .local v1, "paint":Landroid/graphics/Paint;
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    aget-object v4, v4, p3

    const-string v5, "!"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "\u2605"

    .line 204
    .local v0, "alpha":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mSrcBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 206
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mSrcBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v3, v4

    .line 207
    .local v3, "textWidth":F
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mSrcBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v2, v4

    .line 210
    .local v2, "textHeight":F
    if-eqz p2, :cond_2

    iget v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mActivatedColor:I

    :goto_1
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mSrcBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mSrcBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v9

    sub-float v4, p5, v4

    invoke-virtual {p1, v0, p4, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 214
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBoundIntersect:Landroid/graphics/Rect;

    div-float v5, v3, v9

    sub-float v5, p4, v5

    float-to-int v5, v5

    div-float v6, v2, v9

    sub-float v6, p5, v6

    float-to-int v6, v6

    div-float v7, v3, v9

    add-float/2addr v7, p4

    float-to-int v7, v7

    div-float v8, v2, v9

    add-float/2addr v8, p5

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr p4, v4

    .line 218
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr p5, v4

    .line 220
    iget v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mHilightColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mSrcBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mSrcBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v9

    sub-float v5, p5, v5

    invoke-virtual {v4, v0, p4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 223
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBoundIntersect:Landroid/graphics/Rect;

    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 225
    :cond_0
    return-void

    .line 202
    .end local v0    # "alpha":Ljava/lang/String;
    .end local v2    # "textHeight":F
    .end local v3    # "textWidth":F
    :cond_1
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    aget-object v0, v4, p3

    goto :goto_0

    .line 210
    .restart local v0    # "alpha":Ljava/lang/String;
    .restart local v2    # "textHeight":F
    .restart local v3    # "textWidth":F
    :cond_2
    iget v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mNormalColor:I

    goto :goto_1
.end method

.method endDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 246
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mBackground:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 247
    .local v0, "bgPaint":Landroid/graphics/Paint;
    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    .line 248
    .local v1, "xfermode":Landroid/graphics/Xfermode;
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mDstInMode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 249
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mBackground:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 250
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 253
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mBmpBuffer:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v4, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 254
    return-void
.end method

.method startSlidding(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 4
    .param p1, "ycenter"    # F
    .param p2, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 257
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 263
    :cond_0
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBound:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 264
    move v0, p1

    .line 270
    .local v0, "ystart":F
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mAnimator:Landroid/animation/ValueAnimator;

    .line 271
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 272
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 273
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 274
    return-void

    .line 267
    .end local v0    # "ystart":F
    :cond_1
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBound:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    .restart local v0    # "ystart":F
    goto :goto_0
.end method

.method update(FF)V
    .locals 7
    .param p1, "xcenter"    # F
    .param p2, "ycenter"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 188
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mBackground:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 189
    .local v1, "width":F
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mBackground:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 190
    .local v0, "height":F
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mTextBound:Landroid/graphics/Rect;

    sub-float v3, p1, v1

    add-float/2addr v3, v6

    float-to-int v3, v3

    sub-float v4, p2, v0

    float-to-int v4, v4

    add-float v5, p1, v1

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-float v6, p2, v0

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 194
    return-void
.end method
