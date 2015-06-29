.class final Lmiui/util/MapCollections$KeySet;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/MapCollections;


# direct methods
.method constructor <init>(Lmiui/util/MapCollections;)V
    .locals 0

    .prologue
    .line 253
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    iput-object p1, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "object":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 267
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->colClear()V

    .line 268
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 272
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {v0, p1}, Lmiui/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 327
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    invoke-static {p0, p1}, Lmiui/util/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    const/4 v4, 0x0

    .line 332
    const/4 v2, 0x0

    .line 333
    .local v2, "result":I
    iget-object v3, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {v3}, Lmiui/util/MapCollections;->colGetSize()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 334
    iget-object v3, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {v3, v0, v4}, Lmiui/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    .line 335
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    move v3, v4

    :goto_1
    add-int/2addr v2, v3

    .line 333
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    .line 337
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->colGetSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    new-instance v0, Lmiui/util/MapCollections$ArrayIterator;

    iget-object v1, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/MapCollections$ArrayIterator;-><init>(Lmiui/util/MapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 292
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v1, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {v1, p1}, Lmiui/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 293
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 294
    iget-object v1, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {v1, v0}, Lmiui/util/MapCollections;->colRemoveAt(I)V

    .line 295
    const/4 v1, 0x1

    .line 297
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->colGetMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 312
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    invoke-virtual {v0}, Lmiui/util/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 317
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/util/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lmiui/util/MapCollections$KeySet;, "Lmiui/util/MapCollections<TK;TV;>.KeySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lmiui/util/MapCollections$KeySet;->this$0:Lmiui/util/MapCollections;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmiui/util/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
