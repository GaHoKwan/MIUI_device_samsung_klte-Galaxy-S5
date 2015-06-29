.class public Lmiui/widget/AlphabetFastIndexer;
.super Landroid/widget/ImageView;
.source "AlphabetFastIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;,
        Lmiui/widget/AlphabetFastIndexer$TextHilighter;
    }
.end annotation


# static fields
.field private static final FADE_DELAYED:I = 0x5dc

.field private static final MSG_FADE:I = 0x1

.field private static final STARRED_LABEL:Ljava/lang/String; = "\u2605"

.field public static final STARRED_TITLE:Ljava/lang/String; = "!"

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_NONE:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastAlphabetIndex:I

.field private mListScrollState:I

.field private mListView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private mOverlay:Landroid/widget/TextView;

.field private mOverlayBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlayLeftMargin:I

.field private mOverlayTextColor:I

.field private mOverlayTextSize:I

.field private mOverlayTopMargin:I

.field private mRefreshMaskRunnable:Ljava/lang/Runnable;

.field private mState:I

.field private mTextHilightAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

.field private mVerticalPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/AlphabetFastIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    .line 283
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v4, Lmiui/widget/AlphabetFastIndexer$1;

    invoke-direct {v4, p0}, Lmiui/widget/AlphabetFastIndexer$1;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    iput-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilightAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 115
    iput v5, p0, Lmiui/widget/AlphabetFastIndexer;->mListScrollState:I

    .line 117
    iput v5, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    .line 370
    new-instance v4, Lmiui/widget/AlphabetFastIndexer$2;

    invoke-direct {v4, p0}, Lmiui/widget/AlphabetFastIndexer$2;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    iput-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mRefreshMaskRunnable:Ljava/lang/Runnable;

    .line 774
    new-instance v4, Lmiui/widget/AlphabetFastIndexer$3;

    invoke-direct {v4, p0}, Lmiui/widget/AlphabetFastIndexer$3;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    iput-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 286
    .local v2, "res":Landroid/content/res/Resources;
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v4

    if-nez v4, :cond_2

    move v3, p3

    .line 287
    .local v3, "style":I
    :goto_0
    sget-object v4, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer:[I

    invoke-virtual {p1, p2, v4, v5, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 290
    .local v0, "a":Landroid/content/res/TypedArray;
    new-instance v4, Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    invoke-direct {v4, p1, v0}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    .line 292
    const/16 v4, 0x8

    sget v5, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_offset:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayLeftMargin:I

    .line 294
    const/16 v4, 0x9

    sget v5, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_padding_top:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTopMargin:I

    .line 296
    const/16 v4, 0xa

    sget v5, Lcom/miui/internal/R$dimen;->alphabet_indexer_overlay_text_size:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextSize:I

    .line 298
    const/16 v4, 0xb

    sget v5, Lcom/miui/internal/R$color;->alphabet_indexer_overlay_text_color:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextColor:I

    .line 300
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    .line 301
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 302
    sget v4, Lcom/miui/internal/R$drawable;->alphabet_indexer_overlay:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    .line 306
    :cond_0
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 307
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 308
    sget v4, Lcom/miui/internal/R$drawable;->alphabet_indexer_bg:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 310
    :cond_1
    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 312
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 313
    const/4 v4, 0x5

    iput v4, p0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    .line 314
    return-void

    .line 286
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "style":I
    :cond_2
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/widget/AlphabetFastIndexer;)Lmiui/widget/AlphabetFastIndexer$TextHilighter;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/AlphabetFastIndexer;

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/AlphabetFastIndexer;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/AlphabetFastIndexer;

    .prologue
    .line 76
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->refreshMask()V

    return-void
.end method

.method static synthetic access$202(Lmiui/widget/AlphabetFastIndexer;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/widget/AlphabetFastIndexer;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mListScrollState:I

    return p1
.end method

.method static synthetic access$300(Lmiui/widget/AlphabetFastIndexer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/AlphabetFastIndexer;

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    return-object v0
.end method

.method private drawThumbInternal(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    .line 759
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v1, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    const-string v1, "!"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "\u2605"

    .line 765
    :cond_2
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 767
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 768
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 769
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 770
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private getListOffset()I
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPostion(FLandroid/widget/SectionIndexer;)I
    .locals 9
    .param p1, "y"    # F
    .param p2, "indexer"    # Landroid/widget/SectionIndexer;

    .prologue
    const/4 v5, -0x1

    .line 616
    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v6

    .line 617
    .local v6, "sections":[Ljava/lang/Object;
    if-nez v6, :cond_1

    .line 645
    :cond_0
    :goto_0
    return v5

    .line 621
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v3

    .line 622
    .local v3, "paddingTop":I
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    .line 623
    .local v2, "paddingBottom":I
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getHeight()I

    move-result v7

    sub-int/2addr v7, v3

    sub-int v0, v7, v2

    .line 624
    .local v0, "contentHeight":I
    if-lez v0, :cond_0

    .line 627
    int-to-float v7, v3

    sub-float v7, p1, v7

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 628
    .local v4, "rate":F
    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v7, v7, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v1, v7

    .line 629
    .local v1, "needlePos":I
    if-ltz v1, :cond_0

    .line 631
    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v7, v7, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v7, v7

    if-lt v1, v7, :cond_2

    .line 632
    array-length v5, v6

    goto :goto_0

    .line 635
    :cond_2
    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v7, v7, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v6, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 636
    .local v5, "section":I
    if-gez v5, :cond_3

    .line 639
    neg-int v7, v5

    add-int/lit8 v5, v7, -0x2

    .line 642
    :cond_3
    if-gez v5, :cond_0

    .line 643
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 3

    .prologue
    .line 498
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v2, :cond_1

    .line 499
    const/4 v1, 0x0

    .line 512
    :cond_0
    :goto_0
    return-object v1

    .line 502
    :cond_1
    const/4 v1, 0x0

    .line 503
    .local v1, "si":Landroid/widget/SectionIndexer;
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 505
    :goto_1
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-nez v2, :cond_2

    instance-of v2, v0, Landroid/widget/WrapperListAdapter;

    if-eqz v2, :cond_2

    .line 506
    check-cast v0, Landroid/widget/WrapperListAdapter;

    invoke-interface {v0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .local v0, "la":Landroid/widget/ListAdapter;
    goto :goto_1

    .line 508
    .end local v0    # "la":Landroid/widget/ListAdapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 509
    check-cast v1, Landroid/widget/SectionIndexer;

    goto :goto_0
.end method

.method private refreshMask()V
    .locals 7

    .prologue
    .line 463
    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v5, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    const/4 v3, 0x0

    .line 468
    .local v3, "newIndex":I
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object v1

    .line 469
    .local v1, "indexer":Landroid/widget/SectionIndexer;
    if-eqz v1, :cond_2

    .line 470
    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v5

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getListOffset()I

    move-result v6

    sub-int v0, v5, v6

    .line 471
    .local v0, "first":I
    invoke-interface {v1, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v4

    .line 472
    .local v4, "section":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 473
    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v5

    aget-object v2, v5, v4

    check-cast v2, Ljava/lang/String;

    .line 474
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 475
    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v5, v5, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 480
    .end local v0    # "first":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "section":I
    :cond_2
    iget v5, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    if-eq v5, v3, :cond_0

    .line 481
    iput v3, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    .line 482
    const/4 v5, 0x1

    iget v6, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    if-eq v5, v6, :cond_3

    .line 483
    iget v5, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    invoke-direct {p0, v5}, Lmiui/widget/AlphabetFastIndexer;->slidTextHilightBackground(I)V

    .line 485
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->invalidate()V

    goto :goto_0
.end method

.method private scrollTo(Landroid/widget/SectionIndexer;I)V
    .locals 24
    .param p1, "indexer"    # Landroid/widget/SectionIndexer;
    .param p2, "position"    # I

    .prologue
    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    .line 653
    .local v2, "count":I
    invoke-direct/range {p0 .. p0}, Lmiui/widget/AlphabetFastIndexer;->getListOffset()I

    move-result v10

    .line 654
    .local v10, "listOffset":I
    const/high16 v21, 0x3f800000    # 1.0f

    int-to-float v0, v2

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x41000000    # 8.0f

    div-float v8, v21, v22

    .line 655
    .local v8, "fThreshold":F
    invoke-interface/range {p1 .. p1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v19

    .line 657
    .local v19, "sections":[Ljava/lang/Object;
    if-eqz v19, :cond_b

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_b

    .line 658
    move-object/from16 v0, v19

    array-length v11, v0

    .line 659
    .local v11, "nSections":I
    move/from16 v17, p2

    .line 660
    .local v17, "section":I
    move/from16 v0, v17

    if-lt v0, v11, :cond_0

    .line 661
    add-int/lit8 v17, v11, -0x1

    .line 663
    :cond_0
    move/from16 v4, v17

    .line 664
    .local v4, "exactSection":I
    move/from16 v18, v17

    .line 665
    .local v18, "sectionIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 672
    .local v9, "index":I
    move v12, v2

    .line 673
    .local v12, "nextIndex":I
    move v15, v9

    .line 674
    .local v15, "prevIndex":I
    move/from16 v16, v17

    .line 675
    .local v16, "prevSection":I
    add-int/lit8 v14, v17, 0x1

    .line 677
    .local v14, "nextSection":I
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 678
    add-int/lit8 v21, v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 682
    :cond_1
    if-ne v12, v9, :cond_3

    .line 684
    :cond_2
    if-lez v17, :cond_3

    .line 685
    add-int/lit8 v17, v17, -0x1

    .line 686
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v15

    .line 687
    if-eq v15, v9, :cond_4

    .line 688
    move/from16 v16, v17

    .line 689
    move/from16 v18, v17

    .line 706
    :cond_3
    :goto_0
    add-int/lit8 v13, v14, 0x1

    .line 708
    .local v13, "nextNextSection":I
    :goto_1
    if-ge v13, v11, :cond_5

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v21

    move/from16 v0, v21

    if-ne v0, v12, :cond_5

    .line 709
    add-int/lit8 v13, v13, 0x1

    .line 710
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 691
    .end local v13    # "nextNextSection":I
    :cond_4
    if-nez v17, :cond_2

    .line 696
    const/16 v18, 0x0

    .line 697
    goto :goto_0

    .line 715
    .restart local v13    # "nextNextSection":I
    :cond_5
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v7, v21, v22

    .line 716
    .local v7, "fPrev":F
    int-to-float v0, v14

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v6, v21, v22

    .line 717
    .local v6, "fNext":F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v3, v21, v22

    .line 718
    .local v3, "current":F
    move/from16 v0, v16

    if-ne v0, v4, :cond_8

    sub-float v21, v3, v7

    cmpg-float v21, v21, v8

    if-gez v21, :cond_8

    .line 719
    move v9, v15

    .line 724
    :goto_2
    add-int/lit8 v21, v2, -0x1

    move/from16 v0, v21

    if-le v9, v0, :cond_6

    .line 725
    add-int/lit8 v9, v2, -0x1

    .line 727
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 728
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    check-cast v5, Landroid/widget/ExpandableListView;

    .line 729
    .local v5, "expList":Landroid/widget/ExpandableListView;
    add-int v21, v9, v10

    invoke-static/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 750
    .end local v3    # "current":F
    .end local v4    # "exactSection":I
    .end local v5    # "expList":Landroid/widget/ExpandableListView;
    .end local v6    # "fNext":F
    .end local v7    # "fPrev":F
    .end local v11    # "nSections":I
    .end local v12    # "nextIndex":I
    .end local v13    # "nextNextSection":I
    .end local v14    # "nextSection":I
    .end local v15    # "prevIndex":I
    .end local v16    # "prevSection":I
    .end local v17    # "section":I
    :goto_3
    if-ltz v18, :cond_7

    if-eqz v19, :cond_7

    .line 751
    aget-object v21, v19, v18

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 752
    .local v20, "text":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 753
    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lmiui/widget/AlphabetFastIndexer;->drawThumbInternal(Ljava/lang/CharSequence;)V

    .line 756
    .end local v20    # "text":Ljava/lang/String;
    :cond_7
    return-void

    .line 721
    .restart local v3    # "current":F
    .restart local v4    # "exactSection":I
    .restart local v6    # "fNext":F
    .restart local v7    # "fPrev":F
    .restart local v11    # "nSections":I
    .restart local v12    # "nextIndex":I
    .restart local v13    # "nextNextSection":I
    .restart local v14    # "nextSection":I
    .restart local v15    # "prevIndex":I
    .restart local v16    # "prevSection":I
    .restart local v17    # "section":I
    :cond_8
    sub-int v21, v12, v15

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v22, v3, v7

    mul-float v21, v21, v22

    sub-float v22, v6, v7

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    add-int v9, v15, v21

    goto :goto_2

    .line 731
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/ListView;

    add-int v22, v9, v10

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_3

    .line 734
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    add-int v22, v9, v10

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_3

    .line 737
    .end local v3    # "current":F
    .end local v4    # "exactSection":I
    .end local v6    # "fNext":F
    .end local v7    # "fPrev":F
    .end local v9    # "index":I
    .end local v11    # "nSections":I
    .end local v12    # "nextIndex":I
    .end local v13    # "nextNextSection":I
    .end local v14    # "nextSection":I
    .end local v15    # "prevIndex":I
    .end local v16    # "prevSection":I
    .end local v17    # "section":I
    .end local v18    # "sectionIndex":I
    :cond_b
    mul-int v21, p2, v2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 738
    .restart local v9    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 739
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    check-cast v5, Landroid/widget/ExpandableListView;

    .line 740
    .restart local v5    # "expList":Landroid/widget/ExpandableListView;
    add-int v21, v9, v10

    invoke-static/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 747
    .end local v5    # "expList":Landroid/widget/ExpandableListView;
    :goto_4
    const/16 v18, -0x1

    .restart local v18    # "sectionIndex":I
    goto/16 :goto_3

    .line 742
    .end local v18    # "sectionIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/ListView;

    add-int v22, v9, v10

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_4

    .line 745
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    add-int v22, v9, v10

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_4
.end method

.method private slidTextHilightBackground(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    .line 789
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    if-nez v4, :cond_0

    .line 803
    :goto_0
    return-void

    .line 793
    :cond_0
    if-gez p1, :cond_1

    .line 794
    const/4 p1, 0x0

    .line 797
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v2

    .line 798
    .local v2, "top":I
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v5

    sub-int v1, v4, v5

    .line 799
    .local v1, "height":I
    int-to-float v4, v1

    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v5, v5, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    array-length v5, v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 801
    .local v0, "alphaHeight":F
    int-to-float v4, p1

    mul-float/2addr v4, v0

    int-to-float v5, v2

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v3, v4, v5

    .line 802
    .local v3, "ycenter":F
    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilightAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v3, v5}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->startSlidding(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0
.end method


# virtual methods
.method public attatch(Landroid/widget/AdapterView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "lv":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v6, 0x11

    const/4 v4, -0x2

    const/4 v5, 0x0

    .line 385
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-ne v3, p1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->detach()V

    .line 390
    if-eqz p1, :cond_0

    .line 394
    const/4 v3, -0x1

    iput v3, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    .line 396
    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    .line 397
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 399
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 402
    .local v2, "parent":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    .line 403
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 406
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayLeftMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 407
    iget v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTopMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 408
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 411
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 412
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 413
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 414
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 419
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 420
    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    or-int/lit8 v3, v3, 0x30

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 421
    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->refreshMask()V

    goto :goto_0
.end method

.method public decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 447
    new-instance v0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;

    invoke-direct {v0, p0, p1}, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;-><init>(Lmiui/widget/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V

    return-object v0
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 430
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 431
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    .line 432
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 433
    .local v0, "parent":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 435
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setVisibility(I)V

    .line 436
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    .line 438
    .end local v0    # "parent":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method public drawThumb(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 456
    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 458
    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->drawThumbInternal(Ljava/lang/CharSequence;)V

    .line 460
    :cond_0
    return-void
.end method

.method public getIndexerIntrinsicWidth()I
    .locals 2

    .prologue
    .line 493
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 494
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 344
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 346
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v9

    .line 347
    .local v9, "top":I
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getHeight()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v1

    sub-int v7, v0, v1

    .line 348
    .local v7, "height":I
    if-gtz v7, :cond_0

    .line 368
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    iget-object v8, v0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->mIndexes:[Ljava/lang/String;

    .line 353
    .local v8, "table":[Ljava/lang/String;
    int-to-float v0, v7

    array-length v1, v8

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 354
    .local v6, "alphaHeight":F
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v2

    .line 356
    .local v4, "x":F
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    invoke-virtual {v0}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->beginDraw()V

    .line 359
    int-to-float v0, v9

    div-float v1, v6, v2

    add-float v5, v0, v1

    .line 360
    .local v5, "y":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v0, v8

    if-ge v3, v0, :cond_1

    .line 362
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->isPressed()Z

    move-result v2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->draw(Landroid/graphics/Canvas;ZIFF)V

    .line 364
    add-float/2addr v5, v6

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 367
    :cond_1
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    invoke-virtual {v0, p1}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->endDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 338
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    .line 339
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mRefreshMaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 559
    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v5, :cond_0

    .line 560
    invoke-virtual {p0, v3}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    .line 597
    :goto_0
    return v3

    .line 564
    :cond_0
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object v1

    .line 565
    .local v1, "indexer":Landroid/widget/SectionIndexer;
    if-nez v1, :cond_1

    .line 566
    invoke-virtual {p0, v3}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 571
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 594
    :goto_1
    const/16 v3, 0x5dc

    invoke-virtual {p0, v3}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    :cond_2
    :goto_2
    move v3, v4

    .line 597
    goto :goto_0

    .line 573
    :pswitch_0
    iput v4, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    .line 574
    invoke-virtual {p0, v4}, Lmiui/widget/AlphabetFastIndexer;->setPressed(Z)V

    .line 577
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v5, v1}, Lmiui/widget/AlphabetFastIndexer;->getPostion(FLandroid/widget/SectionIndexer;)I

    move-result v2

    .line 578
    .local v2, "pos":I
    if-gez v2, :cond_3

    .line 579
    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v5, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_2

    .line 581
    :cond_3
    invoke-direct {p0, v1, v2}, Lmiui/widget/AlphabetFastIndexer;->scrollTo(Landroid/widget/SectionIndexer;I)V

    .line 582
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    .line 585
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mTextHilighter:Lmiui/widget/AlphabetFastIndexer$TextHilighter;

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v3, v5, v6}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->update(FF)V

    .line 586
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->postInvalidate()V

    goto :goto_2

    .line 592
    .end local v2    # "pos":I
    :pswitch_2
    iget v3, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    invoke-direct {p0, v3}, Lmiui/widget/AlphabetFastIndexer;->slidTextHilightBackground(I)V

    goto :goto_1

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOverlayOffset(II)V
    .locals 0
    .param p1, "leftMargin"    # I
    .param p2, "topMargin"    # I

    .prologue
    .line 331
    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayLeftMargin:I

    .line 332
    iput p2, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTopMargin:I

    .line 333
    return-void
.end method

.method public setVerticalPosition(Z)V
    .locals 1
    .param p1, "isRight"    # Z

    .prologue
    .line 322
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    .line 323
    return-void

    .line 322
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method stop(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 601
    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setPressed(Z)V

    .line 602
    iput v1, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    .line 603
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->postInvalidate()V

    .line 604
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 605
    if-gtz p1, :cond_1

    .line 606
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 611
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
