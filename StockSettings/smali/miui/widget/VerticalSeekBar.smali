.class public Lmiui/widget/VerticalSeekBar;
.super Lmiui/widget/SeekBar;
.source "VerticalSeekBar.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/VerticalSeekBar;->mBounds:Landroid/graphics/Rect;

    .line 31
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 40
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 41
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    const/high16 v7, -0x3d4c0000    # -90.0f

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 47
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getWidth()I

    move-result v6

    .line 48
    .local v6, "w":I
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v2

    .line 49
    .local v2, "h":I
    sub-int v7, v2, v6

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v8

    add-int v3, v7, v8

    .line 50
    .local v3, "l":I
    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v8

    add-int v5, v7, v8

    .line 51
    .local v5, "t":I
    add-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingTop()I

    move-result v8

    sub-int v4, v7, v8

    .line 52
    .local v4, "r":I
    add-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    .line 53
    .local v0, "b":I
    invoke-virtual {v1, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawThumb(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 60
    .local v4, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_0

    .line 86
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v9, p0, Lmiui/widget/VerticalSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 65
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 66
    .local v6, "thumbWidth":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 67
    .local v5, "thumbHeight":I
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingRight()I

    move-result v10

    sub-int v8, v9, v10

    .line 68
    .local v8, "trackWidth":I
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 69
    .local v0, "available":I
    sub-int/2addr v0, v5

    .line 72
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getThumbOffset()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v0, v9

    .line 74
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getMax()I

    move-result v2

    .line 75
    .local v2, "max":I
    if-lez v2, :cond_1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getProgress()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v2

    div-float/2addr v10, v11

    sub-float v3, v9, v10

    .line 76
    .local v3, "scale":F
    :goto_1
    int-to-float v9, v0

    mul-float/2addr v9, v3

    float-to-int v7, v9

    .line 77
    .local v7, "top":I
    sub-int v9, v8, v6

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v10

    add-int v1, v9, v10

    .line 79
    .local v1, "left":I
    add-int v9, v1, v6

    add-int v10, v7, v5

    invoke-virtual {v4, v1, v7, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    iget-object v9, p0, Lmiui/widget/VerticalSeekBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 75
    .end local v1    # "left":I
    .end local v3    # "scale":F
    .end local v7    # "top":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lmiui/widget/VerticalSeekBar;->drawProgress(Landroid/graphics/Canvas;)V

    .line 36
    invoke-direct {p0, p1}, Lmiui/widget/VerticalSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 91
    .local v0, "ey":F
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v1, v3

    .line 92
    .local v1, "h":F
    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 93
    .local v2, "w":F
    div-float v3, v0, v1

    mul-float/2addr v3, v2

    invoke-virtual {p0}, Lmiui/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 94
    invoke-super {p0, p1}, Lmiui/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method
