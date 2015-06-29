.class final Lmiui/util/MapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic this$0:Lmiui/util/MapCollections;


# direct methods
.method constructor <init>(Lmiui/util/MapCollections;I)V
    .locals 1
    .param p2, "offset"    # I

    .prologue
    .line 29
    .local p0, "this":Lmiui/util/MapCollections$ArrayIterator;, "Lmiui/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iput-object p1, p0, Lmiui/util/MapCollections$ArrayIterator;->this$0:Lmiui/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 30
    iput p2, p0, Lmiui/util/MapCollections$ArrayIterator;->mOffset:I

    .line 31
    invoke-virtual {p1}, Lmiui/util/MapCollections;->colGetSize()I

    move-result v0

    iput v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mSize:I

    .line 32
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 36
    .local p0, "this":Lmiui/util/MapCollections$ArrayIterator;, "Lmiui/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    iget v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lmiui/util/MapCollections$ArrayIterator;, "Lmiui/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-object v1, p0, Lmiui/util/MapCollections$ArrayIterator;->this$0:Lmiui/util/MapCollections;

    iget v2, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    iget v3, p0, Lmiui/util/MapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {v1, v2, v3}, Lmiui/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "res":Ljava/lang/Object;
    iget v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 44
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 49
    .local p0, "this":Lmiui/util/MapCollections$ArrayIterator;, "Lmiui/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-boolean v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mCanRemove:Z

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 52
    :cond_0
    iget v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    .line 53
    iget v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mSize:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 55
    iget-object v0, p0, Lmiui/util/MapCollections$ArrayIterator;->this$0:Lmiui/util/MapCollections;

    iget v1, p0, Lmiui/util/MapCollections$ArrayIterator;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/util/MapCollections;->colRemoveAt(I)V

    .line 56
    return-void
.end method
