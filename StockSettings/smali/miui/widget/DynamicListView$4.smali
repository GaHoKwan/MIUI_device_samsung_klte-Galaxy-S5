.class Lmiui/widget/DynamicListView$4;
.super Ljava/lang/Object;
.source "DynamicListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DynamicListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentFirstVisibleItem:I

.field private mCurrentScrollState:I

.field private mCurrentVisibleItemCount:I

.field private mPreviousFirstVisibleItem:I

.field private mPreviousVisibleItemCount:I

.field final synthetic this$0:Lmiui/widget/DynamicListView;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 200
    iput-object p1, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    .line 204
    iput v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    return-void
.end method

.method private isScrollCompleted()V
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentScrollState:I

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mCellIsMobile:Z
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1000(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$600(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # invokes: Lmiui/widget/DynamicListView;->handleMobileCellScroll()V
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1100(Lmiui/widget/DynamicListView;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1200(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # invokes: Lmiui/widget/DynamicListView;->touchEventsEnded()V
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1300(Lmiui/widget/DynamicListView;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndHandleFirstVisibleCellChange()V
    .locals 4

    .prologue
    .line 269
    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    if-eq v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mCellIsMobile:Z
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1000(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mMobileItemId:J
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$000(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mMobileItemId:J
    invoke-static {v1}, Lmiui/widget/DynamicListView;->access$000(Lmiui/widget/DynamicListView;)J

    move-result-wide v2

    # invokes: Lmiui/widget/DynamicListView;->updateNeighborViewsForID(J)V
    invoke-static {v0, v2, v3}, Lmiui/widget/DynamicListView;->access$1400(Lmiui/widget/DynamicListView;J)V

    .line 272
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # invokes: Lmiui/widget/DynamicListView;->handleCellSwitch()V
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$1500(Lmiui/widget/DynamicListView;)V

    .line 275
    :cond_0
    return-void
.end method

.method public checkAndHandleLastVisibleCellChange()V
    .locals 6

    .prologue
    .line 283
    iget v2, p0, Lmiui/widget/DynamicListView$4;->mCurrentFirstVisibleItem:I

    iget v3, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    add-int v0, v2, v3

    .line 285
    .local v0, "currentLastVisibleItem":I
    iget v2, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    iget v3, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    add-int v1, v2, v3

    .line 287
    .local v1, "previousLastVisibleItem":I
    if-eq v0, v1, :cond_0

    .line 288
    iget-object v2, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mCellIsMobile:Z
    invoke-static {v2}, Lmiui/widget/DynamicListView;->access$1000(Lmiui/widget/DynamicListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mMobileItemId:J
    invoke-static {v2}, Lmiui/widget/DynamicListView;->access$000(Lmiui/widget/DynamicListView;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    iget-object v3, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mMobileItemId:J
    invoke-static {v3}, Lmiui/widget/DynamicListView;->access$000(Lmiui/widget/DynamicListView;)J

    move-result-wide v4

    # invokes: Lmiui/widget/DynamicListView;->updateNeighborViewsForID(J)V
    invoke-static {v2, v4, v5}, Lmiui/widget/DynamicListView;->access$1400(Lmiui/widget/DynamicListView;J)V

    .line 290
    iget-object v2, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # invokes: Lmiui/widget/DynamicListView;->handleCellSwitch()V
    invoke-static {v2}, Lmiui/widget/DynamicListView;->access$1500(Lmiui/widget/DynamicListView;)V

    .line 293
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, -0x1

    .line 215
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$800(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$800(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 220
    :cond_0
    iput p2, p0, Lmiui/widget/DynamicListView$4;->mCurrentFirstVisibleItem:I

    .line 221
    iput p3, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    .line 222
    iget v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentFirstVisibleItem:I

    :goto_0
    iput v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    .line 225
    iget v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    :goto_1
    iput v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    .line 228
    invoke-virtual {p0}, Lmiui/widget/DynamicListView$4;->checkAndHandleFirstVisibleCellChange()V

    .line 229
    invoke-virtual {p0}, Lmiui/widget/DynamicListView$4;->checkAndHandleLastVisibleCellChange()V

    .line 230
    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentFirstVisibleItem:I

    iput v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    .line 231
    iget v0, p0, Lmiui/widget/DynamicListView$4;->mCurrentVisibleItemCount:I

    iput v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    .line 232
    return-void

    .line 222
    :cond_1
    iget v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousFirstVisibleItem:I

    goto :goto_0

    .line 225
    :cond_2
    iget v0, p0, Lmiui/widget/DynamicListView$4;->mPreviousVisibleItemCount:I

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$800(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$800(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 239
    :cond_0
    iput p2, p0, Lmiui/widget/DynamicListView$4;->mCurrentScrollState:I

    .line 240
    iget-object v0, p0, Lmiui/widget/DynamicListView$4;->this$0:Lmiui/widget/DynamicListView;

    # setter for: Lmiui/widget/DynamicListView;->mScrollState:I
    invoke-static {v0, p2}, Lmiui/widget/DynamicListView;->access$902(Lmiui/widget/DynamicListView;I)I

    .line 241
    invoke-direct {p0}, Lmiui/widget/DynamicListView$4;->isScrollCompleted()V

    .line 242
    return-void
.end method
