.class public Lcom/miui/internal/util/TaggingDrawableHelper;
.super Ljava/lang/Object;
.source "TaggingDrawableHelper.java"


# static fields
.field static CHILD_SEQUENCE_STATE:[I

.field private static final DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

.field private static final ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

.field private static final ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

.field private static final sRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    .line 37
    invoke-static {}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->get()Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    .line 39
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lmiui/R$attr;->children_sequence_state:I

    aput v2, v0, v1

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->CHILD_SEQUENCE_STATE:[I

    .line 44
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/miui/internal/util/TaggingDrawableHelper;->sRect:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static getOrientationState(Landroid/view/ViewGroup;IZ)I
    .locals 7
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "curPos"    # I
    .param p2, "isHorizontal"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    instance-of v4, p0, Lmiui/view/OnTaggingDrawableState;

    if-eqz v4, :cond_0

    move-object v1, p0

    .line 68
    check-cast v1, Lmiui/view/OnTaggingDrawableState;

    .line 69
    .local v1, "p":Lmiui/view/OnTaggingDrawableState;
    invoke-interface {v1, p0, p1, p2, v5}, Lmiui/view/OnTaggingDrawableState;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v2

    .line 70
    .local v2, "preEq":Z
    invoke-interface {v1, p0, p1, p2, v6}, Lmiui/view/OnTaggingDrawableState;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v0

    .line 76
    .end local v1    # "p":Lmiui/view/OnTaggingDrawableState;
    .local v0, "nextEq":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 77
    if-eqz v0, :cond_2

    .line 78
    if-eqz p2, :cond_1

    sget v3, Lmiui/R$attr;->state_middle_h:I

    .line 89
    .local v3, "state":I
    :goto_1
    return v3

    .line 72
    .end local v0    # "nextEq":Z
    .end local v2    # "preEq":Z
    .end local v3    # "state":I
    :cond_0
    invoke-static {p0, p1, p2, v5}, Lcom/miui/internal/util/TaggingDrawableHelper;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v2

    .line 73
    .restart local v2    # "preEq":Z
    invoke-static {p0, p1, p2, v6}, Lcom/miui/internal/util/TaggingDrawableHelper;->sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z

    move-result v0

    .restart local v0    # "nextEq":Z
    goto :goto_0

    .line 78
    :cond_1
    sget v3, Lmiui/R$attr;->state_middle_v:I

    goto :goto_1

    .line 80
    :cond_2
    if-eqz p2, :cond_3

    sget v3, Lmiui/R$attr;->state_last_h:I

    .restart local v3    # "state":I
    :goto_2
    goto :goto_1

    .end local v3    # "state":I
    :cond_3
    sget v3, Lmiui/R$attr;->state_last_v:I

    goto :goto_2

    .line 83
    :cond_4
    if-eqz v0, :cond_6

    .line 84
    if-eqz p2, :cond_5

    sget v3, Lmiui/R$attr;->state_first_h:I

    .restart local v3    # "state":I
    :goto_3
    goto :goto_1

    .end local v3    # "state":I
    :cond_5
    sget v3, Lmiui/R$attr;->state_first_v:I

    goto :goto_3

    .line 86
    :cond_6
    if-eqz p2, :cond_7

    sget v3, Lmiui/R$attr;->state_single_h:I

    .restart local v3    # "state":I
    :goto_4
    goto :goto_1

    .end local v3    # "state":I
    :cond_7
    sget v3, Lmiui/R$attr;->state_single_v:I

    goto :goto_4
.end method

.method public static initTagChildSequenceState(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V
    .locals 4
    .param p0, "vg"    # Landroid/view/ViewGroup;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/miui/internal/util/TaggingDrawableHelper;->CHILD_SEQUENCE_STATE:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 237
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 238
    .local v1, "value":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    sget-object v2, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {v2, p0, v1}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->setTagChildrenSequenceState(Landroid/view/ViewGroup;Z)V

    .line 240
    return-void
.end method

.method public static initViewSequenceStates(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lmiui/R$styleable;->DrawableStates:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 244
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lmiui/R$styleable;->DrawableStates:[I

    array-length v1, v5

    .line 245
    .local v1, "count":I
    sget v3, Lmiui/R$attr;->state_single_h:I

    .line 246
    .local v3, "stateH":I
    sget v4, Lmiui/R$attr;->state_single_v:I

    .line 247
    .local v4, "stateV":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 248
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    if-eqz v2, :cond_0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 253
    :cond_0
    sget-object v5, Lmiui/R$styleable;->DrawableStates:[I

    aget v3, v5, v2

    .line 247
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_2
    const/4 v5, 0x4

    if-eq v2, v5, :cond_3

    const/4 v5, 0x5

    if-eq v2, v5, :cond_3

    const/4 v5, 0x6

    if-eq v2, v5, :cond_3

    const/4 v5, 0x7

    if-ne v2, v5, :cond_1

    .line 258
    :cond_3
    sget-object v5, Lmiui/R$styleable;->DrawableStates:[I

    aget v4, v5, v2

    goto :goto_1

    .line 262
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 263
    sget-object v5, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v5, p0, v3}, Lcom/miui/internal/variable/Android_View_View_class;->setHorizontalState(Landroid/view/View;I)V

    .line 264
    sget-object v5, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v5, p0, v4}, Lcom/miui/internal/variable/Android_View_View_class;->setVerticalState(Landroid/view/View;I)V

    .line 265
    return-void
.end method

.method private static isSameBackground(Landroid/view/View;Landroid/view/View;)Z
    .locals 7
    .param p0, "v1"    # Landroid/view/View;
    .param p1, "v2"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 165
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v4, v5

    .line 180
    :cond_1
    :goto_0
    return v4

    .line 169
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 170
    .local v0, "d1":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 171
    .local v1, "d2":Landroid/graphics/drawable/Drawable;
    if-eq v0, v1, :cond_1

    .line 175
    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    move v4, v5

    .line 176
    goto :goto_0

    .line 178
    :cond_4
    sget-object v6, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v6, v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getId(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 179
    .local v2, "id1":I
    sget-object v6, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v6, v1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getId(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    .line 180
    .local v3, "id2":I
    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_1

    :cond_5
    move v4, v5

    goto :goto_0
.end method

.method public static onDrawableStateChange(Landroid/view/View;)V
    .locals 7
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 204
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 209
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v3, :cond_0

    .line 210
    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_0

    .line 211
    sget-object v3, Lcom/miui/internal/util/TaggingDrawableHelper;->sRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 212
    .local v2, "padding":Landroid/graphics/Rect;
    if-nez v2, :cond_2

    .line 213
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "padding":Landroid/graphics/Rect;
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 214
    .restart local v2    # "padding":Landroid/graphics/Rect;
    sget-object v3, Lcom/miui/internal/util/TaggingDrawableHelper;->sRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 216
    :cond_2
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 219
    :cond_3
    sget-object v3, Lcom/miui/internal/util/TaggingDrawableHelper;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v3, v1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 225
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 221
    :pswitch_0
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static sameWithNeighbour(Landroid/view/ViewGroup;IZZ)Z
    .locals 12
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "curPos"    # I
    .param p2, "isHorizontal"    # Z
    .param p3, "toNext"    # Z

    .prologue
    .line 108
    const/4 v9, 0x0

    .line 109
    .local v9, "same":Z
    instance-of v10, p0, Landroid/widget/AbsListView;

    if-eqz v10, :cond_9

    move-object v5, p0

    .line 110
    check-cast v5, Landroid/widget/AbsListView;

    .line 111
    .local v5, "p":Landroid/widget/AbsListView;
    instance-of v10, v5, Landroid/widget/GridView;

    if-eqz v10, :cond_1

    move-object v10, v5

    check-cast v10, Landroid/widget/GridView;

    invoke-virtual {v10}, Landroid/widget/GridView;->getNumColumns()I

    move-result v3

    .line 112
    .local v3, "numCols":I
    :goto_0
    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 113
    .local v1, "childCount":I
    if-eqz p2, :cond_3

    .line 114
    rem-int v7, p1, v3

    .line 115
    .local v7, "posInRow":I
    const/4 v10, 0x1

    if-eq v3, v10, :cond_0

    .line 116
    if-eqz p3, :cond_2

    .line 117
    add-int/lit8 v10, v7, 0x1

    if-ge v10, v3, :cond_0

    add-int/lit8 v10, p1, 0x1

    if-ge v10, v1, :cond_0

    .line 118
    invoke-virtual {v5, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    add-int/lit8 v11, p1, 0x1

    invoke-virtual {v5, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/internal/util/TaggingDrawableHelper;->isSameBackground(Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    .line 161
    .end local v1    # "childCount":I
    .end local v3    # "numCols":I
    .end local v5    # "p":Landroid/widget/AbsListView;
    .end local v7    # "posInRow":I
    :cond_0
    :goto_1
    return v9

    .line 111
    .restart local v5    # "p":Landroid/widget/AbsListView;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 121
    .restart local v1    # "childCount":I
    .restart local v3    # "numCols":I
    .restart local v7    # "posInRow":I
    :cond_2
    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_0

    .line 122
    invoke-virtual {v5, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    add-int/lit8 v11, p1, -0x1

    invoke-virtual {v5, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/internal/util/TaggingDrawableHelper;->isSameBackground(Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    goto :goto_1

    .line 127
    .end local v7    # "posInRow":I
    :cond_3
    invoke-virtual {v5}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v6

    .line 128
    .local v6, "pos":I
    invoke-virtual {v5}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 129
    .local v0, "a":Landroid/widget/Adapter;
    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    .line 131
    .local v2, "count":I
    if-eqz p3, :cond_6

    .line 132
    add-int v10, p1, v3

    if-ge v10, v1, :cond_4

    .line 133
    invoke-virtual {v5, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    add-int v11, p1, v3

    invoke-virtual {v5, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/internal/util/TaggingDrawableHelper;->isSameBackground(Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    goto :goto_1

    .line 134
    :cond_4
    add-int v10, p1, v3

    add-int/2addr v10, v6

    if-ge v10, v2, :cond_0

    .line 135
    add-int v10, p1, v6

    invoke-interface {v0, v10}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v10

    add-int v11, p1, v3

    add-int/2addr v11, v6

    invoke-interface {v0, v11}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v11

    if-ne v10, v11, :cond_5

    const/4 v9, 0x1

    :goto_2
    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 138
    :cond_6
    sub-int v10, p1, v3

    if-ltz v10, :cond_7

    .line 139
    invoke-virtual {v5, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    sub-int v11, p1, v3

    invoke-virtual {v5, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/internal/util/TaggingDrawableHelper;->isSameBackground(Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    goto :goto_1

    .line 140
    :cond_7
    sub-int v10, p1, v3

    add-int/2addr v10, v6

    if-ltz v10, :cond_0

    .line 141
    add-int v10, p1, v6

    invoke-interface {v0, v10}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v10

    sub-int v11, p1, v3

    add-int/2addr v11, v6

    invoke-interface {v0, v11}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v11

    if-ne v10, v11, :cond_8

    const/4 v9, 0x1

    :goto_3
    goto :goto_1

    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 146
    .end local v0    # "a":Landroid/widget/Adapter;
    .end local v1    # "childCount":I
    .end local v2    # "count":I
    .end local v3    # "numCols":I
    .end local v5    # "p":Landroid/widget/AbsListView;
    .end local v6    # "pos":I
    :cond_9
    const/4 v8, 0x0

    .line 147
    .local v8, "reLayoutDrawableInLinearLayout":Z
    instance-of v10, p0, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_c

    move-object v5, p0

    .line 148
    check-cast v5, Landroid/widget/LinearLayout;

    .line 149
    .local v5, "p":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    .line 150
    .local v4, "ori":I
    if-eqz p2, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    if-nez p2, :cond_c

    const/4 v10, 0x1

    if-ne v4, v10, :cond_c

    .line 151
    :cond_b
    const/4 v8, 0x1

    .line 157
    .end local v4    # "ori":I
    .end local v5    # "p":Landroid/widget/LinearLayout;
    :cond_c
    if-nez v8, :cond_d

    instance-of v10, p0, Landroid/widget/LinearLayout;

    if-nez v10, :cond_0

    if-eqz p2, :cond_0

    .line 158
    :cond_d
    invoke-static {p0, p1, p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->sameWithNeighbourInLinear(Landroid/view/ViewGroup;IZ)Z

    move-result v9

    goto/16 :goto_1
.end method

.method private static sameWithNeighbourInLinear(Landroid/view/ViewGroup;IZ)Z
    .locals 9
    .param p0, "p"    # Landroid/view/ViewGroup;
    .param p1, "curPos"    # I
    .param p2, "toNext"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x1

    .line 93
    if-eqz p2, :cond_2

    move v0, v6

    .line 94
    .local v0, "addition":I
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 95
    .local v2, "dest":I
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, "curView":Landroid/view/View;
    const/4 v5, 0x0

    .line 97
    .local v5, "v":Landroid/view/View;
    add-int v3, p1, v0

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_1

    .line 98
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 99
    .local v4, "temp":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_3

    .line 100
    move-object v5, v4

    .line 104
    .end local v4    # "temp":Landroid/view/View;
    :cond_1
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_4

    invoke-static {v5, v1}, Lcom/miui/internal/util/TaggingDrawableHelper;->isSameBackground(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_2
    return v6

    .end local v0    # "addition":I
    .end local v1    # "curView":Landroid/view/View;
    .end local v2    # "dest":I
    .end local v3    # "i":I
    .end local v5    # "v":Landroid/view/View;
    :cond_2
    move v0, v2

    .line 93
    goto :goto_0

    .line 97
    .restart local v0    # "addition":I
    .restart local v1    # "curView":Landroid/view/View;
    .restart local v2    # "dest":I
    .restart local v3    # "i":I
    .restart local v4    # "temp":Landroid/view/View;
    .restart local v5    # "v":Landroid/view/View;
    :cond_3
    add-int/2addr v3, v0

    goto :goto_1

    .line 104
    .end local v4    # "temp":Landroid/view/View;
    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public static tagChildSequenceState(Landroid/view/ViewGroup;)V
    .locals 7
    .param p0, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    sget-object v6, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {v6, p0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->getTagChildrenSequenceState(Landroid/view/ViewGroup;)Z

    move-result v5

    .line 48
    .local v5, "tagChildrenSequenceState":Z
    if-nez v5, :cond_1

    .line 61
    :cond_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 53
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 54
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 56
    const/4 v6, 0x1

    invoke-static {p0, v2, v6}, Lcom/miui/internal/util/TaggingDrawableHelper;->getOrientationState(Landroid/view/ViewGroup;IZ)I

    move-result v3

    .line 57
    .local v3, "stateH":I
    const/4 v6, 0x0

    invoke-static {p0, v2, v6}, Lcom/miui/internal/util/TaggingDrawableHelper;->getOrientationState(Landroid/view/ViewGroup;IZ)I

    move-result v4

    .line 58
    .local v4, "stateV":I
    invoke-static {v0, v3, v4}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagView(Landroid/view/View;II)V

    .line 53
    .end local v3    # "stateH":I
    .end local v4    # "stateV":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static tagView(Landroid/view/View;II)V
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "stateH"    # I
    .param p2, "stateV"    # I

    .prologue
    .line 184
    sget-object v6, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v6, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getHorizontalState(Landroid/view/View;)I

    move-result v4

    .line 185
    .local v4, "origH":I
    sget-object v6, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v6, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getVerticalState(Landroid/view/View;)I

    move-result v5

    .line 186
    .local v5, "origV":I
    if-ne v4, p1, :cond_0

    if-eq v5, p2, :cond_2

    .line 187
    :cond_0
    sget-object v6, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v6, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setHorizontalState(Landroid/view/View;I)V

    .line 188
    sget-object v6, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v6, p0, p2}, Lcom/miui/internal/variable/Android_View_View_class;->setVerticalState(Landroid/view/View;I)V

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 190
    .local v1, "oldPaddingLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 191
    .local v3, "oldPaddingTop":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 192
    .local v2, "oldPaddingRight":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 193
    .local v0, "oldPaddingBottom":I
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    if-ne v1, v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    if-ne v3, v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    if-ne v2, v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    if-eq v0, v6, :cond_2

    .line 197
    :cond_1
    sget-object v6, Lcom/miui/internal/util/TaggingDrawableHelper;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v6, p0}, Lcom/miui/internal/variable/Android_View_View_class;->relayout(Landroid/view/View;)V

    .line 200
    .end local v0    # "oldPaddingBottom":I
    .end local v1    # "oldPaddingLeft":I
    .end local v2    # "oldPaddingRight":I
    .end local v3    # "oldPaddingTop":I
    :cond_2
    return-void
.end method
