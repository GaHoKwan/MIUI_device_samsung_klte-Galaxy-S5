.class Lmiui/util/Pools$SoftReferenceInstanceHolder;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Lmiui/util/Pools$IInstanceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftReferenceInstanceHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/util/Pools$IInstanceHolder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile mElements:[Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile mIndex:I

.field private volatile mSize:I


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .locals 2
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lmiui/util/Pools$SoftReferenceInstanceHolder;, "Lmiui/util/Pools$SoftReferenceInstanceHolder<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mClazz:Ljava/lang/Class;

    .line 179
    iput p2, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    .line 180
    new-array v0, p2, [Ljava/lang/ref/SoftReference;

    check-cast v0, [Ljava/lang/ref/SoftReference;

    .line 182
    .local v0, "array":[Ljava/lang/ref/SoftReference;, "[Ljava/lang/ref/SoftReference<TT;>;"
    iput-object v0, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    .line 183
    const/4 v1, 0x0

    iput v1, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 184
    return-void
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/Pools$SoftReferenceInstanceHolder;, "Lmiui/util/Pools$SoftReferenceInstanceHolder<TT;>;"
    const/4 v3, 0x0

    .line 219
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 220
    .local v2, "index":I
    iget-object v1, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    .line 221
    .local v1, "elements":[Ljava/lang/ref/SoftReference;, "[Ljava/lang/ref/SoftReference<TT;>;"
    :cond_0
    if-eqz v2, :cond_1

    .line 222
    add-int/lit8 v2, v2, -0x1

    .line 223
    aget-object v4, v1, v2

    if-eqz v4, :cond_0

    .line 224
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, "element":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    aput-object v4, v1, v2

    .line 227
    if-eqz v0, :cond_0

    .line 228
    iput v2, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    move-object v0, v3

    goto :goto_0

    .line 219
    .end local v1    # "elements":[Ljava/lang/ref/SoftReference;, "[Ljava/lang/ref/SoftReference<TT;>;"
    .end local v2    # "index":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getElementClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lmiui/util/Pools$SoftReferenceInstanceHolder;, "Lmiui/util/Pools$SoftReferenceInstanceHolder<TT;>;"
    iget-object v0, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Lmiui/util/Pools$SoftReferenceInstanceHolder;, "Lmiui/util/Pools$SoftReferenceInstanceHolder<TT;>;"
    iget v0, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    return v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/Pools$SoftReferenceInstanceHolder;, "Lmiui/util/Pools$SoftReferenceInstanceHolder<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    .line 239
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 240
    .local v2, "index":I
    iget-object v0, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    .line 242
    .local v0, "elements":[Ljava/lang/ref/SoftReference;, "[Ljava/lang/ref/SoftReference<TT;>;"
    iget v4, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    if-lt v2, v4, :cond_3

    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 244
    aget-object v4, v0, v1

    if-eqz v4, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 245
    :cond_0
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v4, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v1    # "i":I
    :goto_1
    monitor-exit p0

    return v3

    .line 243
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 252
    .end local v1    # "i":I
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v4, v0, v2

    .line 253
    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 239
    .end local v0    # "elements":[Ljava/lang/ref/SoftReference;, "[Ljava/lang/ref/SoftReference<TT;>;"
    .end local v2    # "index":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized resize(I)V
    .locals 6
    .param p1, "size"    # I

    .prologue
    .line 198
    .local p0, "this":Lmiui/util/Pools$SoftReferenceInstanceHolder;, "Lmiui/util/Pools$SoftReferenceInstanceHolder<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    add-int/2addr p1, v3

    .line 199
    if-gtz p1, :cond_1

    .line 200
    # getter for: Lmiui/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;
    invoke-static {}, Lmiui/util/Pools;->access$100()Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 201
    :try_start_1
    # getter for: Lmiui/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;
    invoke-static {}, Lmiui/util/Pools;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/util/Pools$SoftReferenceInstanceHolder;->getElementClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 206
    :cond_1
    :try_start_4
    iput p1, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mSize:I

    .line 207
    iget-object v0, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;

    .line 208
    .local v0, "elements":[Ljava/lang/ref/SoftReference;, "[Ljava/lang/ref/SoftReference<TT;>;"
    iget v1, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mIndex:I

    .line 209
    .local v1, "index":I
    array-length v3, v0

    if-le p1, v3, :cond_0

    .line 210
    new-array v2, p1, [Ljava/lang/ref/SoftReference;

    check-cast v2, [Ljava/lang/ref/SoftReference;

    .line 212
    .local v2, "newElements":[Ljava/lang/ref/SoftReference;, "[Ljava/lang/ref/SoftReference<TT;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iput-object v2, p0, Lmiui/util/Pools$SoftReferenceInstanceHolder;->mElements:[Ljava/lang/ref/SoftReference;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method
