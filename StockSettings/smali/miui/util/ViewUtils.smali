.class public Lmiui/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static final DRAWABLE_MAX_LEVEL:I = 0x2710

.field private static final StateListDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

.field static final TAG:Ljava/lang/String; = "ViewUtils"

.field private static final ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

.field private static final ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    move-result-object v0

    sput-object v0, Lmiui/util/ViewUtils;->StateListDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    .line 36
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    sput-object v0, Lmiui/util/ViewUtils;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    .line 39
    invoke-static {}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->get()Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    move-result-object v0

    sput-object v0, Lmiui/util/ViewUtils;->ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private static addMask(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "src"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mask"    # Landroid/graphics/drawable/Drawable;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 269
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    .line 280
    .end local p1    # "src":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object p1

    .line 273
    .restart local p1    # "src":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 275
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v4, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 276
    const/16 v2, 0x2710

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 277
    invoke-virtual {p1, v4, v4, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 278
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 279
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 280
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "src":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static containsPoint(Landroid/view/View;II)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBackgroundHeight(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 109
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getBackgroundWidth(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 121
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 124
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getContentRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 63
    return-void
.end method

.method public static getHorizontalState(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 134
    sget-object v0, Lmiui/util/ViewUtils;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getHorizontalState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getTagChildrenSequenceState(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 179
    sget-object v0, Lmiui/util/ViewUtils;->ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->getTagChildrenSequenceState(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method public static getVerticalState(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 144
    sget-object v0, Lmiui/util/ViewUtils;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/Android_View_View_class;->getVerticalState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static intersectsWith(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setHorizontalState(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "state"    # I

    .prologue
    .line 157
    sget-object v0, Lmiui/util/ViewUtils;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setHorizontalState(Landroid/view/View;I)V

    .line 158
    return-void
.end method

.method public static setTagChildrenSequenceState(Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "tagChildrenSequenceState"    # Z

    .prologue
    .line 192
    sget-object v0, Lmiui/util/ViewUtils;->ViewGroupClass:Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->setTagChildrenSequenceState(Landroid/view/ViewGroup;Z)V

    .line 193
    return-void
.end method

.method public static setVerticalState(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "state"    # I

    .prologue
    .line 170
    sget-object v0, Lmiui/util/ViewUtils;->ViewClass:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {v0, p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->setVerticalState(Landroid/view/View;I)V

    .line 171
    return-void
.end method

.method public static tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 25
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "src"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mask"    # Landroid/graphics/drawable/Drawable;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "indeterminate"    # Z

    .prologue
    .line 201
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v2, :cond_0

    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 203
    :cond_0
    invoke-static/range {p0 .. p4}, Lmiui/util/ViewUtils;->addMask(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 204
    .local v23, "wrapper":Landroid/graphics/drawable/Drawable;
    new-instance v24, Landroid/graphics/drawable/ClipDrawable;

    const/4 v2, 0x3

    const/4 v4, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .end local v23    # "wrapper":Landroid/graphics/drawable/Drawable;
    .local v24, "wrapper":Landroid/graphics/drawable/Drawable;
    move-object/from16 v23, v24

    .line 265
    .end local v24    # "wrapper":Landroid/graphics/drawable/Drawable;
    .restart local v23    # "wrapper":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    return-object v23

    .line 205
    .end local v23    # "wrapper":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v2, :cond_3

    .line 206
    invoke-static/range {p0 .. p4}, Lmiui/util/ViewUtils;->addMask(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 207
    .restart local v23    # "wrapper":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_1

    .line 208
    new-instance v24, Landroid/graphics/drawable/ClipDrawable;

    const/4 v2, 0x3

    const/4 v4, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .end local v23    # "wrapper":Landroid/graphics/drawable/Drawable;
    .restart local v24    # "wrapper":Landroid/graphics/drawable/Drawable;
    move-object/from16 v23, v24

    .end local v24    # "wrapper":Landroid/graphics/drawable/Drawable;
    .restart local v23    # "wrapper":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 210
    .end local v23    # "wrapper":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_8

    move-object/from16 v18, p1

    .line 211
    check-cast v18, Landroid/graphics/drawable/LayerDrawable;

    .line 212
    .local v18, "layer":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v12

    .line 213
    .local v12, "N":I
    new-array v0, v12, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    .line 215
    .local v21, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v12, :cond_6

    .line 216
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v16

    .line 217
    .local v16, "id":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 218
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    const v2, 0x102000d

    move/from16 v0, v16

    if-eq v0, v2, :cond_4

    const v2, 0x102000f

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    :cond_4
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 219
    invoke-static/range {v2 .. v7}, Lmiui/util/ViewUtils;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v21, v15

    .line 215
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 221
    :cond_5
    aput-object v3, v21, v15

    goto :goto_2

    .line 225
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v16    # "id":I
    :cond_6
    new-instance v20, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct/range {v20 .. v21}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 226
    .local v20, "out":Landroid/graphics/drawable/LayerDrawable;
    const/4 v15, 0x0

    :goto_3
    if-ge v15, v12, :cond_7

    .line 227
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v15, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 226
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 230
    :cond_7
    move-object/from16 v23, v20

    .line 231
    .restart local v23    # "wrapper":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v12    # "N":I
    .end local v15    # "i":I
    .end local v18    # "layer":Landroid/graphics/drawable/LayerDrawable;
    .end local v20    # "out":Landroid/graphics/drawable/LayerDrawable;
    .end local v21    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    .end local v23    # "wrapper":Landroid/graphics/drawable/Drawable;
    :cond_8
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_a

    move-object/from16 v17, p1

    .line 232
    check-cast v17, Landroid/graphics/drawable/StateListDrawable;

    .line 233
    .local v17, "in":Landroid/graphics/drawable/StateListDrawable;
    new-instance v20, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 234
    .local v20, "out":Landroid/graphics/drawable/StateListDrawable;
    sget-object v2, Lmiui/util/ViewUtils;->StateListDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v19

    .line 235
    .local v19, "numStates":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_4
    move/from16 v0, v19

    if-ge v15, v0, :cond_9

    .line 236
    sget-object v2, Lmiui/util/ViewUtils;->StateListDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v15}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 237
    .local v5, "temp":Landroid/graphics/drawable/Drawable;
    sget-object v2, Lmiui/util/ViewUtils;->StateListDrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v15}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v22

    .local v22, "set":[I
    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 238
    invoke-static/range {v4 .. v9}, Lmiui/util/ViewUtils;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 239
    .restart local v3    # "d":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 235
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 242
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "temp":Landroid/graphics/drawable/Drawable;
    .end local v22    # "set":[I
    :cond_9
    move-object/from16 v23, v20

    .line 243
    .restart local v23    # "wrapper":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .end local v15    # "i":I
    .end local v17    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v19    # "numStates":I
    .end local v20    # "out":Landroid/graphics/drawable/StateListDrawable;
    .end local v23    # "wrapper":Landroid/graphics/drawable/Drawable;
    :cond_a
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_d

    move-object/from16 v13, p1

    .line 244
    check-cast v13, Landroid/graphics/drawable/AnimationDrawable;

    .line 245
    .local v13, "anim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v12

    .line 246
    .restart local v12    # "N":I
    new-instance v20, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 247
    .local v20, "out":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 249
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_5
    if-ge v15, v12, :cond_b

    .line 250
    invoke-virtual {v13, v15}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-static/range {v6 .. v11}, Lmiui/util/ViewUtils;->tileifyForProgressBar(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 251
    .local v14, "frame":Landroid/graphics/drawable/Drawable;
    const/16 v2, 0x2710

    invoke-virtual {v14, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 252
    invoke-virtual {v13, v15}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 249
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 254
    .end local v14    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_b
    if-eqz p5, :cond_c

    .line 255
    const/16 v2, 0x2710

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 259
    :goto_6
    move-object/from16 v23, v20

    .line 260
    .restart local v23    # "wrapper":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 257
    .end local v23    # "wrapper":Landroid/graphics/drawable/Drawable;
    :cond_c
    invoke-virtual {v13}, Landroid/graphics/drawable/AnimationDrawable;->getLevel()I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    goto :goto_6

    .line 261
    .end local v12    # "N":I
    .end local v13    # "anim":Landroid/graphics/drawable/AnimationDrawable;
    .end local v15    # "i":I
    .end local v20    # "out":Landroid/graphics/drawable/AnimationDrawable;
    :cond_d
    const-string v2, "ViewUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown Drawable subclass, src="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move-object/from16 v23, p1

    .restart local v23    # "wrapper":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0
.end method
