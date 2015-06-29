.class public Lmiui/widget/BubbleBgView;
.super Landroid/view/View;
.source "BubbleBgView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/BubbleBgView$Bubble;
    }
.end annotation


# static fields
.field private static final BUBBLE_DATA:[I

.field private static final CNT_DATA_PER:I = 0x8

.field private static final INDEX_COLOR:I = 0x7

.field private static final INDEX_MAXDX:I = 0x4

.field private static final INDEX_MAXDY:I = 0x6

.field private static final INDEX_MINDX:I = 0x3

.field private static final INDEX_MINDY:I = 0x5

.field private static final INDEX_RADIUS:I = 0x2

.field private static final INDEX_X:I = 0x0

.field private static final INDEX_Y:I = 0x1

.field private static final MSG_FLUSH:I = 0x1


# instance fields
.field private mBubbles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/widget/BubbleBgView$Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 38
    const/16 v0, 0x28

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/widget/BubbleBgView;->BUBBLE_DATA:[I

    .line 55
    :goto_0
    return-void

    .line 46
    :cond_0
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmiui/widget/BubbleBgView;->BUBBLE_DATA:[I

    goto :goto_0

    .line 38
    :array_0
    .array-data 4
        0x6e
        0xc5
        0xc6
        0x0
        0x1e
        -0x50
        0x14
        -0x25e7
        0xa0
        -0x20
        0xe6
        0x0
        0x1e
        0x0
        0x64
        0x33ff2200
        0x24f
        0x18
        0x16f
        0x0
        0x1e
        -0x32
        0x32
        -0x19000900
        0x325
        0x111
        0xad
        -0x1e
        0xa
        -0x50
        0x14
        0x7302c730
        0x146
        -0x44
        0x1a1
        0x0
        0x1e
        0x0
        0x32
        -0x2600a600
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0x27
        0xa1
        0x67
        0x0
        0x1e
        -0x50
        0x14
        -0x25e7
        0x67
        0x27
        0x72
        0x0
        0x1e
        0x0
        0x64
        0x33ff2200
        0x12e
        0x29
        0xd3
        0x0
        0x1e
        -0x32
        0x32
        -0x19000900
        0x19b
        0xa6
        0x77
        -0x1e
        0xa
        -0x50
        0x14
        0x7302c730
        0xab
        0xe2
        0xb5
        -0xf
        0xf
        -0x14
        0x1e
        0x4cf8f8f8
        0x87
        0x21
        0xc3
        0x0
        0x1e
        0x0
        0x32
        -0x2600a600
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/BubbleBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/BubbleBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/widget/BubbleBgView;->mBubbles:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/widget/BubbleBgView;->mPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Lmiui/widget/BubbleBgView$1;

    invoke-direct {v0, p0}, Lmiui/widget/BubbleBgView$1;-><init>(Lmiui/widget/BubbleBgView;)V

    iput-object v0, p0, Lmiui/widget/BubbleBgView;->mHandler:Landroid/os/Handler;

    .line 84
    invoke-direct {p0}, Lmiui/widget/BubbleBgView;->initBubbles()V

    .line 85
    iget-object v0, p0, Lmiui/widget/BubbleBgView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/BubbleBgView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/BubbleBgView;

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/widget/BubbleBgView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initBubbles()V
    .locals 12

    .prologue
    .line 89
    invoke-virtual {p0}, Lmiui/widget/BubbleBgView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    .line 90
    .local v10, "scale":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    sget-object v0, Lmiui/widget/BubbleBgView;->BUBBLE_DATA:[I

    array-length v0, v0

    if-ge v9, v0, :cond_0

    .line 91
    sget-object v0, Lmiui/widget/BubbleBgView;->BUBBLE_DATA:[I

    add-int/lit8 v11, v9, 0x0

    aget v0, v0, v11

    int-to-float v0, v0

    mul-float/2addr v0, v10

    float-to-int v1, v0

    .line 92
    .local v1, "x":I
    sget-object v0, Lmiui/widget/BubbleBgView;->BUBBLE_DATA:[I

    add-int/lit8 v11, v9, 0x1

    aget v0, v0, v11

    int-to-float v0, v0

    mul-float/2addr v0, v10

    float-to-int v2, v0

    .line 93
    .local v2, "y":I
    sget-object v0, Lmiui/widget/BubbleBgView;->BUBBLE_DATA:[I

    add-int/lit8 v11, v9, 0x2

    aget v0, v0, v11

    int-to-float v0, v0

    mul-float/2addr v0, v10

    float-to-int v3, v0

    .line 94
    .local v3, "r":I
    sget-object v0, Lmiui/widget/BubbleBgView;->BUBBLE_DATA:[I

    add-int/lit8 v11, v9, 0x3

    aget v4, v0, v11

    .line 95
    .local v4, "minDX":I
    sget-object v0, Lmiui/widget/BubbleBgView;->BUBBLE_DATA:[I

    add-int/lit8 v11, v9, 0x4

    aget v5, v0, v11

    .line 96
    .local v5, "maxDX":I
    sget-object v0, Lmiui/widget/BubbleBgView;->BUBBLE_DATA:[I

    add-int/lit8 v11, v9, 0x5

    aget v6, v0, v11

    .line 97
    .local v6, "minDY":I
    sget-object v0, Lmiui/widget/BubbleBgView;->BUBBLE_DATA:[I

    add-int/lit8 v11, v9, 0x6

    aget v7, v0, v11

    .line 98
    .local v7, "maxDY":I
    sget-object v0, Lmiui/widget/BubbleBgView;->BUBBLE_DATA:[I

    add-int/lit8 v11, v9, 0x7

    aget v8, v0, v11

    .line 99
    .local v8, "color":I
    iget-object v11, p0, Lmiui/widget/BubbleBgView;->mBubbles:Ljava/util/ArrayList;

    new-instance v0, Lmiui/widget/BubbleBgView$Bubble;

    invoke-direct/range {v0 .. v8}, Lmiui/widget/BubbleBgView$Bubble;-><init>(IIIIIIII)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v9, v9, 0x8

    goto :goto_0

    .line 101
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "r":I
    .end local v4    # "minDX":I
    .end local v5    # "maxDX":I
    .end local v6    # "minDY":I
    .end local v7    # "maxDY":I
    .end local v8    # "color":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v2, p0, Lmiui/widget/BubbleBgView;->mBubbles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/BubbleBgView$Bubble;

    .line 107
    .local v0, "b":Lmiui/widget/BubbleBgView$Bubble;
    iget-object v2, p0, Lmiui/widget/BubbleBgView;->mPaint:Landroid/graphics/Paint;

    # getter for: Lmiui/widget/BubbleBgView$Bubble;->color:I
    invoke-static {v0}, Lmiui/widget/BubbleBgView$Bubble;->access$100(Lmiui/widget/BubbleBgView$Bubble;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    # invokes: Lmiui/widget/BubbleBgView$Bubble;->getCurrentX()F
    invoke-static {v0}, Lmiui/widget/BubbleBgView$Bubble;->access$200(Lmiui/widget/BubbleBgView$Bubble;)F

    move-result v2

    # invokes: Lmiui/widget/BubbleBgView$Bubble;->getCurrentY()F
    invoke-static {v0}, Lmiui/widget/BubbleBgView$Bubble;->access$300(Lmiui/widget/BubbleBgView$Bubble;)F

    move-result v3

    # getter for: Lmiui/widget/BubbleBgView$Bubble;->radius:I
    invoke-static {v0}, Lmiui/widget/BubbleBgView$Bubble;->access$400(Lmiui/widget/BubbleBgView$Bubble;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lmiui/widget/BubbleBgView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 110
    .end local v0    # "b":Lmiui/widget/BubbleBgView$Bubble;
    :cond_0
    return-void
.end method
