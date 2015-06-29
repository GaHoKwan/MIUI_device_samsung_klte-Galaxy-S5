.class public Lcom/miui/internal/widget/DialogParentPanel;
.super Landroid/widget/LinearLayout;
.source "DialogParentPanel.java"


# instance fields
.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMaxHeightMajor:Landroid/util/TypedValue;

.field private mMaxHeightMinor:Landroid/util/TypedValue;

.field private mMaxWidthMajor:Landroid/util/TypedValue;

.field private mMaxWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v3, 0x7

    const/4 v2, 0x6

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object v1, Lcom/miui/internal/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 38
    iget-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 40
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 42
    iget-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 44
    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 46
    iget-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 48
    :cond_2
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 50
    iget-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 52
    :cond_3
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 54
    iget-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 56
    :cond_4
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 57
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 58
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 60
    :cond_5
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 61
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 62
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 64
    :cond_6
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 65
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 66
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 68
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method private getHeightMeasureSpec(I)I
    .locals 7
    .param p1, "heightMeasureSpec"    # I

    .prologue
    .line 84
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedHeightMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxHeightMajor:Landroid/util/TypedValue;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/DialogParentPanel;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result v0

    return v0
.end method

.method private getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I
    .locals 9
    .param p1, "measureSpec"    # I
    .param p2, "isWidth"    # Z
    .param p3, "fixedMinor"    # Landroid/util/TypedValue;
    .param p4, "fixedMajor"    # Landroid/util/TypedValue;
    .param p5, "maxMinor"    # Landroid/util/TypedValue;
    .param p6, "maxMajor"    # Landroid/util/TypedValue;

    .prologue
    const/high16 v8, -0x80000000

    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 92
    .local v2, "mode":I
    if-ne v2, v8, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/miui/internal/widget/DialogParentPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 95
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v7, :cond_1

    const/4 v0, 0x1

    .line 96
    .local v0, "isPortrait":Z
    :goto_0
    if-eqz v0, :cond_2

    move-object v4, p3

    .line 97
    .local v4, "typedValue":Landroid/util/TypedValue;
    :goto_1
    invoke-direct {p0, v1, v4, p2}, Lcom/miui/internal/widget/DialogParentPanel;->resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I

    move-result v5

    .line 99
    .local v5, "value":I
    if-lez v5, :cond_3

    .line 100
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 110
    .end local v0    # "isPortrait":Z
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "typedValue":Landroid/util/TypedValue;
    .end local v5    # "value":I
    :cond_0
    :goto_2
    return p1

    .line 95
    .restart local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "isPortrait":Z
    :cond_2
    move-object v4, p4

    .line 96
    goto :goto_1

    .line 102
    .restart local v4    # "typedValue":Landroid/util/TypedValue;
    .restart local v5    # "value":I
    :cond_3
    if-eqz v0, :cond_4

    move-object v4, p5

    .line 103
    :goto_3
    invoke-direct {p0, v1, v4, p2}, Lcom/miui/internal/widget/DialogParentPanel;->resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I

    move-result v5

    .line 104
    if-lez v5, :cond_0

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 106
    .local v3, "size":I
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_2

    .end local v3    # "size":I
    :cond_4
    move-object v4, p6

    .line 102
    goto :goto_3
.end method

.method private getWidthMeasureSpec(I)I
    .locals 7
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 79
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lcom/miui/internal/widget/DialogParentPanel;->mFixedWidthMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lcom/miui/internal/widget/DialogParentPanel;->mMaxWidthMajor:Landroid/util/TypedValue;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/DialogParentPanel;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result v0

    return v0
.end method

.method private resolveDimension(Landroid/util/DisplayMetrics;Landroid/util/TypedValue;Z)I
    .locals 4
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "typedValue"    # Landroid/util/TypedValue;
    .param p3, "isWidth"    # Z

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "value":I
    if-eqz p2, :cond_0

    .line 116
    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 117
    invoke-virtual {p2, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 119
    if-eqz p3, :cond_2

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v2

    .line 120
    .local v0, "base":F
    :goto_1
    invoke-virtual {p2, v0, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    float-to-int v1, v2

    goto :goto_0

    .line 119
    .end local v0    # "base":F
    :cond_2
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v2

    goto :goto_1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/DialogParentPanel;->getWidthMeasureSpec(I)I

    move-result p1

    .line 74
    invoke-direct {p0, p2}, Lcom/miui/internal/widget/DialogParentPanel;->getHeightMeasureSpec(I)I

    move-result p2

    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 76
    return-void
.end method
