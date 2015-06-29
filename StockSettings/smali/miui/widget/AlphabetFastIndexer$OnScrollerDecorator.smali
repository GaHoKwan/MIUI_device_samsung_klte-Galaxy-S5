.class Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;
.super Ljava/lang/Object;
.source "AlphabetFastIndexer.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnScrollerDecorator"
.end annotation


# instance fields
.field private final mIndexerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/widget/AlphabetFastIndexer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Lmiui/widget/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "indexer"    # Lmiui/widget/AlphabetFastIndexer;
    .param p2, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mIndexerRef:Ljava/lang/ref/WeakReference;

    .line 529
    iput-object p2, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 530
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 535
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mIndexerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/AlphabetFastIndexer;

    .line 536
    .local v0, "indexer":Lmiui/widget/AlphabetFastIndexer;
    if-eqz v0, :cond_0

    .line 537
    # invokes: Lmiui/widget/AlphabetFastIndexer;->refreshMask()V
    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->access$100(Lmiui/widget/AlphabetFastIndexer;)V

    .line 539
    :cond_0
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 542
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 546
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mIndexerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/AlphabetFastIndexer;

    .line 547
    .local v0, "indexer":Lmiui/widget/AlphabetFastIndexer;
    if-eqz v0, :cond_0

    .line 548
    # setter for: Lmiui/widget/AlphabetFastIndexer;->mListScrollState:I
    invoke-static {v0, p2}, Lmiui/widget/AlphabetFastIndexer;->access$202(Lmiui/widget/AlphabetFastIndexer;I)I

    .line 550
    :cond_0
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 551
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 553
    :cond_1
    return-void
.end method
