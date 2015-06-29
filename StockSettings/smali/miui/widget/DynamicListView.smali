.class public Lmiui/widget/DynamicListView;
.super Landroid/widget/ListView;
.source "DynamicListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DynamicListView$RearrangeListener;,
        Lmiui/widget/DynamicListView$OnItemRemoveListener;
    }
.end annotation


# static fields
.field private static final EDGE_OFFSET:I = 0x32

.field private static final FULL_ALPHA:I = 0xff

.field private static final SMOOTH_SCROLL_AMOUNT_AT_EDGE:I = 0x5

.field private static final sBoundEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final INVALID_ID:I

.field private final INVALID_POINTER_ID:I

.field private mAboveItemId:J

.field private mActivePointerId:I

.field private mBelowItemId:J

.field private mCellIsMobile:Z

.field private mDownY:I

.field private mDuration:J

.field private mEdgeOffset:I

.field private mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

.field private mHoverCellCurrentBounds:Landroid/graphics/Rect;

.field private mHoverCellOriginalBounds:Landroid/graphics/Rect;

.field private mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mIsMobileScrolling:Z

.field private mIsWaitingForScrollFinish:Z

.field private mItemIdTopMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLargeSmoothScrollAmount:I

.field private mLastEventY:I

.field private mLastShadowBounds:Landroid/graphics/Rect;

.field private mLastStateBitmap:Landroid/graphics/Bitmap;

.field private mMobileItemId:J

.field private mOnItemRemoveListener:Lmiui/widget/DynamicListView$OnItemRemoveListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

.field private mScaleAnimator:Landroid/animation/ObjectAnimator;

.field private mScaleFactor:F

.field private mScrollListRunnable:Ljava/lang/Runnable;

.field private mScrollState:I

.field private mShadowBounds:Landroid/graphics/Rect;

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private mSmallSmoothScrollAmount:I

.field private mSmoothScrollAmountAtEdge:I

.field private mTotalOffset:I

.field private mTouchEndAnimator:Landroid/animation/ObjectAnimator;

.field private mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lmiui/widget/DynamicListView$1;

    invoke-direct {v0}, Lmiui/widget/DynamicListView$1;-><init>()V

    sput-object v0, Lmiui/widget/DynamicListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 301
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 76
    iput v3, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    .line 78
    iput v3, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->mScaleFactor:F

    .line 82
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->mDuration:J

    .line 84
    iput v3, p0, Lmiui/widget/DynamicListView;->mLastEventY:I

    .line 86
    iput v3, p0, Lmiui/widget/DynamicListView;->mDownY:I

    .line 88
    iput v2, p0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    .line 90
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    .line 92
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    .line 94
    iput v2, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    .line 100
    iput v2, p0, Lmiui/widget/DynamicListView;->mEdgeOffset:I

    .line 102
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->mAboveItemId:J

    .line 104
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    .line 106
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->mBelowItemId:J

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    .line 118
    iput v3, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    .line 120
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z

    .line 122
    iput v2, p0, Lmiui/widget/DynamicListView;->mScrollState:I

    .line 138
    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    .line 144
    new-instance v0, Lmiui/widget/DynamicListView$2;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$2;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 181
    new-instance v0, Lmiui/widget/DynamicListView$3;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$3;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    .line 200
    new-instance v0, Lmiui/widget/DynamicListView$4;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$4;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 302
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->init(Landroid/content/Context;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 319
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput v3, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    .line 78
    iput v3, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->mScaleFactor:F

    .line 82
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->mDuration:J

    .line 84
    iput v3, p0, Lmiui/widget/DynamicListView;->mLastEventY:I

    .line 86
    iput v3, p0, Lmiui/widget/DynamicListView;->mDownY:I

    .line 88
    iput v2, p0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    .line 90
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    .line 92
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    .line 94
    iput v2, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    .line 100
    iput v2, p0, Lmiui/widget/DynamicListView;->mEdgeOffset:I

    .line 102
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->mAboveItemId:J

    .line 104
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    .line 106
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->mBelowItemId:J

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    .line 118
    iput v3, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    .line 120
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z

    .line 122
    iput v2, p0, Lmiui/widget/DynamicListView;->mScrollState:I

    .line 138
    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    .line 144
    new-instance v0, Lmiui/widget/DynamicListView$2;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$2;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 181
    new-instance v0, Lmiui/widget/DynamicListView$3;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$3;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    .line 200
    new-instance v0, Lmiui/widget/DynamicListView$4;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$4;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 320
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->init(Landroid/content/Context;)V

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 310
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    iput v3, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    .line 78
    iput v3, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->mScaleFactor:F

    .line 82
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->mDuration:J

    .line 84
    iput v3, p0, Lmiui/widget/DynamicListView;->mLastEventY:I

    .line 86
    iput v3, p0, Lmiui/widget/DynamicListView;->mDownY:I

    .line 88
    iput v2, p0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    .line 90
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    .line 92
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    .line 94
    iput v2, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    .line 100
    iput v2, p0, Lmiui/widget/DynamicListView;->mEdgeOffset:I

    .line 102
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->mAboveItemId:J

    .line 104
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    .line 106
    iput-wide v4, p0, Lmiui/widget/DynamicListView;->mBelowItemId:J

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    .line 118
    iput v3, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    .line 120
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z

    .line 122
    iput v2, p0, Lmiui/widget/DynamicListView;->mScrollState:I

    .line 138
    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    .line 144
    new-instance v0, Lmiui/widget/DynamicListView$2;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$2;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 181
    new-instance v0, Lmiui/widget/DynamicListView$3;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$3;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    .line 200
    new-instance v0, Lmiui/widget/DynamicListView$4;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$4;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 311
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->init(Landroid/content/Context;)V

    .line 312
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/DynamicListView;)J
    .locals 2
    .param p0, "x0"    # Lmiui/widget/DynamicListView;

    .prologue
    .line 43
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    return-wide v0
.end method

.method static synthetic access$002(Lmiui/widget/DynamicListView;J)J
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DynamicListView;
    .param p1, "x1"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    return-wide p1
.end method

.method static synthetic access$1000(Lmiui/widget/DynamicListView;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DynamicListView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    return v0
.end method

.method static synthetic access$102(Lmiui/widget/DynamicListView;J)J
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DynamicListView;
    .param p1, "x1"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->mAboveItemId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lmiui/widget/DynamicListView;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DynamicListView;

    .prologue
    .line 43
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->handleMobileCellScroll()V

    return-void
.end method

.method static synthetic access$1200(Lmiui/widget/DynamicListView;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DynamicListView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z

    return v0
.end method

.method static synthetic access$1300(Lmiui/widget/DynamicListView;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DynamicListView;

    .prologue
    .line 43
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->touchEventsEnded()V

    return-void
.end method

.method static synthetic access$1400(Lmiui/widget/DynamicListView;J)V
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DynamicListView;
    .param p1, "x1"    # J

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lmiui/widget/DynamicListView;->updateNeighborViewsForID(J)V

    return-void
.end method

.method static synthetic access$1500(Lmiui/widget/DynamicListView;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DynamicListView;

    .prologue
    .line 43
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->handleCellSwitch()V

    return-void
.end method

.method static synthetic access$1600(Lmiui/widget/DynamicListView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DynamicListView;

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1702(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DynamicListView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 43
    iput-object p1, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$1812(Lmiui/widget/DynamicListView;I)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DynamicListView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iget v0, p0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    return v0
.end method

.method static synthetic access$1900(Lmiui/widget/DynamicListView;)J
    .locals 2
    .param p0, "x0"    # Lmiui/widget/DynamicListView;

    .prologue
    .line 43
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$2002(Lmiui/widget/DynamicListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DynamicListView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 43
    iput-object p1, p0, Lmiui/widget/DynamicListView;->mLastStateBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$202(Lmiui/widget/DynamicListView;J)J
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DynamicListView;
    .param p1, "x1"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->mBelowItemId:J

    return-wide p1
.end method

.method static synthetic access$2100(Lmiui/widget/DynamicListView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DynamicListView;

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2200(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DynamicListView;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lmiui/widget/DynamicListView;->animateRemoval(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2300(Lmiui/widget/DynamicListView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DynamicListView;

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$302(Lmiui/widget/DynamicListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DynamicListView;
    .param p1, "x1"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 43
    iput-object p1, p0, Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$402(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DynamicListView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 43
    iput-object p1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DynamicListView;

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/widget/DynamicListView;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DynamicListView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    return v0
.end method

.method static synthetic access$700(Lmiui/widget/DynamicListView;)I
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DynamicListView;

    .prologue
    .line 43
    iget v0, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    return v0
.end method

.method static synthetic access$800(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lmiui/widget/DynamicListView;

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$902(Lmiui/widget/DynamicListView;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/widget/DynamicListView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lmiui/widget/DynamicListView;->mScrollState:I

    return p1
.end method

.method private animateRemoval(Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 940
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 941
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 943
    .local v9, "viewsToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 944
    .local v5, "pos":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lmiui/widget/DynamicListView;->getViewForPosition(I)Landroid/view/View;

    move-result-object v8

    .line 945
    .local v8, "view":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 946
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 949
    .end local v5    # "pos":Ljava/lang/Integer;
    .end local v8    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v2

    .line 950
    .local v2, "firstVisiblePosition":I
    iget-object v10, p0, Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 951
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 952
    invoke-virtual {p0, v3}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 953
    .local v1, "child":Landroid/view/View;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 954
    invoke-interface {v9, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 955
    add-int v10, v2, v3

    invoke-virtual {v0, v10}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v6

    .line 956
    .local v6, "itemId":J
    iget-object v10, p0, Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    .end local v6    # "itemId":J
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 960
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    iget-object v10, p0, Lmiui/widget/DynamicListView;->mOnItemRemoveListener:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    invoke-interface {v10, p1}, Lmiui/widget/DynamicListView$OnItemRemoveListener;->onItemRemove(Ljava/util/List;)V

    .line 961
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 962
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    new-instance v11, Lmiui/widget/DynamicListView$12;

    invoke-direct {v11, p0, v0, p2}, Lmiui/widget/DynamicListView$12;-><init>(Lmiui/widget/DynamicListView;Landroid/widget/BaseAdapter;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1033
    return-void
.end method

.method private getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 447
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 448
    .local v2, "h":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 449
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 450
    .local v3, "left":I
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 451
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 452
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v5

    add-int v8, v4, v2

    invoke-direct {v6, v3, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    .line 453
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    .line 454
    iget-object v6, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 455
    return-object v1
.end method

.method private getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 464
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 465
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 466
    return-object v0
.end method

.method private getViewForPosition(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 519
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v0

    .line 520
    .local v0, "firstVisiblePosition":I
    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 522
    sub-int v1, p1, v0

    invoke-virtual {p0, v1}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 524
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getViewsForPosition(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    .local p1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 536
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 537
    .local v1, "pos":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lmiui/widget/DynamicListView;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 538
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 539
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 542
    .end local v1    # "pos":Ljava/lang/Integer;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-object v3
.end method

.method private handleCellSwitch()V
    .locals 22

    .prologue
    .line 635
    move-object/from16 v0, p0

    iget v5, v0, Lmiui/widget/DynamicListView;->mLastEventY:I

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/widget/DynamicListView;->mDownY:I

    sub-int v10, v5, v6

    .line 636
    .local v10, "deltaY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    add-int/2addr v5, v6

    add-int v13, v5, v10

    .line 637
    .local v13, "deltaYTotal":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v14, v5, 0x2

    .line 638
    .local v14, "halfCellHeight":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/widget/DynamicListView;->mBelowItemId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v12

    .line 639
    .local v12, "belowView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v17

    .line 640
    .local v17, "mobileView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/widget/DynamicListView;->mAboveItemId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v4

    .line 641
    .local v4, "aboveView":Landroid/view/View;
    if-eqz v12, :cond_3

    add-int v5, v13, v14

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v6

    if-le v5, v6, :cond_3

    const/16 v16, 0x1

    .line 643
    .local v16, "isBelow":Z
    :goto_0
    if-eqz v4, :cond_4

    sub-int v5, v13, v14

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v5, v6, :cond_4

    const/4 v15, 0x1

    .line 645
    .local v15, "isAbove":Z
    :goto_1
    if-nez v16, :cond_0

    if-eqz v15, :cond_2

    .line 646
    :cond_0
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lmiui/widget/DynamicListView;->mBelowItemId:J

    .line 647
    .local v8, "switchItemID":J
    :goto_2
    if-eqz v16, :cond_6

    move-object/from16 v19, v12

    .line 648
    .local v19, "switchView":Landroid/view/View;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v18

    .line 650
    .local v18, "originalItem":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/widget/DynamicListView;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    if-eqz v5, :cond_1

    .line 651
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/widget/DynamicListView;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    move/from16 v0, v18

    invoke-interface {v5, v0, v6}, Lmiui/widget/DynamicListView$RearrangeListener;->onOrderChanged(II)V

    .line 655
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Landroid/widget/BaseAdapter;

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 656
    move-object/from16 v0, p0

    iget v5, v0, Lmiui/widget/DynamicListView;->mLastEventY:I

    move-object/from16 v0, p0

    iput v5, v0, Lmiui/widget/DynamicListView;->mDownY:I

    .line 657
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v11

    .line 658
    .local v11, "switchViewStartTop":I
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 659
    const/4 v5, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 660
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lmiui/widget/DynamicListView;->updateNeighborViewsForID(J)V

    .line 661
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    .line 662
    .local v7, "observer":Landroid/view/ViewTreeObserver;
    new-instance v5, Lmiui/widget/DynamicListView$7;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Lmiui/widget/DynamicListView$7;-><init>(Lmiui/widget/DynamicListView;Landroid/view/ViewTreeObserver;JII)V

    invoke-virtual {v7, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 679
    .end local v7    # "observer":Landroid/view/ViewTreeObserver;
    .end local v8    # "switchItemID":J
    .end local v11    # "switchViewStartTop":I
    .end local v18    # "originalItem":I
    .end local v19    # "switchView":Landroid/view/View;
    :cond_2
    return-void

    .line 641
    .end local v15    # "isAbove":Z
    .end local v16    # "isBelow":Z
    :cond_3
    const/16 v16, 0x0

    goto :goto_0

    .line 643
    .restart local v16    # "isBelow":Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    .line 646
    .restart local v15    # "isAbove":Z
    :cond_5
    move-object/from16 v0, p0

    iget-wide v8, v0, Lmiui/widget/DynamicListView;->mAboveItemId:J

    goto :goto_2

    .restart local v8    # "switchItemID":J
    :cond_6
    move-object/from16 v19, v4

    .line 647
    goto :goto_3
.end method

.method private handleMobileCellScroll()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->handleMobileCellScroll(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    .line 753
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    iget-object v2, p0, Lmiui/widget/DynamicListView;->mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 325
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 326
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 327
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/DynamicListView;->mSmallSmoothScrollAmount:I

    .line 329
    const/high16 v2, 0x3fc00000    # 1.5f

    iget v3, p0, Lmiui/widget/DynamicListView;->mSmallSmoothScrollAmount:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/DynamicListView;->mLargeSmoothScrollAmount:I

    .line 330
    const/high16 v2, 0x42480000    # 50.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/DynamicListView;->mEdgeOffset:I

    .line 331
    sget v2, Lcom/miui/internal/R$drawable;->dynamic_listview_dragging_item_shadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/DynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 333
    iget-object v2, p0, Lmiui/widget/DynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lmiui/widget/DynamicListView;->mShadowHeight:I

    .line 334
    return-void
.end method

.method private makeScalingAnimation()V
    .locals 7

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 379
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 380
    .local v0, "finalBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lmiui/widget/DynamicListView;->mScaleFactor:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v5

    float-to-int v2, v3

    .line 382
    .local v2, "widthDelta":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lmiui/widget/DynamicListView;->mScaleFactor:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v5

    float-to-int v1, v3

    .line 384
    .local v1, "heightDelta":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 387
    iget-object v3, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 388
    iget-object v3, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 389
    const-string v3, "HoverCellBounds"

    sget-object v4, Lmiui/widget/DynamicListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {p0, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 392
    iget-object v3, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    iget-wide v4, p0, Lmiui/widget/DynamicListView;->mDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 393
    iget-object v3, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lmiui/widget/DynamicListView$5;

    invoke-direct {v4, p0}, Lmiui/widget/DynamicListView$5;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 402
    iget-object v3, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lmiui/widget/DynamicListView$6;

    invoke-direct {v4, p0}, Lmiui/widget/DynamicListView$6;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 415
    iget-object v3, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 416
    return-void
.end method

.method private touchEventsCancelled()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 733
    iget-wide v2, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    invoke-virtual {p0, v2, v3}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 734
    .local v0, "mobileView":Landroid/view/View;
    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    if-eqz v1, :cond_0

    .line 735
    iput-wide v6, p0, Lmiui/widget/DynamicListView;->mAboveItemId:J

    .line 736
    iput-wide v6, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    .line 737
    iput-wide v6, p0, Lmiui/widget/DynamicListView;->mBelowItemId:J

    .line 738
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 739
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    .line 740
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->invalidate()V

    .line 742
    :cond_0
    iput-boolean v4, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    .line 743
    iput-boolean v4, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    .line 744
    const/4 v1, -0x1

    iput v1, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    .line 745
    return-void
.end method

.method private touchEventsEnded()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 686
    iget-wide v2, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    invoke-virtual {p0, v2, v3}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 687
    .local v0, "mobileView":Landroid/view/View;
    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z

    if-eqz v1, :cond_2

    .line 688
    :cond_0
    iput-boolean v7, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    .line 689
    iput-boolean v7, p0, Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z

    .line 690
    iput-boolean v7, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    .line 691
    const/4 v1, -0x1

    iput v1, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    .line 697
    iget v1, p0, Lmiui/widget/DynamicListView;->mScrollState:I

    if-eqz v1, :cond_1

    .line 698
    iput-boolean v8, p0, Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z

    .line 727
    :goto_0
    return-void

    .line 701
    :cond_1
    iget-object v1, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 703
    iget-object v1, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 708
    const-string v1, "HoverCellBounds"

    sget-object v2, Lmiui/widget/DynamicListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    aput-object v4, v3, v7

    invoke-static {p0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    .line 711
    iget-object v1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    iget-wide v2, p0, Lmiui/widget/DynamicListView;->mDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 712
    iget-object v1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lmiui/widget/DynamicListView$8;

    invoke-direct {v2, p0}, Lmiui/widget/DynamicListView$8;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 722
    iget-object v1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 723
    iget-object v1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 725
    :cond_2
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->touchEventsCancelled()V

    goto :goto_0
.end method

.method private updateNeighborViewsForID(J)V
    .locals 5
    .param p1, "itemID"    # J

    .prologue
    .line 476
    invoke-virtual {p0, p1, p2}, Lmiui/widget/DynamicListView;->getPositionForId(J)I

    move-result v1

    .line 477
    .local v1, "position":I
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 478
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->mAboveItemId:J

    .line 479
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->mBelowItemId:J

    .line 480
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 552
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 553
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 555
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 557
    :cond_0
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mLastStateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mLastStateBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 560
    :cond_1
    return-void
.end method

.method public getHoverCellBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getLastStateAlpha()I
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getPositionForId(J)I
    .locals 3
    .param p1, "itemID"    # J

    .prologue
    .line 503
    invoke-virtual {p0, p1, p2}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 504
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 505
    const/4 v1, -0x1

    .line 507
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public getViewForId(J)Landroid/view/View;
    .locals 9
    .param p1, "itemID"    # J

    .prologue
    .line 486
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v1

    .line 487
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 488
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 489
    invoke-virtual {p0, v2}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 490
    .local v6, "v":Landroid/view/View;
    add-int v3, v1, v2

    .line 491
    .local v3, "position":I
    invoke-virtual {v0, v3}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    .line 492
    .local v4, "id":J
    cmp-long v7, v4, p1

    if-nez v7, :cond_0

    .line 496
    .end local v3    # "position":I
    .end local v4    # "id":J
    .end local v6    # "v":Landroid/view/View;
    :goto_1
    return-object v6

    .line 488
    .restart local v3    # "position":I
    .restart local v4    # "id":J
    .restart local v6    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    .end local v3    # "position":I
    .end local v4    # "id":J
    .end local v6    # "v":Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public handleMobileCellScroll(Landroid/graphics/Rect;)Z
    .locals 12
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const-wide/16 v10, 0xa

    const/4 v6, 0x1

    .line 761
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollOffset()I

    move-result v4

    .line 762
    .local v4, "offset":I
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result v1

    .line 763
    .local v1, "height":I
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollExtent()I

    move-result v0

    .line 764
    .local v0, "extent":I
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollRange()I

    move-result v5

    .line 765
    .local v5, "range":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 766
    .local v3, "hoverViewTop":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 767
    .local v2, "hoverHeight":I
    iget v7, p0, Lmiui/widget/DynamicListView;->mEdgeOffset:I

    mul-int/lit8 v7, v7, 0x2

    if-gt v3, v7, :cond_1

    if-lez v4, :cond_1

    .line 769
    iget v7, p0, Lmiui/widget/DynamicListView;->mSmallSmoothScrollAmount:I

    neg-int v7, v7

    iput v7, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    .line 770
    iget v7, p0, Lmiui/widget/DynamicListView;->mEdgeOffset:I

    if-gt v3, v7, :cond_0

    .line 771
    iget v7, p0, Lmiui/widget/DynamicListView;->mLargeSmoothScrollAmount:I

    neg-int v7, v7

    iput v7, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    .line 773
    :cond_0
    iget-object v7, p0, Lmiui/widget/DynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7, v10, v11}, Lmiui/widget/DynamicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 787
    :goto_0
    return v6

    .line 776
    :cond_1
    add-int v7, v3, v2

    iget v8, p0, Lmiui/widget/DynamicListView;->mEdgeOffset:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v1, v8

    if-lt v7, v8, :cond_3

    add-int v7, v4, v0

    if-ge v7, v5, :cond_3

    .line 779
    iget v7, p0, Lmiui/widget/DynamicListView;->mSmallSmoothScrollAmount:I

    iput v7, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    .line 780
    add-int v7, v3, v2

    iget v8, p0, Lmiui/widget/DynamicListView;->mEdgeOffset:I

    sub-int v8, v1, v8

    if-lt v7, v8, :cond_2

    .line 781
    iget v7, p0, Lmiui/widget/DynamicListView;->mLargeSmoothScrollAmount:I

    iput v7, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    .line 783
    :cond_2
    iget-object v7, p0, Lmiui/widget/DynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7, v10, v11}, Lmiui/widget/DynamicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 786
    :cond_3
    iget-object v6, p0, Lmiui/widget/DynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lmiui/widget/DynamicListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 787
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 564
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    .line 622
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_1
    return v4

    .line 566
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lmiui/widget/DynamicListView;->mDownY:I

    .line 567
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    goto :goto_0

    .line 570
    :pswitch_2
    iget v5, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 573
    iget v5, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 574
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lmiui/widget/DynamicListView;->mLastEventY:I

    .line 575
    iget v5, p0, Lmiui/widget/DynamicListView;->mLastEventY:I

    iget v6, p0, Lmiui/widget/DynamicListView;->mDownY:I

    sub-int v0, v5, v6

    .line 576
    .local v0, "deltaY":I
    iget-boolean v5, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    if-eqz v5, :cond_0

    .line 577
    iget-object v5, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 578
    iget-object v5, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->end()V

    .line 581
    :cond_1
    iget-object v5, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    iget v6, p0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    add-int v3, v5, v6

    .line 583
    .local v3, "top":I
    if-gez v3, :cond_3

    .line 584
    const/4 v3, 0x0

    .line 589
    :cond_2
    :goto_2
    iget-object v5, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 591
    iget-object v5, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lmiui/widget/DynamicListView;->setHoverCellBounds(Landroid/graphics/Rect;)V

    .line 592
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->handleCellSwitch()V

    .line 593
    iput-boolean v4, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    .line 594
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->handleMobileCellScroll()V

    goto :goto_1

    .line 585
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v3, v5, :cond_2

    .line 586
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v3, v5, v6

    goto :goto_2

    .line 599
    .end local v0    # "deltaY":I
    .end local v2    # "pointerIndex":I
    .end local v3    # "top":I
    :pswitch_3
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->touchEventsEnded()V

    goto :goto_0

    .line 602
    :pswitch_4
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->touchEventsCancelled()V

    goto/16 :goto_0

    .line 611
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 614
    .restart local v2    # "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 615
    .local v1, "pointerId":I
    iget v4, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 616
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->touchEventsEnded()V

    goto/16 :goto_0

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public removeItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 807
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/widget/DynamicListView;->removeItems(Ljava/util/List;Ljava/util/List;)V

    .line 808
    return-void
.end method

.method public removeItems(Ljava/util/List;Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 818
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "scrollLeftItemIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 819
    .local v15, "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 820
    .local v17, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v18, "positionsToScrollLeft":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .line 822
    .local v11, "hasOutItem":Z
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 823
    .local v14, "id":Ljava/lang/Long;
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lmiui/widget/DynamicListView;->getPositionForId(J)I

    move-result v16

    .line 824
    .local v16, "position":I
    const/16 v22, -0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 825
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 828
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 831
    :cond_1
    const/4 v11, 0x1

    .line 835
    .end local v14    # "id":Ljava/lang/Long;
    .end local v16    # "position":I
    :cond_2
    if-eqz v11, :cond_4

    .line 839
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmiui/widget/DynamicListView;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/widget/DynamicListView;->mLastStateBitmap:Landroid/graphics/Bitmap;

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/DynamicListView;->mOnItemRemoveListener:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lmiui/widget/DynamicListView$OnItemRemoveListener;->onItemRemove(Ljava/util/List;)V

    .line 841
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v22

    check-cast v22, Landroid/widget/BaseAdapter;

    invoke-virtual/range {v22 .. v22}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 842
    const-string v22, "LastStateAlpha"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 844
    .local v5, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/widget/DynamicListView;->mDuration:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 845
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 846
    new-instance v22, Lmiui/widget/DynamicListView$9;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmiui/widget/DynamicListView$9;-><init>(Lmiui/widget/DynamicListView;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 913
    .end local v5    # "animator":Landroid/animation/ObjectAnimator;
    :cond_3
    :goto_1
    return-void

    .line 856
    :cond_4
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 857
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lmiui/widget/DynamicListView;->getViewsForPosition(Ljava/util/List;)Ljava/util/List;

    move-result-object v21

    .line 858
    .local v21, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lmiui/widget/DynamicListView;->getViewsForPosition(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    .line 859
    .local v19, "scrollLeftViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_3

    .line 860
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 861
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 862
    .local v6, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 863
    .local v7, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 865
    .local v10, "delayAnimators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v9

    .line 867
    .local v9, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v9, :cond_6

    .line 868
    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 869
    .local v8, "child":Landroid/view/View;
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v20, v0

    .line 872
    .local v20, "translationX":I
    :goto_3
    sget-object v22, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    aput v25, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v8, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 875
    .restart local v5    # "animator":Landroid/animation/ObjectAnimator;
    new-instance v22, Lmiui/widget/DynamicListView$10;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lmiui/widget/DynamicListView$10;-><init>(Lmiui/widget/DynamicListView;Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 894
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/widget/DynamicListView;->mDuration:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 896
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    invoke-static/range {v22 .. v22}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 897
    .local v4, "anim":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/widget/DynamicListView;->mDuration:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3

    div-long v22, v22, v24

    int-to-long v0, v12

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 898
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 869
    .end local v4    # "anim":Landroid/animation/ValueAnimator;
    .end local v5    # "animator":Landroid/animation/ObjectAnimator;
    .end local v20    # "translationX":I
    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v20

    goto :goto_3

    .line 900
    .end local v8    # "child":Landroid/view/View;
    :cond_6
    invoke-virtual {v6, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 901
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v9, :cond_7

    .line 902
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/animation/Animator;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v23

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/animation/Animator;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 901
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 904
    :cond_7
    new-instance v22, Lmiui/widget/DynamicListView$11;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Lmiui/widget/DynamicListView$11;-><init>(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 911
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    .line 896
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 342
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->mDuration:J

    .line 343
    return-void
.end method

.method public setHoverCellBounds(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 429
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 430
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 431
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lmiui/widget/DynamicListView;->mShadowHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lmiui/widget/DynamicListView;->mShadowHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 435
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 436
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 437
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->invalidate(Landroid/graphics/Rect;)V

    .line 438
    return-void
.end method

.method public setLastStateAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 926
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 927
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->invalidate()V

    .line 928
    return-void
.end method

.method public setOnItemRemoveListener(Lmiui/widget/DynamicListView$OnItemRemoveListener;)V
    .locals 0
    .param p1, "listener"    # Lmiui/widget/DynamicListView$OnItemRemoveListener;

    .prologue
    .line 1041
    iput-object p1, p0, Lmiui/widget/DynamicListView;->mOnItemRemoveListener:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    .line 1042
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 798
    iput-object p1, p0, Lmiui/widget/DynamicListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 799
    return-void
.end method

.method public setRearrangeListener(Lmiui/widget/DynamicListView$RearrangeListener;)V
    .locals 0
    .param p1, "listener"    # Lmiui/widget/DynamicListView$RearrangeListener;

    .prologue
    .line 1050
    iput-object p1, p0, Lmiui/widget/DynamicListView;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    .line 1051
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 352
    iput p1, p0, Lmiui/widget/DynamicListView;->mScaleFactor:F

    .line 353
    return-void
.end method

.method public startDragging(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 361
    iget-object v1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 363
    iget-object v1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    iget-object v2, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 365
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    .line 366
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 367
    .local v0, "selectedView":Landroid/view/View;
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    .line 368
    invoke-direct {p0, v0}, Lmiui/widget/DynamicListView;->getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    .line 369
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->makeScalingAnimation()V

    .line 370
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    .line 372
    iget-wide v2, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    invoke-direct {p0, v2, v3}, Lmiui/widget/DynamicListView;->updateNeighborViewsForID(J)V

    .line 373
    iget-object v1, p0, Lmiui/widget/DynamicListView;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lmiui/widget/DynamicListView;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    invoke-interface {v1}, Lmiui/widget/DynamicListView$RearrangeListener;->onDragStart()V

    .line 376
    :cond_1
    return-void
.end method
