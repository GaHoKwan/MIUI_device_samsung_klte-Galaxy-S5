.class Lmiui/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mHijackFocus:Z

.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 1153
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1154
    iput-boolean p2, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 1155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    .line 1156
    return-void
.end method

.method static synthetic access$502(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/widget/ListPopupWindow$DropDownListView;
    .param p1, "x1"    # Z

    .prologue
    .line 1106
    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method static synthetic access$600(Lmiui/widget/ListPopupWindow$DropDownListView;IZ)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/ListPopupWindow$DropDownListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 1106
    invoke-direct {p0, p1, p2}, Lmiui/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v0

    return v0
.end method

.method private lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v2, -0x1

    .line 1168
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1169
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return v2

    .line 1173
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1174
    .local v1, "count":I
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1175
    if-eqz p2, :cond_2

    .line 1176
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1177
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1178
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1181
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1182
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1183
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 1187
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 1190
    goto :goto_0

    .line 1192
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 1195
    goto :goto_0
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1232
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1212
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1222
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 1202
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final measureHeightOfChildrenCompact(IIIII)I
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 1266
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getListPaddingTop()I

    move-result v11

    .line 1267
    .local v11, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getListPaddingBottom()I

    move-result v10

    .line 1268
    .local v10, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getDividerHeight()I

    move-result v13

    .line 1269
    .local v13, "reportedDividerHeight":I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1271
    .local v5, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 1273
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1274
    add-int v12, v11, v10

    .line 1333
    :cond_0
    :goto_0
    return v12

    .line 1278
    :cond_1
    add-int v14, v11, v10

    .line 1279
    .local v14, "returnedHeight":I
    if-lez v13, :cond_5

    if-eqz v5, :cond_5

    move v6, v13

    .line 1284
    .local v6, "dividerHeight":I
    :goto_1
    const/4 v12, 0x0

    .line 1286
    .local v12, "prevHeightWithoutPartialChild":I
    const/4 v2, 0x0

    .line 1287
    .local v2, "child":Landroid/view/View;
    const/4 v15, 0x0

    .line 1288
    .local v15, "viewType":I
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 1289
    .local v4, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v4, :cond_9

    .line 1290
    invoke-interface {v1, v8}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    .line 1291
    .local v9, "newType":I
    if-eq v9, v15, :cond_2

    .line 1292
    const/4 v2, 0x0

    .line 1293
    move v15, v9

    .line 1295
    :cond_2
    move-object/from16 v0, p0

    invoke-interface {v1, v8, v2, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1299
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1300
    .local v3, "childHeight":I
    if-lez v3, :cond_6

    .line 1301
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1306
    .local v7, "heightMeasureSpec":I
    :goto_3
    move/from16 v0, p1

    invoke-virtual {v2, v0, v7}, Landroid/view/View;->measure(II)V

    .line 1308
    if-lez v8, :cond_3

    .line 1310
    add-int/2addr v14, v6

    .line 1313
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v14, v14, v16

    .line 1315
    move/from16 v0, p4

    if-lt v14, v0, :cond_7

    .line 1318
    if-ltz p5, :cond_4

    move/from16 v0, p5

    if-le v8, v0, :cond_4

    if-lez v12, :cond_4

    move/from16 v0, p4

    if-ne v14, v0, :cond_0

    :cond_4
    move/from16 v12, p4

    goto :goto_0

    .line 1279
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childHeight":I
    .end local v4    # "count":I
    .end local v6    # "dividerHeight":I
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "i":I
    .end local v9    # "newType":I
    .end local v12    # "prevHeightWithoutPartialChild":I
    .end local v15    # "viewType":I
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 1304
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "childHeight":I
    .restart local v4    # "count":I
    .restart local v6    # "dividerHeight":I
    .restart local v8    # "i":I
    .restart local v9    # "newType":I
    .restart local v12    # "prevHeightWithoutPartialChild":I
    .restart local v15    # "viewType":I
    :cond_6
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "heightMeasureSpec":I
    goto :goto_3

    .line 1326
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v8, v0, :cond_8

    .line 1327
    move v12, v14

    .line 1289
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v3    # "childHeight":I
    .end local v7    # "heightMeasureSpec":I
    .end local v9    # "newType":I
    :cond_9
    move v12, v14

    .line 1333
    goto :goto_0
.end method
