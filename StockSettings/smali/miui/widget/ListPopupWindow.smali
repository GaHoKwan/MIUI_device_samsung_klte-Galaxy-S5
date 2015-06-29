.class public Lmiui/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ListPopupWindow$PopupScrollListener;,
        Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;,
        Lmiui/widget/ListPopupWindow$ResizePopupRunnable;,
        Lmiui/widget/ListPopupWindow$ListSelectorHider;,
        Lmiui/widget/ListPopupWindow$PopupDataSetObserver;,
        Lmiui/widget/ListPopupWindow$DropDownListView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lmiui/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Lmiui/widget/ArrowPopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lmiui/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const/4 v0, 0x0

    const v1, 0x10102ff

    invoke-direct {p0, p1, v0, v1}, Lmiui/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 175
    const v0, 0x10102ff

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mResizePopupRunnable:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    .line 105
    new-instance v0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mTouchInterceptor:Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 107
    new-instance v0, Lmiui/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$PopupScrollListener;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mScrollListener:Lmiui/widget/ListPopupWindow$PopupScrollListener;

    .line 109
    new-instance v0, Lmiui/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$ListSelectorHider;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mHideSelector:Lmiui/widget/ListPopupWindow$ListSelectorHider;

    .line 111
    const v0, 0x7fffffff

    iput v0, p0, Lmiui/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 121
    iput v3, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    .line 123
    iput v3, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    .line 131
    iput-boolean v2, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 133
    iput-boolean v2, p0, Lmiui/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 137
    iput v2, p0, Lmiui/widget/ListPopupWindow;->mPromptPosition:I

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 187
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 188
    new-instance v0, Lmiui/widget/ArrowPopupWindow;

    invoke-direct {v0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    .line 189
    return-void
.end method

.method static synthetic access$1000(Lmiui/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/ListPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$DropDownListView;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/ListPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/ListPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/ListPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mResizePopupRunnable:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method private buildDropDown()I
    .locals 21

    .prologue
    .line 900
    const/16 v17, 0x0

    .line 902
    .local v17, "otherHeights":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    if-nez v1, :cond_7

    .line 903
    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 911
    .local v8, "context":Landroid/content/Context;
    new-instance v1, Lmiui/widget/ListPopupWindow$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lmiui/widget/ListPopupWindow$1;-><init>(Lmiui/widget/ListPopupWindow;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmiui/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 921
    new-instance v3, Lmiui/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiui/widget/ListPopupWindow;->mModal:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v3, v8, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 923
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 925
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 928
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 929
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    new-instance v3, Lmiui/widget/ListPopupWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lmiui/widget/ListPopupWindow$2;-><init>(Lmiui/widget/ListPopupWindow;)V

    invoke-virtual {v1, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/ListPopupWindow;->mScrollListener:Lmiui/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v1, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_1

    .line 948
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 951
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 953
    .local v9, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 954
    .local v13, "hintView":Landroid/view/View;
    if-eqz v13, :cond_2

    .line 957
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 958
    .local v11, "hintContainer":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 960
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v12, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 962
    .local v12, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v1, :pswitch_data_0

    .line 974
    const-string v1, "ListPopupWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid hint position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 981
    .local v20, "widthSpec":I
    const/4 v10, 0x0

    .line 982
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v13, v0, v10}, Landroid/view/View;->measure(II)V

    .line 984
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 985
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v17, v1, v3

    .line 988
    move-object v9, v11

    .line 991
    .end local v10    # "heightSpec":I
    .end local v11    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v1, v9}, Lmiui/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    .line 1004
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "dropDownView":Landroid/view/ViewGroup;
    .end local v13    # "hintView":Landroid/view/View;
    :cond_3
    :goto_2
    const/16 v18, 0x0

    .line 1005
    .local v18, "padding":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v1}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1006
    .local v7, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_8

    .line 1007
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1008
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int v18, v1, v3

    .line 1012
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v1, :cond_4

    .line 1013
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1020
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v1}, Lmiui/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    const/4 v14, 0x1

    .line 1022
    .local v14, "ignoreBottomDecorations":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3, v14}, Lmiui/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v16

    .line 1025
    .local v16, "maxHeight":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_a

    .line 1026
    :cond_5
    add-int v1, v16, v18

    .line 1056
    :goto_5
    return v1

    .line 921
    .end local v7    # "background":Landroid/graphics/drawable/Drawable;
    .end local v14    # "ignoreBottomDecorations":Z
    .end local v16    # "maxHeight":I
    .end local v18    # "padding":I
    .restart local v8    # "context":Landroid/content/Context;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 964
    .restart local v9    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v11    # "hintContainer":Landroid/widget/LinearLayout;
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13    # "hintView":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 969
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 970
    invoke-virtual {v11, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 993
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "dropDownView":Landroid/view/ViewGroup;
    .end local v11    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "hintView":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v19, v0

    .line 994
    .local v19, "view":Landroid/view/View;
    if-eqz v19, :cond_3

    .line 995
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 997
    .restart local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v17, v1, v3

    goto/16 :goto_2

    .line 1016
    .end local v12    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "view":Landroid/view/View;
    .restart local v7    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "padding":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3

    .line 1020
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 1030
    .restart local v14    # "ignoreBottomDecorations":Z
    .restart local v16    # "maxHeight":I
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v1, :pswitch_data_1

    .line 1044
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1048
    .local v2, "childWidthSpec":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    const/4 v3, 0x0

    const/4 v4, -0x1

    sub-int v5, v16, v17

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lmiui/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildrenCompact(IIIII)I

    move-result v15

    .line 1052
    .local v15, "listContent":I
    if-lez v15, :cond_b

    .line 1053
    add-int v17, v17, v18

    .line 1056
    :cond_b
    add-int v1, v15, v17

    goto :goto_5

    .line 1032
    .end local v2    # "childWidthSpec":I
    .end local v15    # "listContent":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1036
    .restart local v2    # "childWidthSpec":I
    goto :goto_6

    .line 1038
    .end local v2    # "childWidthSpec":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1042
    .restart local v2    # "childWidthSpec":I
    goto :goto_6

    .line 962
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1030
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    .line 598
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 599
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 600
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 601
    check-cast v0, Landroid/view/ViewGroup;

    .line 602
    .local v0, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 605
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 652
    .local v0, "list":Lmiui/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 654
    const/4 v1, 0x1

    # setter for: Lmiui/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$502(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 656
    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    .line 658
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    .line 576
    return-void
.end method

.method public dismiss(Z)V
    .locals 2
    .param p1, "withAnimation"    # Z

    .prologue
    .line 582
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    .line 583
    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->removePromptView()V

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 585
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mResizePopupRunnable:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 586
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v9, 0x1

    .line 1077
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1078
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1080
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 1081
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1083
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1084
    .local v1, "bottomEdge":I
    if-eqz p3, :cond_0

    .line 1085
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1086
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1088
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .line 1089
    .local v3, "distanceToBottom":I
    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    .line 1092
    .local v4, "distanceToTop":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1093
    .local v6, "returnedHeight":I
    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v7}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1094
    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v7}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1095
    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 1098
    :cond_1
    return v6
.end method

.method public getPopupWindow()Lmiui/widget/ArrowPopupWindow;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lmiui/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    const/4 v0, 0x0

    .line 703
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    const-wide/high16 v0, -0x8000000000000000L

    .line 729
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 713
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    const/4 v0, -0x1

    .line 716
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    const/4 v0, 0x0

    .line 742
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 408
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 776
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 782
    const/16 v9, 0x3e

    if-eq p1, v9, :cond_8

    iget-object v9, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_0

    const/16 v9, 0x42

    if-eq p1, v9, :cond_8

    const/16 v9, 0x17

    if-eq p1, v9, :cond_8

    .line 786
    :cond_0
    iget-object v9, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 789
    .local v4, "curIndex":I
    iget-object v9, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v9}, Lmiui/widget/ArrowPopupWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_4

    move v2, v7

    .line 791
    .local v2, "below":Z
    :goto_0
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 794
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 795
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 797
    .local v6, "lastItem":I
    if-eqz v0, :cond_1

    .line 798
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 799
    .local v1, "allEnabled":Z
    if-eqz v1, :cond_5

    move v5, v8

    .line 801
    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 805
    .end local v1    # "allEnabled":Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    if-ne p1, v11, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_7

    if-ne p1, v12, :cond_7

    if-lt v4, v6, :cond_7

    .line 809
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->clearListSelection()V

    .line 810
    iget-object v8, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v8, v7}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 811
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    .line 859
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v4    # "curIndex":I
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :goto_3
    :sswitch_0
    return v7

    .restart local v4    # "curIndex":I
    :cond_4
    move v2, v8

    .line 789
    goto :goto_0

    .line 799
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "allEnabled":Z
    .restart local v2    # "below":Z
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_5
    iget-object v9, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    # invokes: Lmiui/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I
    invoke-static {v9, v8, v7}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$600(Lmiui/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v5

    goto :goto_1

    .line 801
    :cond_6
    iget-object v9, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    # invokes: Lmiui/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I
    invoke-static {v9, v10, v8}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$600(Lmiui/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v6

    goto :goto_2

    .line 816
    .end local v1    # "allEnabled":Z
    :cond_7
    iget-object v9, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    # setter for: Lmiui/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v9, v8}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$502(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 819
    iget-object v9, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9, p1, p2}, Lmiui/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 824
    .local v3, "consumed":Z
    if-eqz v3, :cond_9

    .line 827
    iget-object v9, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 832
    iget-object v9, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Lmiui/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 833
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    .line 835
    sparse-switch p1, :sswitch_data_0

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v3    # "consumed":Z
    .end local v4    # "curIndex":I
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :cond_8
    move v7, v8

    .line 859
    goto :goto_3

    .line 845
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "below":Z
    .restart local v3    # "consumed":Z
    .restart local v4    # "curIndex":I
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_9
    if-eqz v2, :cond_a

    if-ne p1, v12, :cond_a

    .line 848
    if-ne v4, v6, :cond_8

    goto :goto_3

    .line 851
    :cond_a
    if-nez v2, :cond_8

    if-ne p1, v11, :cond_8

    if-ne v4, v5, :cond_8

    goto :goto_3

    .line 835
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 874
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    .line 875
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1, p1, p2}, Lmiui/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 876
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 877
    sparse-switch p1, :sswitch_data_0

    .line 889
    .end local v0    # "consumed":Z
    :cond_0
    :goto_0
    return v0

    .line 883
    .restart local v0    # "consumed":Z
    :sswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    goto :goto_0

    .line 889
    .end local v0    # "consumed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 877
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public performItemClick(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 684
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 686
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 687
    .local v1, "list":Lmiui/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 688
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 689
    .local v6, "adapter":Landroid/widget/ListAdapter;
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 691
    .end local v1    # "list":Lmiui/widget/ListPopupWindow$DropDownListView;
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    .line 693
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 205
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 206
    new-instance v0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 210
    :cond_0
    :goto_0
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 211
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    :cond_2
    return-void

    .line 207
    :cond_3
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 382
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 383
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setAnimationStyle(I)V

    .line 364
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 345
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 445
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v1}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 446
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 447
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 448
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 298
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 273
    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 274
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 467
    iput p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    .line 468
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 398
    iput p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 399
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 628
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 629
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 760
    iput p1, p0, Lmiui/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 761
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 329
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 330
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .prologue
    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mModal:Z

    .line 262
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setFocusable(Z)V

    .line 263
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 594
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 595
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 478
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 479
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 489
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 490
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 240
    iput p1, p0, Lmiui/widget/ListPopupWindow;->mPromptPosition:I

    .line 241
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;

    .prologue
    .line 499
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 500
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->removePromptView()V

    .line 503
    :cond_0
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 504
    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    .line 507
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 637
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    .line 638
    .local v0, "list":Lmiui/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 639
    const/4 v1, 0x0

    # setter for: Lmiui/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$502(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 640
    invoke-virtual {v0, p1}, Lmiui/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 641
    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    .line 645
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setSoftInputMode(I)V

    .line 321
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 417
    iput p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 419
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 435
    iput p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    .line 436
    return-void
.end method

.method public show()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, -0x2

    const/4 v7, -0x1

    .line 521
    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->buildDropDown()I

    move-result v6

    .line 523
    .local v6, "height":I
    const/4 v4, 0x0

    .line 524
    .local v4, "widthSpec":I
    const/4 v5, 0x0

    .line 526
    .local v5, "heightSpec":I
    iget v2, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v7, :cond_1

    .line 527
    const/4 v4, -0x1

    .line 536
    :goto_0
    iget v2, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v2, v7, :cond_3

    .line 537
    const/4 v5, -0x1

    .line 546
    :goto_1
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v2}, Lmiui/widget/ArrowPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 547
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    iget-boolean v3, p0, Lmiui/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Lmiui/widget/ArrowPopupWindow;->setOutsideTouchable(Z)V

    .line 549
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lmiui/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/ArrowPopupWindow;->update(Landroid/view/View;IIII)V

    .line 569
    :cond_0
    :goto_3
    return-void

    .line 529
    :cond_1
    iget v2, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v8, :cond_2

    .line 530
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/widget/ArrowPopupWindow;->setWidth(I)V

    goto :goto_0

    .line 532
    :cond_2
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    iget v3, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-virtual {v2, v3}, Lmiui/widget/ArrowPopupWindow;->setWidth(I)V

    goto :goto_0

    .line 539
    :cond_3
    iget v2, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v2, v8, :cond_4

    .line 540
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v2, v6}, Lmiui/widget/ArrowPopupWindow;->setHeight(I)V

    goto :goto_1

    .line 542
    :cond_4
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    iget v3, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    invoke-virtual {v2, v3}, Lmiui/widget/ArrowPopupWindow;->setHeight(I)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 547
    goto :goto_2

    .line 552
    :cond_6
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v2, v4, v5}, Lmiui/widget/ArrowPopupWindow;->setWindowLayoutMode(II)V

    .line 556
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    iget-boolean v3, p0, Lmiui/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_9

    :goto_4
    invoke-virtual {v2, v0}, Lmiui/widget/ArrowPopupWindow;->setOutsideTouchable(Z)V

    .line 557
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mTouchInterceptor:Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 558
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lmiui/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v3}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    .line 560
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v7}, Lmiui/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 562
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 563
    :cond_7
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->clearListSelection()V

    .line 565
    :cond_8
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mHideSelector:Lmiui/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_9
    move v0, v1

    .line 556
    goto :goto_4
.end method
