.class public Lmiui/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lmiui/widget/NumberPicker$CustomEditText;,
        Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lmiui/widget/NumberPicker$SetSelectionCommand;,
        Lmiui/widget/NumberPicker$PressedStateHelper;,
        Lmiui/widget/NumberPicker$InputTextFilter;,
        Lmiui/widget/NumberPicker$Formatter;,
        Lmiui/widget/NumberPicker$OnScrollListener;,
        Lmiui/widget/NumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final MAX_HEIGHT:I = 0xca

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTION_DIVIDERS_DISTANCE:F = 45.0f

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x5

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field static final TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private MARGIN_LABEL_LEFT:I

.field private MARGIN_LABEL_TOP:I

.field private mAccessibilityNodeProvider:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedMaxTextWidth:F

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lmiui/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLabelPaint:Landroid/graphics/Paint;

.field private mLabelTextColor:I

.field private mLabelTextSize:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private mMaxFlingSpeedFactor:F

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lmiui/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lmiui/widget/NumberPicker$OnValueChangeListener;

.field private final mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private mSoundId:I

.field private mSoundPlayer:Landroid/media/SoundPool;

.field private mTextColorHilight:I

.field private mTextColorHint:I

.field private mTextMaxAscent:F

.field private mTextPadding:I

.field private final mTextSize:I

.field private mTextSizeHilight:I

.field private mTextSizeHint:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    sget v0, Lcom/miui/internal/R$layout;->numberpicker_layout:I

    sput v0, Lmiui/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 121
    new-instance v0, Lmiui/widget/NumberPicker$1;

    invoke-direct {v0}, Lmiui/widget/NumberPicker$1;-><init>()V

    sput-object v0, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    .line 408
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/NumberPicker;->PRESSED_STATE_SET:[I

    .line 1842
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 492
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 493
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 502
    sget v0, Lcom/miui/internal/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 503
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 513
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 111
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    .line 164
    const/16 v11, 0x190

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    .line 219
    const-wide/16 v12, 0x12c

    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 224
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lmiui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 229
    const/4 v11, 0x5

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    .line 249
    const/high16 v11, -0x80000000

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    .line 340
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mScrollState:I

    .line 391
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 458
    const/16 v11, 0x1e

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTextPadding:I

    .line 462
    const/16 v11, 0x19

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTextSizeHilight:I

    .line 464
    const/16 v11, 0xe

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    .line 466
    const/16 v11, 0xa

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mLabelTextSize:I

    .line 468
    const v11, -0x49ffd

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTextColorHilight:I

    .line 469
    const/high16 v11, 0x7f000000

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTextColorHint:I

    .line 475
    const v11, -0x49ffd

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mLabelTextColor:I

    .line 484
    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    .line 514
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v10, v11, Landroid/util/DisplayMetrics;->density:F

    .line 515
    .local v10, "scale":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v11

    if-eqz v11, :cond_0

    .line 516
    move-object/from16 v0, p0

    iget v11, v0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    .line 517
    move-object/from16 v0, p0

    iget v11, v0, Lmiui/widget/NumberPicker;->mTextSizeHilight:I

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTextSizeHilight:I

    .line 518
    move-object/from16 v0, p0

    iget v11, v0, Lmiui/widget/NumberPicker;->mLabelTextSize:I

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mLabelTextSize:I

    .line 519
    move-object/from16 v0, p0

    iget v11, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 520
    move-object/from16 v0, p0

    iget v11, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    .line 523
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lcom/miui/internal/R$styleable;->NumberPicker:[I

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v11, v0, v12, v1, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 524
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 525
    const/4 v11, 0x5

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/widget/NumberPicker;->mTextSizeHilight:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTextSizeHilight:I

    .line 526
    const/4 v11, 0x6

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    .line 527
    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/widget/NumberPicker;->mLabelTextSize:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mLabelTextSize:I

    .line 528
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/widget/NumberPicker;->mTextColorHilight:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTextColorHilight:I

    .line 529
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/widget/NumberPicker;->mTextColorHint:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTextColorHint:I

    .line 530
    const/4 v11, 0x4

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/widget/NumberPicker;->mLabelTextColor:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mLabelTextColor:I

    .line 531
    const/4 v11, 0x7

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/widget/NumberPicker;->mTextPadding:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTextPadding:I

    .line 533
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 535
    new-instance v11, Landroid/media/SoundPool;

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lmiui/widget/NumberPicker;->mSoundPlayer:Landroid/media/SoundPool;

    .line 536
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mSoundPlayer:Landroid/media/SoundPool;

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/miui/internal/R$raw;->numberpicker_value_change:I

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mSoundId:I

    .line 538
    sget v8, Lcom/miui/internal/R$layout;->numberpicker_layout:I

    .line 540
    .local v8, "layoutResId":I
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 542
    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v6, v11

    .line 545
    .local v6, "defSelectionDividerHeight":I
    move-object/from16 v0, p0

    iput v6, v0, Lmiui/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 547
    const/high16 v11, 0x42340000    # 45.0f

    mul-float/2addr v11, v10

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 549
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mMinHeight:I

    .line 551
    const/high16 v11, 0x434a0000    # 202.0f

    mul-float/2addr v11, v10

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mMaxHeight:I

    .line 553
    move-object/from16 v0, p0

    iget v11, v0, Lmiui/widget/NumberPicker;->mMinHeight:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/widget/NumberPicker;->mMaxHeight:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/widget/NumberPicker;->mMinHeight:I

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/widget/NumberPicker;->mMaxHeight:I

    if-le v11, v12, :cond_1

    .line 555
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "minHeight > maxHeight"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 558
    :cond_1
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mMinWidth:I

    .line 560
    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    .line 561
    move-object/from16 v0, p0

    iget v11, v0, Lmiui/widget/NumberPicker;->mMinWidth:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/widget/NumberPicker;->mMinWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    if-le v11, v12, :cond_2

    .line 563
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "minWidth > maxWidth"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 566
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lmiui/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 568
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/miui/internal/R$drawable;->virtual_button:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 570
    new-instance v11, Lmiui/widget/NumberPicker$PressedStateHelper;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lmiui/widget/NumberPicker$PressedStateHelper;-><init>(Lmiui/widget/NumberPicker;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    .line 577
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v11, :cond_5

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmiui/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 579
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 581
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v7, v8, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 584
    sget v11, Lcom/miui/internal/R$id;->numberpicker_input:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 585
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v12, Lmiui/widget/NumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lmiui/widget/NumberPicker$2;-><init>(Lmiui/widget/NumberPicker;)V

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v12, 0x1

    new-array v12, v12, [Landroid/text/InputFilter;

    const/4 v13, 0x0

    new-instance v14, Lmiui/widget/NumberPicker$InputTextFilter;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lmiui/widget/NumberPicker$InputTextFilter;-><init>(Lmiui/widget/NumberPicker;)V

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 600
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 602
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setVisibility(I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setGravity(I)V

    .line 604
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setScaleX(F)V

    .line 605
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 606
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/widget/NumberPicker;->mTextPadding:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->mTextPadding:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 609
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 610
    .local v5, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTouchSlop:I

    .line 611
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 612
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v11

    div-int/lit8 v11, v11, 0x8

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 614
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getTextSize()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTextSize:I

    .line 617
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 618
    .local v9, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 619
    sget-object v11, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 620
    move-object/from16 v0, p0

    iget v11, v0, Lmiui/widget/NumberPicker;->mTextSizeHilight:I

    int-to-float v11, v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 621
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 622
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 623
    .local v4, "colors":Landroid/content/res/ColorStateList;
    sget-object v11, Lmiui/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 624
    .local v3, "color":I
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 625
    move-object/from16 v0, p0

    iput-object v9, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 626
    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lmiui/widget/NumberPicker;->mTextMaxAscent:F

    .line 628
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 629
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 630
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 631
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/widget/NumberPicker;->mLabelTextColor:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 632
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/widget/NumberPicker;->mLabelTextSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 635
    new-instance v11, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v11, v12, v13, v14}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 636
    new-instance v11, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v14, 0x40200000    # 2.5f

    invoke-direct {v13, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v11, v12, v13}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 638
    invoke-direct/range {p0 .. p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    .line 641
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v11

    if-nez v11, :cond_3

    .line 642
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmiui/widget/NumberPicker;->setImportantForAccessibility(I)V

    .line 644
    :cond_3
    return-void

    .line 566
    .end local v3    # "color":I
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v5    # "configuration":Landroid/view/ViewConfiguration;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "paint":Landroid/graphics/Paint;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 577
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;

    .prologue
    .line 53
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/NumberPicker;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lmiui/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;

    .prologue
    .line 53
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1002(Lmiui/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1080(Lmiui/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1100(Lmiui/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;

    .prologue
    .line 53
    iget v0, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1200(Lmiui/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;

    .prologue
    .line 53
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1202(Lmiui/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1280(Lmiui/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1300(Lmiui/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;

    .prologue
    .line 53
    iget v0, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$1400(Lmiui/widget/NumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$1500(Lmiui/widget/NumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lmiui/widget/NumberPicker;

    .prologue
    .line 53
    iget-wide v0, p0, Lmiui/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1602(Lmiui/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$1700(Lmiui/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;

    .prologue
    .line 53
    iget v0, p0, Lmiui/widget/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$1800(Lmiui/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;

    .prologue
    .line 53
    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    return v0
.end method

.method static synthetic access$1900(Lmiui/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;

    .prologue
    .line 53
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$2000(Lmiui/widget/NumberPicker;I)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lmiui/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;

    .prologue
    .line 53
    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method static synthetic access$2200(Lmiui/widget/NumberPicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[C
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lmiui/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$600(Lmiui/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;

    .prologue
    .line 53
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lmiui/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/NumberPicker;

    .prologue
    .line 53
    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$900(Lmiui/widget/NumberPicker;II)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/NumberPicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lmiui/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1524
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1525
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1526
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1527
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1529
    :cond_0
    iput v1, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1530
    if-eqz p1, :cond_1

    .line 1531
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1535
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1543
    :goto_1
    return-void

    .line 1533
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1537
    :cond_2
    if-eqz p1, :cond_3

    .line 1538
    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1540
    :cond_3
    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1644
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1645
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1644
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1647
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1648
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1649
    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    .line 1651
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1652
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1653
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1660
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1661
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1662
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1676
    :goto_0
    return-void

    .line 1665
    :cond_0
    iget v3, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1666
    :cond_1
    const-string v2, ""

    .line 1675
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1668
    :cond_2
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1669
    iget v3, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1670
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1671
    goto :goto_1

    .line 1672
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1920
    iget v0, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 1921
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 1922
    iput v1, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1923
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 1924
    if-lez v4, :cond_2

    iget v0, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 1926
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1927
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1928
    const/4 v1, 0x1

    .line 1930
    :cond_1
    return v1

    .line 1924
    :cond_2
    iget v0, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1600
    iput v1, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1602
    if-lez p1, :cond_0

    .line 1603
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1608
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1609
    return-void

    .line 1605
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1679
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFormatter:Lmiui/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFormatter:Lmiui/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAlphaGradient(FIZ)I
    .locals 3
    .param p1, "posy"    # F
    .param p2, "color"    # I
    .param p3, "increasing"    # Z

    .prologue
    .line 1391
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 1396
    .end local p2    # "color":I
    :goto_0
    return p2

    .line 1394
    .restart local p2    # "color":I
    :cond_0
    if-eqz p3, :cond_1

    neg-float v1, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 1396
    .local v0, "alpha":I
    :goto_1
    const v1, 0xffffff

    and-int/2addr v1, p2

    shl-int/lit8 v2, v0, 0x18

    or-int p2, v1, v2

    goto :goto_0

    .line 1394
    .end local v0    # "alpha":I
    :cond_1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    goto :goto_1
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1795
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1797
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1821
    :goto_0
    return v1

    .line 1802
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1804
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1805
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1806
    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1802
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1815
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1798
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 1821
    :goto_2
    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    goto :goto_0

    .line 1816
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getTextSize(FII)F
    .locals 2
    .param p1, "posy"    # F
    .param p2, "maxSize"    # I
    .param p3, "minSize"    # I

    .prologue
    .line 1400
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1401
    int-to-float v0, p3

    .line 1403
    :goto_0
    return v0

    :cond_0
    sub-int v0, p3, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v1, p2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1615
    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1616
    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1620
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 1617
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1618
    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1628
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1629
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1628
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1631
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1632
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1633
    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    .line 1635
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1636
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1637
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1563
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1564
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1565
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1546
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1547
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    .line 1548
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Lmiui/widget/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1549
    .local v4, "totalTextHeight":I
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1550
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 1551
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lmiui/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1552
    iget v5, p0, Lmiui/widget/NumberPicker;->mTextSize:I

    iget v6, p0, Lmiui/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1555
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1556
    .local v0, "editTextTextPosition":I
    iget v5, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iput v5, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1558
    iget v5, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1559
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    .line 1560
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1476
    iget-object v4, p0, Lmiui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1477
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    .line 1478
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1479
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1480
    add-int/lit8 v4, v1, -0x2

    add-int v2, v0, v4

    .line 1481
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1482
    invoke-direct {p0, v2}, Lmiui/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1484
    :cond_0
    aput v2, v3, v1

    .line 1485
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lmiui/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1487
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1434
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1445
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 1437
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1438
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1439
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1447
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1443
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1445
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1439
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 709
    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 710
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 711
    .local v0, "amountToScroll":I
    iget v5, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 712
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 713
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 714
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 715
    if-lez v2, :cond_1

    .line 716
    iget v5, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 721
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 722
    invoke-virtual {p0, v4, v0}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    .line 725
    :goto_1
    return v3

    .line 718
    :cond_1
    iget v5, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 725
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 7
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1723
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSoundPlayer:Landroid/media/SoundPool;

    iget v1, p0, Lmiui/widget/NumberPicker;->mSoundId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1724
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mOnValueChangeListener:Lmiui/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mOnValueChangeListener:Lmiui/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lmiui/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lmiui/widget/NumberPicker;II)V

    .line 1727
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 1587
    iget v0, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1594
    :cond_0
    :goto_0
    return-void

    .line 1590
    :cond_1
    iput p1, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    .line 1591
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mOnScrollListener:Lmiui/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1592
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mOnScrollListener:Lmiui/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lmiui/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lmiui/widget/NumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 1571
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 1572
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1573
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    .line 1575
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1581
    :cond_1
    :goto_0
    return-void

    .line 1577
    :cond_2
    iget v0, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1578
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 4

    .prologue
    .line 1758
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1759
    new-instance v0, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 1763
    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1764
    return-void

    .line 1761
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1735
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1736
    new-instance v0, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1740
    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$200(Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1741
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1742
    return-void

    .line 1738
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 1829
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 1830
    new-instance v0, Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$SetSelectionCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    .line 1834
    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    # setter for: Lmiui/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$SetSelectionCommand;->access$302(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1835
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    # setter for: Lmiui/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Lmiui/widget/NumberPicker$SetSelectionCommand;->access$402(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1836
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1837
    return-void

    .line 1832
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private refreshWheel()V
    .locals 0

    .prologue
    .line 2501
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 2502
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 2503
    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1780
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1782
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 1783
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1785
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 1786
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1788
    :cond_2
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1789
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1773
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1751
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1463
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1464
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1465
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lmiui/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1467
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1496
    iget v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1514
    :goto_0
    return-void

    .line 1500
    :cond_0
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1501
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1506
    :goto_1
    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    .line 1507
    .local v0, "previous":I
    iput p1, p0, Lmiui/widget/NumberPicker;->mValue:I

    .line 1508
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    .line 1509
    if-eqz p2, :cond_1

    .line 1510
    invoke-direct {p0, v0, p1}, Lmiui/widget/NumberPicker;->notifyChange(II)V

    .line 1512
    :cond_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1513
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1503
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1504
    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private tryComputeMaxWidth()V
    .locals 11

    .prologue
    .line 1103
    iget-boolean v9, p0, Lmiui/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v9, :cond_1

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    const/high16 v4, -0x40800000    # -1.0f

    .line 1107
    .local v4, "maxTextWidth":F
    iget-object v9, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v10, p0, Lmiui/widget/NumberPicker;->mTextSizeHilight:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1108
    iget-object v9, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v9, :cond_5

    .line 1109
    const/4 v3, 0x0

    .line 1110
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v9, 0x9

    if-ge v2, v9, :cond_3

    .line 1111
    iget-object v9, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1112
    .local v1, "digitWidth":F
    cmpl-float v9, v1, v3

    if-lez v9, :cond_2

    .line 1113
    move v3, v1

    .line 1110
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1116
    .end local v1    # "digitWidth":F
    :cond_3
    iget v9, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    invoke-direct {p0, v9}, Lmiui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 1117
    .local v6, "numberOfDigits":I
    int-to-float v9, v6

    mul-float/2addr v9, v3

    float-to-int v9, v9

    int-to-float v4, v9

    .line 1128
    .end local v3    # "maxDigitWidth":F
    .end local v6    # "numberOfDigits":I
    :cond_4
    iput v4, p0, Lmiui/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 1129
    iget-object v9, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v9

    iget-object v10, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    add-float/2addr v4, v9

    .line 1130
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v4

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    add-float v5, v9, v10

    .line 1131
    .local v5, "maxWidth":F
    iget v9, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    int-to-float v9, v9

    cmpl-float v9, v9, v5

    if-eqz v9, :cond_0

    .line 1132
    iget v9, p0, Lmiui/widget/NumberPicker;->mMinWidth:I

    int-to-float v9, v9

    cmpl-float v9, v5, v9

    if-lez v9, :cond_7

    .line 1133
    float-to-int v9, v5

    iput v9, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    goto :goto_0

    .line 1119
    .end local v2    # "i":I
    .end local v5    # "maxWidth":F
    :cond_5
    iget-object v9, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v9

    .line 1120
    .local v0, "count":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1121
    iget-object v9, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v7, v9, v2

    .line 1122
    .local v7, "text":Ljava/lang/String;
    iget-object v9, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 1123
    .local v8, "w":F
    cmpl-float v9, v8, v4

    if-lez v9, :cond_6

    .line 1124
    move v4, v8

    .line 1120
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1135
    .end local v0    # "count":I
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "w":F
    .restart local v5    # "maxWidth":F
    :cond_7
    iget v9, p0, Lmiui/widget/NumberPicker;->mMinWidth:I

    iput v9, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    goto/16 :goto_0
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 1708
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1710
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1711
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1712
    const/4 v1, 0x1

    .line 1715
    :goto_1
    return v1

    .line 1708
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lmiui/widget/NumberPicker;->mValue:I

    iget v3, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 1715
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1683
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1684
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1686
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    .line 1692
    :goto_0
    return-void

    .line 1689
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1690
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 965
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 966
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 967
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 968
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 984
    :goto_0
    return-void

    .line 972
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 973
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 974
    .local v0, "currentScrollerY":I
    iget v2, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 975
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    .line 977
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    .line 978
    iput v0, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    .line 979
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 980
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 982
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x100

    const/16 v9, 0x80

    const/16 v8, 0x40

    const/4 v7, -0x1

    .line 915
    iget-boolean v5, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v5, :cond_0

    .line 916
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 960
    :goto_0
    return v5

    .line 918
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "accessibility"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 919
    .local v0, "acm":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 920
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 922
    .local v2, "eventY":I
    iget v5, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v2, v5, :cond_2

    .line 923
    const/4 v3, 0x3

    .line 929
    .local v3, "hoveredVirtualViewId":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 930
    .local v1, "action":I
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    check-cast v4, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 932
    .local v4, "provider":Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;
    packed-switch v1, :pswitch_data_0

    .line 960
    .end local v1    # "action":I
    .end local v2    # "eventY":I
    .end local v3    # "hoveredVirtualViewId":I
    .end local v4    # "provider":Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_2
    :pswitch_0
    const/4 v5, 0x0

    goto :goto_0

    .line 924
    .restart local v2    # "eventY":I
    :cond_2
    iget v5, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v2, v5, :cond_3

    .line 925
    const/4 v3, 0x1

    .restart local v3    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 927
    .end local v3    # "hoveredVirtualViewId":I
    :cond_3
    const/4 v3, 0x2

    .restart local v3    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 934
    .restart local v1    # "action":I
    .restart local v4    # "provider":Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v4, v3, v9}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 936
    iput v3, p0, Lmiui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 937
    invoke-virtual {v4, v3, v8, v11}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 941
    :pswitch_2
    iget v5, p0, Lmiui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v5, v3, :cond_1

    iget v5, p0, Lmiui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v5, v7, :cond_1

    .line 943
    iget v5, p0, Lmiui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v4, v5, v10}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 946
    invoke-virtual {v4, v3, v9}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 948
    iput v3, p0, Lmiui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 949
    invoke-virtual {v4, v3, v8, v11}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 954
    :pswitch_3
    invoke-virtual {v4, v3, v10}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 956
    iput v7, p0, Lmiui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_2

    .line 932
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 866
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 867
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 898
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 870
    :sswitch_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 874
    :sswitch_1
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 877
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 879
    :pswitch_0
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 881
    :goto_2
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->requestFocus()Z

    .line 882
    iput v0, p0, Lmiui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 883
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    .line 884
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 885
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->changeValueByOne(Z)V

    goto :goto_1

    .line 879
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_2

    .line 885
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 891
    :pswitch_1
    iget v1, p0, Lmiui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_0

    .line 892
    const/4 v1, -0x1

    iput v1, p0, Lmiui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    goto :goto_1

    .line 867
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 877
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 854
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 855
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 861
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 858
    :pswitch_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 855
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 903
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 904
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 910
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 907
    :pswitch_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 904
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 648
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 650
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 651
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 1417
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1418
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1423
    :goto_0
    return-object v0

    .line 1420
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mAccessibilityNodeProvider:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1421
    new-instance v0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mAccessibilityNodeProvider:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1423
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mAccessibilityNodeProvider:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1328
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1244
    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1206
    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1323
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1197
    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1149
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1333
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1334
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    .line 1335
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSoundPlayer:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1336
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1340
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1341
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getWidth()I

    move-result v15

    .line 1346
    .local v15, "w":I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getPaddingLeft()I

    move-result v7

    .line 1347
    .local v7, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getPaddingRight()I

    move-result v8

    .line 1348
    .local v8, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v19

    sub-int v18, v18, v19

    add-int v18, v18, v7

    sub-int v18, v18, v8

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1349
    .local v16, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1352
    .local v17, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mScrollState:I

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 1354
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    sget-object v19, Lmiui/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sub-int v20, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1359
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    sget-object v19, Lmiui/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    move/from16 v19, v0

    sub-int v20, v15, v8

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1367
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v5, v0

    .line 1368
    .local v5, "centerY":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1369
    .local v12, "selectorIndexToStringCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    .line 1370
    .local v13, "selectorIndices":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_5

    .line 1371
    aget v11, v13, v6

    .line 1372
    .local v11, "selectorIndex":I
    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1373
    .local v10, "scrollSelectorValue":Ljava/lang/String;
    sub-float v18, v5, v17

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v9, v18, v19

    .line 1374
    .local v9, "posy":F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mTextSizeHilight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v9, v1, v2}, Lmiui/widget/NumberPicker;->getTextSize(FII)F

    move-result v14

    .line 1375
    .local v14, "sizeFg":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mTextColorHint:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v9, v1, v2}, Lmiui/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 1377
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v14, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v18, v18, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1378
    const/high16 v18, 0x3f800000    # 1.0f

    cmpg-float v18, v9, v18

    if-gez v18, :cond_4

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mTextColorHilight:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v9, v1, v2}, Lmiui/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 1380
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v14, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v18, v18, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1382
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    .line 1370
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1384
    .end local v9    # "posy":F
    .end local v10    # "scrollSelectorValue":Ljava/lang/String;
    .end local v11    # "selectorIndex":I
    .end local v14    # "sizeFg":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1385
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mTextSizeHilight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v5, v18

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mLabelTextSize:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v17, v18, v19

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v19, v19, v16

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v17

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1408
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1409
    const-class v0, Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1410
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1411
    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1412
    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1413
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 730
    iget-boolean v3, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 775
    :goto_0
    return v1

    .line 733
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 734
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 775
    goto :goto_0

    .line 736
    :pswitch_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    .line 737
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 738
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    iput v3, p0, Lmiui/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 739
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/widget/NumberPicker;->mLastDownEventTime:J

    .line 740
    iput-boolean v2, p0, Lmiui/widget/NumberPicker;->mIngonreMoveEvents:Z

    .line 741
    iput-boolean v2, p0, Lmiui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 743
    iget v3, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 744
    iget v3, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 745
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lmiui/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 755
    :cond_2
    :goto_1
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 756
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 757
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 758
    invoke-direct {p0, v2}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 748
    :cond_3
    iget v3, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 749
    iget v3, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 750
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v3, v1}, Lmiui/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 759
    :cond_4
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 760
    iget-object v2, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 761
    iget-object v2, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 762
    :cond_5
    iget v3, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 763
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v2, v4, v5}, Lmiui/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 765
    :cond_6
    iget v2, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 766
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lmiui/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 769
    :cond_7
    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 770
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 655
    iget-boolean v8, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v8, :cond_1

    .line 656
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 660
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 663
    .local v6, "msrdHght":I
    iget-object v8, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 664
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 665
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 666
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 667
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 668
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 669
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 671
    if-eqz p1, :cond_0

    .line 673
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheel()V

    .line 674
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeFadingEdges()V

    .line 675
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Lmiui/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lmiui/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 677
    iget v8, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Lmiui/widget/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lmiui/widget/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 684
    iget-boolean v4, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 685
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 698
    :goto_0
    return-void

    .line 689
    :cond_0
    iget v4, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lmiui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 690
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lmiui/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lmiui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 691
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 693
    iget v4, p0, Lmiui/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lmiui/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 695
    .local v3, "widthSize":I
    iget v4, p0, Lmiui/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lmiui/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 697
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Lmiui/widget/NumberPicker;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 780
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v10, :cond_1

    .line 781
    :cond_0
    const/4 v10, 0x0

    .line 849
    :goto_0
    return v10

    .line 783
    :cond_1
    iget-object v10, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 784
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 786
    :cond_2
    iget-object v10, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 787
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 788
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 849
    :cond_3
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 790
    :pswitch_0
    iget-boolean v10, p0, Lmiui/widget/NumberPicker;->mIngonreMoveEvents:Z

    if-nez v10, :cond_3

    .line 793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 794
    .local v1, "currentMoveY":F
    iget v10, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 795
    iget v10, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 796
    .local v2, "deltaDownY":I
    iget v10, p0, Lmiui/widget/NumberPicker;->mTouchSlop:I

    if-le v2, v10, :cond_4

    .line 797
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    .line 798
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    .line 805
    .end local v2    # "deltaDownY":I
    :cond_4
    :goto_2
    iput v1, p0, Lmiui/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_1

    .line 801
    :cond_5
    iget v10, p0, Lmiui/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 802
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    .line 803
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    goto :goto_2

    .line 808
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 809
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 810
    iget-object v10, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v10}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 811
    iget-object v9, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 812
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Lmiui/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 813
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 814
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lmiui/widget/NumberPicker;->mMaximumFlingVelocity:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-lt v10, v11, :cond_6

    .line 815
    int-to-float v10, v7

    iget v11, p0, Lmiui/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    mul-float/2addr v10, v11

    float-to-int v7, v10

    .line 817
    :cond_6
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lmiui/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_7

    .line 818
    invoke-direct {p0, v7}, Lmiui/widget/NumberPicker;->fling(I)V

    .line 819
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    .line 845
    :goto_3
    iget-object v10, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 846
    const/4 v10, 0x0

    iput-object v10, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 821
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 822
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 823
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lmiui/widget/NumberPicker;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 824
    .local v4, "deltaTime":J
    iget v10, p0, Lmiui/widget/NumberPicker;->mTouchSlop:I

    if-gt v3, v10, :cond_b

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_b

    .line 825
    iget-boolean v10, p0, Lmiui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    if-eqz v10, :cond_9

    .line 826
    const/4 v10, 0x0

    iput-boolean v10, p0, Lmiui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 843
    :cond_8
    :goto_4
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 828
    :cond_9
    iget v10, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v6, v10

    add-int/lit8 v8, v10, -0x2

    .line 830
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_a

    .line 831
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lmiui/widget/NumberPicker;->changeValueByOne(Z)V

    .line 832
    iget-object v10, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lmiui/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 834
    :cond_a
    if-gez v8, :cond_8

    .line 835
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lmiui/widget/NumberPicker;->changeValueByOne(Z)V

    .line 836
    iget-object v10, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lmiui/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 841
    .end local v8    # "selectorIndexOffset":I
    :cond_b
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 788
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 988
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    .line 989
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_1

    .line 991
    iget v1, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_2

    .line 996
    iget v1, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 999
    :cond_2
    iget v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1000
    :cond_3
    :goto_1
    iget v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_4

    .line 1001
    iget v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1002
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1003
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1004
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_3

    .line 1005
    iget v1, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1008
    :cond_4
    :goto_2
    iget v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1009
    iget v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1010
    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1011
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1012
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_4

    .line 1013
    iget v1, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1295
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1309
    :goto_0
    return-void

    .line 1298
    :cond_0
    iput-object p1, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1299
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1301
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1306
    :goto_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    .line 1307
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1308
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1304
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setFormatter(Lmiui/widget/NumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lmiui/widget/NumberPicker$Formatter;

    .prologue
    .line 1059
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFormatter:Lmiui/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1065
    :goto_0
    return-void

    .line 1062
    :cond_0
    iput-object p1, p0, Lmiui/widget/NumberPicker;->mFormatter:Lmiui/widget/NumberPicker$Formatter;

    .line 1063
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1064
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 1023
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1024
    :cond_1
    iput-object p1, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 1025
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    .line 1027
    :cond_2
    return-void
.end method

.method public setMaxFlingSpeedFactor(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 1316
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1317
    iput p1, p0, Lmiui/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    .line 1319
    :cond_0
    return-void
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1258
    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1274
    :goto_0
    return-void

    .line 1261
    :cond_0
    if-gez p1, :cond_1

    .line 1262
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1264
    :cond_1
    iput p1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    .line 1265
    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Lmiui/widget/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1266
    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iput v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    .line 1268
    :cond_2
    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1269
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1270
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1271
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    .line 1272
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1273
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1268
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1220
    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1236
    :goto_0
    return-void

    .line 1223
    :cond_0
    if-gez p1, :cond_1

    .line 1224
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1226
    :cond_1
    iput p1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    .line 1227
    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    iget v2, p0, Lmiui/widget/NumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1228
    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    iput v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    .line 1230
    :cond_2
    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1231
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1232
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1233
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    .line 1234
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1235
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1230
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1188
    iput-wide p1, p0, Lmiui/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1189
    return-void
.end method

.method public setOnScrollListener(Lmiui/widget/NumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lmiui/widget/NumberPicker$OnScrollListener;

    .prologue
    .line 1044
    iput-object p1, p0, Lmiui/widget/NumberPicker;->mOnScrollListener:Lmiui/widget/NumberPicker$OnScrollListener;

    .line 1045
    return-void
.end method

.method public setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lmiui/widget/NumberPicker$OnValueChangeListener;

    .prologue
    .line 1035
    iput-object p1, p0, Lmiui/widget/NumberPicker;->mOnValueChangeListener:Lmiui/widget/NumberPicker$OnValueChangeListener;

    .line 1036
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1096
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1097
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1170
    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1171
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1172
    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1174
    :cond_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->refreshWheel()V

    .line 1175
    return-void

    .line 1170
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
