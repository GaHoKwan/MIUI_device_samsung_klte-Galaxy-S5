.class Lmiui/util/ArraySet$1;
.super Lmiui/util/MapCollections;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ArraySet;->getCollection()Lmiui/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/MapCollections",
        "<TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/ArraySet;


# direct methods
.method constructor <init>(Lmiui/util/ArraySet;)V
    .locals 0

    .prologue
    .line 564
    .local p0, "this":Lmiui/util/ArraySet$1;, "Lmiui/util/ArraySet.1;"
    iput-object p1, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    invoke-direct {p0}, Lmiui/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 1

    .prologue
    .line 607
    .local p0, "this":Lmiui/util/ArraySet$1;, "Lmiui/util/ArraySet.1;"
    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    invoke-virtual {v0}, Lmiui/util/ArraySet;->clear()V

    .line 608
    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .prologue
    .line 572
    .local p0, "this":Lmiui/util/ArraySet$1;, "Lmiui/util/ArraySet.1;"
    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    iget-object v0, v0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 587
    .local p0, "this":Lmiui/util/ArraySet$1;, "Lmiui/util/ArraySet.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected colGetSize()I
    .locals 1

    .prologue
    .line 567
    .local p0, "this":Lmiui/util/ArraySet$1;, "Lmiui/util/ArraySet.1;"
    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    iget v0, v0, Lmiui/util/ArraySet;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 577
    .local p0, "this":Lmiui/util/ArraySet$1;, "Lmiui/util/ArraySet.1;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    # invokes: Lmiui/util/ArraySet;->indexOfNull()I
    invoke-static {v0}, Lmiui/util/ArraySet;->access$000(Lmiui/util/ArraySet;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    # invokes: Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I
    invoke-static {v0, p1, v1}, Lmiui/util/ArraySet;->access$100(Lmiui/util/ArraySet;Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 582
    .local p0, "this":Lmiui/util/ArraySet$1;, "Lmiui/util/ArraySet.1;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    # invokes: Lmiui/util/ArraySet;->indexOfNull()I
    invoke-static {v0}, Lmiui/util/ArraySet;->access$000(Lmiui/util/ArraySet;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    # invokes: Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I
    invoke-static {v0, p1, v1}, Lmiui/util/ArraySet;->access$100(Lmiui/util/ArraySet;Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p0, "this":Lmiui/util/ArraySet$1;, "Lmiui/util/ArraySet.1;"
    .local p1, "key":Ljava/lang/Object;, "TE;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    invoke-virtual {v0, p1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 593
    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 602
    .local p0, "this":Lmiui/util/ArraySet$1;, "Lmiui/util/ArraySet.1;"
    iget-object v0, p0, Lmiui/util/ArraySet$1;->this$0:Lmiui/util/ArraySet;

    invoke-virtual {v0, p1}, Lmiui/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 603
    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, "this":Lmiui/util/ArraySet$1;, "Lmiui/util/ArraySet.1;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
