.class public final Lmiui/util/ArrayMap;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Lmiui/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 213
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lmiui/util/ArrayMap;->mHashes:[I

    .line 215
    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArrayMap;->mSize:I

    .line 217
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 222
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    if-nez p1, :cond_0

    .line 224
    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lmiui/util/ArrayMap;->mHashes:[I

    .line 225
    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 229
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArrayMap;->mSize:I

    .line 230
    return-void

    .line 227
    :cond_0
    invoke-direct {p0, p1}, Lmiui/util/ArrayMap;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Lmiui/util/ArrayMap;)V
    .locals 0
    .param p1, "map"    # Lmiui/util/ArrayMap;

    .prologue
    .line 236
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lmiui/util/ArrayMap;-><init>()V

    .line 237
    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p0, p1}, Lmiui/util/ArrayMap;->putAll(Lmiui/util/ArrayMap;)V

    .line 240
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 143
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 144
    const-class v2, Lmiui/util/ArrayMap;

    monitor-enter v2

    .line 145
    :try_start_0
    sget-object v1, Lmiui/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 146
    sget-object v0, Lmiui/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 147
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 148
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Lmiui/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 149
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Lmiui/util/ArrayMap;->mHashes:[I

    .line 150
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 151
    sget v1, Lmiui/util/ArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lmiui/util/ArrayMap;->mTwiceBaseCacheSize:I

    .line 154
    monitor-exit v2

    .line 175
    .end local v0    # "array":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 156
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_1
    :goto_1
    new-array v1, p1, [I

    iput-object v1, p0, Lmiui/util/ArrayMap;->mHashes:[I

    .line 174
    shl-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 157
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 158
    const-class v2, Lmiui/util/ArrayMap;

    monitor-enter v2

    .line 159
    :try_start_2
    sget-object v1, Lmiui/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 160
    sget-object v0, Lmiui/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 161
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 162
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Lmiui/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 163
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Lmiui/util/ArrayMap;->mHashes:[I

    .line 164
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 165
    sget v1, Lmiui/util/ArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lmiui/util/ArrayMap;->mBaseCacheSize:I

    .line 168
    monitor-exit v2

    goto :goto_0

    .line 170
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 5
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x2

    .line 178
    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 179
    const-class v2, Lmiui/util/ArrayMap;

    monitor-enter v2

    .line 180
    :try_start_0
    sget v1, Lmiui/util/ArrayMap;->mTwiceBaseCacheSize:I

    if-ge v1, v3, :cond_1

    .line 181
    const/4 v1, 0x0

    sget-object v3, Lmiui/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 182
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 183
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 184
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 183
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 186
    :cond_0
    sput-object p1, Lmiui/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 187
    sget v1, Lmiui/util/ArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lmiui/util/ArrayMap;->mTwiceBaseCacheSize:I

    .line 191
    .end local v0    # "i":I
    :cond_1
    monitor-exit v2

    .line 207
    :cond_2
    :goto_1
    return-void

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 192
    :cond_3
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 193
    const-class v2, Lmiui/util/ArrayMap;

    monitor-enter v2

    .line 194
    :try_start_1
    sget v1, Lmiui/util/ArrayMap;->mBaseCacheSize:I

    if-ge v1, v3, :cond_5

    .line 195
    const/4 v1, 0x0

    sget-object v3, Lmiui/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 196
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 197
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v4, :cond_4

    .line 198
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 197
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 200
    :cond_4
    sput-object p1, Lmiui/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 201
    sget v1, Lmiui/util/ArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lmiui/util/ArrayMap;->mBaseCacheSize:I

    .line 205
    .end local v0    # "i":I
    :cond_5
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private getCollection()Lmiui/util/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lmiui/util/ArrayMap;->mCollections:Lmiui/util/MapCollections;

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Lmiui/util/ArrayMap$1;

    invoke-direct {v0, p0}, Lmiui/util/ArrayMap$1;-><init>(Lmiui/util/ArrayMap;)V

    iput-object v0, p0, Lmiui/util/ArrayMap;->mCollections:Lmiui/util/MapCollections;

    .line 716
    :cond_0
    iget-object v0, p0, Lmiui/util/ArrayMap;->mCollections:Lmiui/util/MapCollections;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v2, p0, Lmiui/util/ArrayMap;->mSize:I

    .line 447
    .local v2, "index":I
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 448
    .local v1, "hash":I
    :goto_0
    iget-object v3, p0, Lmiui/util/ArrayMap;->mHashes:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 449
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Array is full"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 447
    .end local v1    # "hash":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 451
    .restart local v1    # "hash":I
    :cond_1
    if-lez v2, :cond_2

    iget-object v3, p0, Lmiui/util/ArrayMap;->mHashes:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    if-le v3, v1, :cond_2

    .line 452
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 453
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 454
    const-string v3, "ArrayMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New hash "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is before end of array hash "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/util/ArrayMap;->mHashes:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    invoke-virtual {p0, p1, p2}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 460
    :cond_2
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmiui/util/ArrayMap;->mSize:I

    .line 461
    iget-object v3, p0, Lmiui/util/ArrayMap;->mHashes:[I

    aput v1, v3, v2

    .line 462
    shl-int/lit8 v2, v2, 0x1

    .line 463
    iget-object v3, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 464
    iget-object v3, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aput-object p2, v3, v4

    goto :goto_1
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 247
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    if-lez v0, :cond_0

    .line 248
    iget-object v0, p0, Lmiui/util/ArrayMap;->mHashes:[I

    iget-object v1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lmiui/util/ArrayMap;->mSize:I

    invoke-static {v0, v1, v2}, Lmiui/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 249
    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lmiui/util/ArrayMap;->mHashes:[I

    .line 250
    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArrayMap;->mSize:I

    .line 253
    :cond_0
    return-void
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
    .line 726
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lmiui/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->indexOfNull()I

    move-result v2

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 326
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lmiui/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .prologue
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 275
    iget-object v2, p0, Lmiui/util/ArrayMap;->mHashes:[I

    array-length v2, v2

    if-ge v2, p1, :cond_1

    .line 276
    iget-object v1, p0, Lmiui/util/ArrayMap;->mHashes:[I

    .line 277
    .local v1, "ohashes":[I
    iget-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 278
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Lmiui/util/ArrayMap;->allocArrays(I)V

    .line 279
    iget v2, p0, Lmiui/util/ArrayMap;->mSize:I

    if-lez v2, :cond_0

    .line 280
    iget-object v2, p0, Lmiui/util/ArrayMap;->mHashes:[I

    iget v3, p0, Lmiui/util/ArrayMap;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    iget-object v2, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lmiui/util/ArrayMap;->mSize:I

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    :cond_0
    iget v2, p0, Lmiui/util/ArrayMap;->mSize:I

    invoke-static {v1, v0, v2}, Lmiui/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 285
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_1
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 775
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lmiui/util/ArrayMap;->getCollection()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 578
    if-ne p0, p1, :cond_1

    .line 607
    :cond_0
    :goto_0
    return v6

    .line 581
    :cond_1
    instance-of v8, p1, Ljava/util/Map;

    if-eqz v8, :cond_6

    move-object v3, p1

    .line 582
    check-cast v3, Ljava/util/Map;

    .line 583
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Lmiui/util/ArrayMap;->size()I

    move-result v8

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    move v6, v7

    .line 584
    goto :goto_0

    .line 588
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget v8, p0, Lmiui/util/ArrayMap;->mSize:I

    if-ge v0, v8, :cond_0

    .line 589
    invoke-virtual {p0, v0}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 590
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 591
    .local v4, "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 592
    .local v5, "theirs":Ljava/lang/Object;
    if-nez v4, :cond_4

    .line 593
    if-nez v5, :cond_3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_3
    move v6, v7

    .line 594
    goto :goto_0

    .line 596
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-nez v8, :cond_5

    move v6, v7

    .line 597
    goto :goto_0

    .line 588
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 600
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "mine":Ljava/lang/Object;, "TV;"
    .end local v5    # "theirs":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "ignored":Ljava/lang/NullPointerException;
    move v6, v7

    .line 601
    goto :goto_0

    .line 602
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .local v1, "ignored":Ljava/lang/ClassCastException;
    move v6, v7

    .line 603
    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_6
    move v6, v7

    .line 607
    goto :goto_0
.end method

.method public erase()V
    .locals 4

    .prologue
    .line 260
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    iget v3, p0, Lmiui/util/ArrayMap;->mSize:I

    if-lez v3, :cond_1

    .line 261
    iget v3, p0, Lmiui/util/ArrayMap;->mSize:I

    shl-int/lit8 v0, v3, 0x1

    .line 262
    .local v0, "N":I
    iget-object v1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 263
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 264
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lmiui/util/ArrayMap;->mSize:I

    .line 268
    .end local v0    # "N":I
    .end local v1    # "array":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->indexOfNull()I

    move-result v0

    .line 338
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    :goto_1
    return-object v1

    .line 337
    .end local v0    # "index":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    .line 338
    .restart local v0    # "index":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 615
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    iget-object v1, p0, Lmiui/util/ArrayMap;->mHashes:[I

    .line 616
    .local v1, "hashes":[I
    iget-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 617
    .local v0, "array":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 618
    .local v3, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v5, 0x1

    .local v5, "v":I
    iget v4, p0, Lmiui/util/ArrayMap;->mSize:I

    .local v4, "s":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 619
    aget-object v6, v0, v5

    .line 620
    .local v6, "value":Ljava/lang/Object;
    aget v8, v1, v2

    if-nez v6, :cond_0

    const/4 v7, 0x0

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 618
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    .line 622
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1
    return v3
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 67
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    .line 70
    .local v0, "N":I
    if-nez v0, :cond_1

    .line 71
    const/4 v3, -0x1

    .line 101
    :cond_0
    :goto_0
    return v3

    .line 74
    :cond_1
    iget-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    invoke-static {v4, v0, p2}, Lmiui/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 77
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 82
    iget-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_3

    .line 89
    iget-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v1

    goto :goto_0

    .line 88
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_3
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    iget-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_5

    .line 94
    iget-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v2

    goto :goto_0

    .line 93
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 101
    :cond_5
    xor-int/lit8 v3, v1, -0x1

    goto :goto_0
.end method

.method indexOfNull()I
    .locals 6

    .prologue
    .line 105
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    .line 108
    .local v0, "N":I
    if-nez v0, :cond_1

    .line 109
    const/4 v3, -0x1

    .line 139
    :cond_0
    :goto_0
    return v3

    .line 112
    :cond_1
    iget-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lmiui/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 115
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 120
    iget-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    .line 126
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_3

    .line 127
    iget-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    move v3, v1

    goto :goto_0

    .line 126
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    :cond_3
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    iget-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_5

    .line 132
    iget-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_4

    move v3, v2

    goto :goto_0

    .line 131
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 139
    :cond_5
    xor-int/lit8 v3, v1, -0x1

    goto :goto_0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 299
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    iget v3, p0, Lmiui/util/ArrayMap;->mSize:I

    mul-int/lit8 v0, v3, 0x2

    .line 300
    .local v0, "N":I
    iget-object v1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 301
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 302
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 303
    aget-object v3, v1, v2

    if-nez v3, :cond_0

    .line 304
    shr-int/lit8 v3, v2, 0x1

    .line 314
    :goto_1
    return v3

    .line 302
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 308
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 309
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 310
    shr-int/lit8 v3, v2, 0x1

    goto :goto_1

    .line 308
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 314
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 377
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 787
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lmiui/util/ArrayMap;->getCollection()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/16 v2, 0x8

    const/4 v6, 0x4

    const/4 v9, 0x0

    .line 392
    if-nez p1, :cond_0

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "hash":I
    invoke-virtual {p0}, Lmiui/util/ArrayMap;->indexOfNull()I

    move-result v1

    .line 399
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 400
    shl-int/lit8 v6, v1, 0x1

    add-int/lit8 v1, v6, 0x1

    .line 401
    iget-object v6, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v6, v1

    .line 402
    .local v5, "old":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v6, v1

    .line 437
    .end local v5    # "old":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v5

    .line 396
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 397
    .restart local v0    # "hash":I
    invoke-virtual {p0, p1, v0}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_0

    .line 406
    :cond_1
    xor-int/lit8 v1, v1, -0x1

    .line 407
    iget v7, p0, Lmiui/util/ArrayMap;->mSize:I

    iget-object v8, p0, Lmiui/util/ArrayMap;->mHashes:[I

    array-length v8, v8

    if-lt v7, v8, :cond_4

    .line 408
    iget v7, p0, Lmiui/util/ArrayMap;->mSize:I

    if-lt v7, v2, :cond_6

    iget v6, p0, Lmiui/util/ArrayMap;->mSize:I

    iget v7, p0, Lmiui/util/ArrayMap;->mSize:I

    shr-int/lit8 v7, v7, 0x1

    add-int v2, v6, v7

    .line 413
    .local v2, "n":I
    :cond_2
    :goto_2
    iget-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    .line 414
    .local v4, "ohashes":[I
    iget-object v3, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 415
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Lmiui/util/ArrayMap;->allocArrays(I)V

    .line 417
    iget-object v6, p0, Lmiui/util/ArrayMap;->mHashes:[I

    array-length v6, v6

    if-lez v6, :cond_3

    .line 419
    iget-object v6, p0, Lmiui/util/ArrayMap;->mHashes:[I

    array-length v7, v4

    invoke-static {v4, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    iget-object v6, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    array-length v7, v3

    invoke-static {v3, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    :cond_3
    iget v6, p0, Lmiui/util/ArrayMap;->mSize:I

    invoke-static {v4, v3, v6}, Lmiui/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 426
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_4
    iget v6, p0, Lmiui/util/ArrayMap;->mSize:I

    if-ge v1, v6, :cond_5

    .line 429
    iget-object v6, p0, Lmiui/util/ArrayMap;->mHashes:[I

    iget-object v7, p0, Lmiui/util/ArrayMap;->mHashes:[I

    add-int/lit8 v8, v1, 0x1

    iget v9, p0, Lmiui/util/ArrayMap;->mSize:I

    sub-int/2addr v9, v1

    invoke-static {v6, v1, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    iget-object v6, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v9, v1, 0x1

    shl-int/lit8 v9, v9, 0x1

    iget v10, p0, Lmiui/util/ArrayMap;->mSize:I

    sub-int/2addr v10, v1

    shl-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    :cond_5
    iget-object v6, p0, Lmiui/util/ArrayMap;->mHashes:[I

    aput v0, v6, v1

    .line 434
    iget-object v6, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    aput-object p1, v6, v7

    .line 435
    iget-object v6, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    aput-object p2, v6, v7

    .line 436
    iget v6, p0, Lmiui/util/ArrayMap;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lmiui/util/ArrayMap;->mSize:I

    .line 437
    const/4 v5, 0x0

    goto :goto_1

    .line 408
    :cond_6
    iget v7, p0, Lmiui/util/ArrayMap;->mSize:I

    if-ge v7, v6, :cond_2

    move v2, v6

    goto :goto_2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v2, p0, Lmiui/util/ArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lmiui/util/ArrayMap;->ensureCapacity(I)V

    .line 736
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 737
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 739
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public putAll(Lmiui/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/ArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    .local p1, "array":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<+TK;+TV;>;"
    const/4 v5, 0x0

    .line 472
    iget v0, p1, Lmiui/util/ArrayMap;->mSize:I

    .line 473
    .local v0, "N":I
    iget v2, p0, Lmiui/util/ArrayMap;->mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lmiui/util/ArrayMap;->ensureCapacity(I)V

    .line 474
    iget v2, p0, Lmiui/util/ArrayMap;->mSize:I

    if-nez v2, :cond_1

    .line 475
    if-lez v0, :cond_0

    .line 476
    iget-object v2, p1, Lmiui/util/ArrayMap;->mHashes:[I

    iget-object v3, p0, Lmiui/util/ArrayMap;->mHashes:[I

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    iget-object v2, p1, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    iput v0, p0, Lmiui/util/ArrayMap;->mSize:I

    .line 485
    :cond_0
    return-void

    .line 481
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 482
    invoke-virtual {p1, v1}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->indexOfNull()I

    move-result v0

    .line 496
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 497
    invoke-virtual {p0, v0}, Lmiui/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 500
    :goto_1
    return-object v1

    .line 495
    .end local v0    # "index":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    .line 500
    .restart local v0    # "index":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
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
    .line 747
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lmiui/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    const/4 v9, 0x0

    const/16 v0, 0x8

    const/4 v7, 0x0

    .line 509
    iget-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v3, v4, v5

    .line 510
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, Lmiui/util/ArrayMap;->mSize:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 513
    iget-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    iget-object v5, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget v6, p0, Lmiui/util/ArrayMap;->mSize:I

    invoke-static {v4, v5, v6}, Lmiui/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 514
    sget-object v4, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    .line 515
    sget-object v4, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 516
    iput v7, p0, Lmiui/util/ArrayMap;->mSize:I

    .line 557
    :cond_0
    :goto_0
    return-object v3

    .line 518
    :cond_1
    iget-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    array-length v4, v4

    if-le v4, v0, :cond_4

    iget v4, p0, Lmiui/util/ArrayMap;->mSize:I

    iget-object v5, p0, Lmiui/util/ArrayMap;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_4

    .line 522
    iget v4, p0, Lmiui/util/ArrayMap;->mSize:I

    if-le v4, v0, :cond_2

    iget v4, p0, Lmiui/util/ArrayMap;->mSize:I

    iget v5, p0, Lmiui/util/ArrayMap;->mSize:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    .line 527
    .local v0, "n":I
    :cond_2
    iget-object v2, p0, Lmiui/util/ArrayMap;->mHashes:[I

    .line 528
    .local v2, "ohashes":[I
    iget-object v1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 529
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Lmiui/util/ArrayMap;->allocArrays(I)V

    .line 531
    iget v4, p0, Lmiui/util/ArrayMap;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmiui/util/ArrayMap;->mSize:I

    .line 532
    if-lez p1, :cond_3

    .line 534
    iget-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    iget-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    :cond_3
    iget v4, p0, Lmiui/util/ArrayMap;->mSize:I

    if-ge p1, v4, :cond_0

    .line 540
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lmiui/util/ArrayMap;->mHashes:[I

    iget v6, p0, Lmiui/util/ArrayMap;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    add-int/lit8 v4, p1, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, p1, 0x1

    iget v7, p0, Lmiui/util/ArrayMap;->mSize:I

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 545
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_4
    iget v4, p0, Lmiui/util/ArrayMap;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmiui/util/ArrayMap;->mSize:I

    .line 546
    iget v4, p0, Lmiui/util/ArrayMap;->mSize:I

    if-ge p1, v4, :cond_5

    .line 549
    iget-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lmiui/util/ArrayMap;->mHashes:[I

    iget v7, p0, Lmiui/util/ArrayMap;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    iget-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    shl-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    iget v8, p0, Lmiui/util/ArrayMap;->mSize:I

    sub-int/2addr v8, p1

    shl-int/lit8 v8, v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    :cond_5
    iget-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget v5, p0, Lmiui/util/ArrayMap;->mSize:I

    shl-int/lit8 v5, v5, 0x1

    aput-object v9, v4, v5

    .line 554
    iget-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget v5, p0, Lmiui/util/ArrayMap;->mSize:I

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    aput-object v9, v4, v5

    goto/16 :goto_0
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
    .line 757
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lmiui/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 p1, v1, 0x1

    .line 367
    iget-object v1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 368
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 369
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 565
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 634
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lmiui/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 635
    const-string v4, "{}"

    .line 659
    :goto_0
    return-object v4

    .line 638
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Lmiui/util/ArrayMap;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 639
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lmiui/util/ArrayMap;->mSize:I

    if-ge v1, v4, :cond_4

    .line 641
    if-lez v1, :cond_1

    .line 642
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_1
    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 645
    .local v2, "key":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    .line 646
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 650
    :goto_2
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 652
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_3

    .line 653
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 640
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 648
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 655
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 658
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 799
    .local p0, "this":Lmiui/util/ArrayMap;, "Lmiui/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lmiui/util/ArrayMap;->getCollection()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
