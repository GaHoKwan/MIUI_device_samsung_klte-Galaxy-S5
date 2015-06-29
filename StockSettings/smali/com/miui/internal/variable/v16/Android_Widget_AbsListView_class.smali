.class public Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;
.super Lcom/miui/internal/variable/Android_Widget_AbsListView_class;
.source "Android_Widget_AbsListView_class.java"


# static fields
.field private static final mListPadding:Lmiui/reflect/Field;


# instance fields
.field private mBottomLineResourceId:I

.field private mListLocation:[I

.field private mShouldDrawCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/widget/AbsListView;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mListPadding"

    const-class v2, Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mListPadding:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 24
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Widget_AbsListView_class;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mBottomLineResourceId:I

    .line 32
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mSplitLocation:[I

    .line 34
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mListLocation:[I

    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mShouldDrawCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private drawBorder(Landroid/widget/AbsListView;Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 77
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mShouldDrawCache:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 78
    .local v3, "cache":Ljava/lang/Boolean;
    const/4 v11, 0x0

    .line 79
    .local v11, "shouldDrawBottomLine":Z
    if-nez v3, :cond_3

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getRootView()Landroid/view/View;

    move-result-object v14

    sget v15, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 82
    .local v12, "splitBar":Landroid/view/View;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v14

    if-eqz v14, :cond_0

    .line 83
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mSplitLocation:[I

    invoke-virtual {v12, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 84
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mListLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getLocationInWindow([I)V

    .line 85
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mSplitLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mListLocation:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    if-gt v14, v15, :cond_2

    const/4 v11, 0x1

    .line 89
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mShouldDrawCache:Ljava/util/WeakHashMap;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v12    # "splitBar":Landroid/view/View;
    :goto_1
    if-nez v11, :cond_4

    .line 128
    :cond_1
    :goto_2
    return-void

    .line 85
    .restart local v12    # "splitBar":Landroid/view/View;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 91
    .end local v12    # "splitBar":Landroid/view/View;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->getListBottomLine(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 99
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 101
    .local v4, "childCount":I
    if-lez v4, :cond_1

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v13

    .line 103
    .local v13, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    .line 104
    .local v7, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getScrollX()I

    move-result v9

    .line 105
    .local v9, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v10

    .line 107
    .local v10, "scrollY":I
    add-int/lit8 v14, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    sub-int/2addr v14, v10

    invoke-direct/range {p0 .. p1}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->getListPaddingBottom(Landroid/widget/AbsListView;)I

    move-result v15

    sub-int v15, v7, v15

    if-ge v14, v15, :cond_6

    const/4 v6, 0x1

    .line 110
    .local v6, "fit":Z
    :goto_3
    if-nez v6, :cond_1

    .line 111
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 112
    .local v1, "bottomLineHeight":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    sub-int v2, v7, v14

    .line 114
    .local v2, "bottomLineTop":I
    const/4 v14, 0x0

    add-int v15, v2, v1

    invoke-virtual {v5, v14, v2, v13, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    if-nez v9, :cond_5

    if-eqz v10, :cond_7

    .line 118
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 119
    .local v8, "restoreCount":I
    int-to-float v14, v9

    int-to-float v15, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    .line 107
    .end local v1    # "bottomLineHeight":I
    .end local v2    # "bottomLineTop":I
    .end local v6    # "fit":Z
    .end local v8    # "restoreCount":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 123
    .restart local v1    # "bottomLineHeight":I
    .restart local v2    # "bottomLineTop":I
    .restart local v6    # "fit":Z
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method private getListBottomLine(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    iget v1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mBottomLineResourceId:I

    if-nez v1, :cond_0

    .line 137
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 138
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$attr;->actionBarSplitTopLine:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    iput v1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mBottomLineResourceId:I

    .line 143
    .end local v0    # "typedValue":Landroid/util/TypedValue;
    :cond_0
    iget v1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mBottomLineResourceId:I

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mBottomLineResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getListPaddingBottom(Landroid/widget/AbsListView;)I
    .locals 2
    .param p1, "list"    # Landroid/widget/AbsListView;

    .prologue
    .line 131
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mListPadding:Lmiui/reflect/Field;

    invoke-virtual {v1, p1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 132
    .local v0, "rect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    return v1
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "draw"

    const-string v1, "(Landroid/graphics/Canvas;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 41
    const-string v0, "onLayout"

    const-string v1, "(ZIIII)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 42
    return-void
.end method

.method protected handle()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 46
    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->handleDraw(JLandroid/widget/AbsListView;Landroid/graphics/Canvas;)V

    move-object v1, p0

    move v6, v5

    move v7, v5

    move v8, v5

    move v9, v5

    .line 47
    invoke-virtual/range {v1 .. v9}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->handleOnLayout(JLandroid/widget/AbsListView;ZIIII)V

    .line 48
    return-void
.end method

.method protected handleDraw(JLandroid/widget/AbsListView;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/widget/AbsListView;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->originalDraw(JLandroid/widget/AbsListView;Landroid/graphics/Canvas;)V

    .line 52
    invoke-direct {p0, p3, p4}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->drawBorder(Landroid/widget/AbsListView;Landroid/graphics/Canvas;)V

    .line 53
    return-void
.end method

.method protected handleOnLayout(JLandroid/widget/AbsListView;ZIIII)V
    .locals 1
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/widget/AbsListView;
    .param p4, "changed"    # Z
    .param p5, "l"    # I
    .param p6, "t"    # I
    .param p7, "r"    # I
    .param p8, "b"    # I

    .prologue
    .line 57
    invoke-virtual {p0, p3}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->invalidateCache(Landroid/widget/AbsListView;)V

    .line 58
    invoke-virtual/range {p0 .. p8}, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->originalOnLayout(JLandroid/widget/AbsListView;ZIIII)V

    .line 59
    return-void
.end method

.method protected invalidateCache(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "listview"    # Landroid/widget/AbsListView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsListView_class;->mShouldDrawCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method protected originalDraw(JLandroid/widget/AbsListView;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/widget/AbsListView;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_AbsListView_class.originalDraw(long, AbsListView, Canvas)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected originalOnLayout(JLandroid/widget/AbsListView;ZIIII)V
    .locals 2
    .param p1, "cookie"    # J
    .param p3, "thiz"    # Landroid/widget/AbsListView;
    .param p4, "changed"    # Z
    .param p5, "l"    # I
    .param p6, "t"    # I
    .param p7, "r"    # I
    .param p8, "b"    # I

    .prologue
    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Widget_AbsListView_class.originalOnLayout(long, AbsListView, boolean, int, int, int, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
