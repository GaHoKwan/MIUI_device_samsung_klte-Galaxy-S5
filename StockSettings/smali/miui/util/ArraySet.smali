.class public final Lmiui/util/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArraySet"

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
            "<TE;TE;>;"
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
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lmiui/util/ArraySet;->mHashes:[I

    .line 215
    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArraySet;->mSize:I

    .line 217
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 222
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    if-nez p1, :cond_0

    .line 224
    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lmiui/util/ArraySet;->mHashes:[I

    .line 225
    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 229
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArraySet;->mSize:I

    .line 230
    return-void

    .line 227
    :cond_0
    invoke-direct {p0, p1}, Lmiui/util/ArraySet;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Lmiui/util/ArraySet;)V
    .locals 0
    .param p1, "set"    # Lmiui/util/ArraySet;

    .prologue
    .line 236
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    invoke-direct {p0}, Lmiui/util/ArraySet;-><init>()V

    .line 237
    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p0, p1}, Lmiui/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 240
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lmiui/util/ArraySet;)I
    .locals 1
    .param p0, "x0"    # Lmiui/util/ArraySet;

    .prologue
    .line 35
    invoke-direct {p0}, Lmiui/util/ArraySet;->indexOfNull()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lmiui/util/ArraySet;Ljava/lang/Object;I)I
    .locals 1
    .param p0, "x0"    # Lmiui/util/ArraySet;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method private allocArrays(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 143
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 144
    const-class v2, Lmiui/util/ArraySet;

    monitor-enter v2

    .line 145
    :try_start_0
    sget-object v1, Lmiui/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 146
    sget-object v0, Lmiui/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 147
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 148
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Lmiui/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 149
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Lmiui/util/ArraySet;->mHashes:[I

    .line 150
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 151
    sget v1, Lmiui/util/ArraySet;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lmiui/util/ArraySet;->mTwiceBaseCacheSize:I

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

    iput-object v1, p0, Lmiui/util/ArraySet;->mHashes:[I

    .line 174
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

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
    const-class v2, Lmiui/util/ArraySet;

    monitor-enter v2

    .line 159
    :try_start_2
    sget-object v1, Lmiui/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 160
    sget-object v0, Lmiui/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    .line 161
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 162
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Lmiui/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    .line 163
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Lmiui/util/ArraySet;->mHashes:[I

    .line 164
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 165
    sget v1, Lmiui/util/ArraySet;->mBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lmiui/util/ArraySet;->mBaseCacheSize:I

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
    const-class v2, Lmiui/util/ArraySet;

    monitor-enter v2

    .line 180
    :try_start_0
    sget v1, Lmiui/util/ArraySet;->mTwiceBaseCacheSize:I

    if-ge v1, v3, :cond_1

    .line 181
    const/4 v1, 0x0

    sget-object v3, Lmiui/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 182
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 183
    add-int/lit8 v0, p2, -0x1

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
    sput-object p1, Lmiui/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 187
    sget v1, Lmiui/util/ArraySet;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lmiui/util/ArraySet;->mTwiceBaseCacheSize:I

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
    const-class v2, Lmiui/util/ArraySet;

    monitor-enter v2

    .line 194
    :try_start_1
    sget v1, Lmiui/util/ArraySet;->mBaseCacheSize:I

    if-ge v1, v3, :cond_5

    .line 195
    const/4 v1, 0x0

    sget-object v3, Lmiui/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 196
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 197
    add-int/lit8 v0, p2, -0x1

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
    sput-object p1, Lmiui/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    .line 201
    sget v1, Lmiui/util/ArraySet;->mBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lmiui/util/ArraySet;->mBaseCacheSize:I

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
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    iget-object v0, p0, Lmiui/util/ArraySet;->mCollections:Lmiui/util/MapCollections;

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Lmiui/util/ArraySet$1;

    invoke-direct {v0, p0}, Lmiui/util/ArraySet$1;-><init>(Lmiui/util/ArraySet;)V

    iput-object v0, p0, Lmiui/util/ArraySet;->mCollections:Lmiui/util/MapCollections;

    .line 611
    :cond_0
    iget-object v0, p0, Lmiui/util/ArraySet;->mCollections:Lmiui/util/MapCollections;

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 67
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    iget v0, p0, Lmiui/util/ArraySet;->mSize:I

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
    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    invoke-static {v4, v0, p2}, Lmiui/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 77
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 82
    iget-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_3

    .line 89
    iget-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

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

    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_5

    .line 94
    iget-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v2

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

.method private indexOfNull()I
    .locals 6

    .prologue
    .line 105
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    iget v0, p0, Lmiui/util/ArraySet;->mSize:I

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
    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lmiui/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 115
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 120
    iget-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    .line 126
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_3

    .line 127
    iget-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

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

    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_5

    .line 132
    iget-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v2

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


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    const/16 v2, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 314
    if-nez p1, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "hash":I
    invoke-direct {p0}, Lmiui/util/ArraySet;->indexOfNull()I

    move-result v1

    .line 321
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    move v5, v6

    .line 355
    :goto_1
    return v5

    .line 318
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 319
    .restart local v0    # "hash":I
    invoke-direct {p0, p1, v0}, Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_0

    .line 325
    :cond_1
    xor-int/lit8 v1, v1, -0x1

    .line 326
    iget v7, p0, Lmiui/util/ArraySet;->mSize:I

    iget-object v8, p0, Lmiui/util/ArraySet;->mHashes:[I

    array-length v8, v8

    if-lt v7, v8, :cond_4

    .line 327
    iget v7, p0, Lmiui/util/ArraySet;->mSize:I

    if-lt v7, v2, :cond_6

    iget v5, p0, Lmiui/util/ArraySet;->mSize:I

    iget v7, p0, Lmiui/util/ArraySet;->mSize:I

    shr-int/lit8 v7, v7, 0x1

    add-int v2, v5, v7

    .line 332
    .local v2, "n":I
    :cond_2
    :goto_2
    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    .line 333
    .local v4, "ohashes":[I
    iget-object v3, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 334
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Lmiui/util/ArraySet;->allocArrays(I)V

    .line 336
    iget-object v5, p0, Lmiui/util/ArraySet;->mHashes:[I

    array-length v5, v5

    if-lez v5, :cond_3

    .line 338
    iget-object v5, p0, Lmiui/util/ArraySet;->mHashes:[I

    array-length v7, v4

    invoke-static {v4, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iget-object v5, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v7, v3

    invoke-static {v3, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    :cond_3
    iget v5, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-static {v4, v3, v5}, Lmiui/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 345
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_4
    iget v5, p0, Lmiui/util/ArraySet;->mSize:I

    if-ge v1, v5, :cond_5

    .line 348
    iget-object v5, p0, Lmiui/util/ArraySet;->mHashes:[I

    iget-object v6, p0, Lmiui/util/ArraySet;->mHashes:[I

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lmiui/util/ArraySet;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    iget-object v5, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v6, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lmiui/util/ArraySet;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    :cond_5
    iget-object v5, p0, Lmiui/util/ArraySet;->mHashes:[I

    aput v0, v5, v1

    .line 353
    iget-object v5, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 354
    iget v5, p0, Lmiui/util/ArraySet;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmiui/util/ArraySet;->mSize:I

    .line 355
    const/4 v5, 0x1

    goto :goto_1

    .line 327
    :cond_6
    iget v7, p0, Lmiui/util/ArraySet;->mSize:I

    if-ge v7, v5, :cond_2

    move v2, v5

    goto :goto_2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v3, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lmiui/util/ArraySet;->ensureCapacity(I)V

    .line 633
    const/4 v0, 0x0

    .line 634
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 635
    .local v2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 637
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 248
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    iget v0, p0, Lmiui/util/ArraySet;->mSize:I

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lmiui/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Lmiui/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 250
    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lmiui/util/ArraySet;->mHashes:[I

    .line 251
    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArraySet;->mSize:I

    .line 254
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 281
    if-nez p1, :cond_2

    invoke-direct {p0}, Lmiui/util/ArraySet;->indexOfNull()I

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

    invoke-direct {p0, p1, v2}, Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 621
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 622
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    const/4 v1, 0x0

    .line 627
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .prologue
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    const/4 v4, 0x0

    .line 261
    iget-object v2, p0, Lmiui/util/ArraySet;->mHashes:[I

    array-length v2, v2

    if-ge v2, p1, :cond_1

    .line 262
    iget-object v1, p0, Lmiui/util/ArraySet;->mHashes:[I

    .line 263
    .local v1, "ohashes":[I
    iget-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 264
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Lmiui/util/ArraySet;->allocArrays(I)V

    .line 265
    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    if-lez v2, :cond_0

    .line 266
    iget-object v2, p0, Lmiui/util/ArraySet;->mHashes:[I

    iget v3, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget-object v2, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    :cond_0
    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-static {v1, v0, v2}, Lmiui/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 271
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 488
    if-ne p0, p1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v4

    .line 491
    :cond_1
    instance-of v6, p1, Ljava/util/Set;

    if-eqz v6, :cond_4

    move-object v3, p1

    .line 492
    check-cast v3, Ljava/util/Set;

    .line 493
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Lmiui/util/ArraySet;->size()I

    move-result v6

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    if-eq v6, v7, :cond_2

    move v4, v5

    .line 494
    goto :goto_0

    .line 498
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget v6, p0, Lmiui/util/ArraySet;->mSize:I

    if-ge v0, v6, :cond_0

    .line 499
    invoke-virtual {p0, v0}, Lmiui/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 500
    .local v2, "mine":Ljava/lang/Object;, "TE;"
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-nez v6, :cond_3

    move v4, v5

    .line 501
    goto :goto_0

    .line 498
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 504
    .end local v2    # "mine":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v1

    .local v1, "ignored":Ljava/lang/NullPointerException;
    move v4, v5

    .line 505
    goto :goto_0

    .line 506
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .local v1, "ignored":Ljava/lang/ClassCastException;
    move v4, v5

    .line 507
    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    .end local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_4
    move v4, v5

    .line 511
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 519
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    iget-object v0, p0, Lmiui/util/ArraySet;->mHashes:[I

    .line 520
    .local v0, "hashes":[I
    const/4 v2, 0x0

    .line 521
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v3, p0, Lmiui/util/ArraySet;->mSize:I

    .local v3, "s":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 522
    aget v4, v0, v1

    add-int/2addr v2, v4

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    iget v0, p0, Lmiui/util/ArraySet;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    invoke-direct {p0}, Lmiui/util/ArraySet;->getCollection()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lmiui/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/ArraySet",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    .local p1, "array":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<+TE;>;"
    const/4 v4, 0x0

    .line 363
    iget v0, p1, Lmiui/util/ArraySet;->mSize:I

    .line 364
    .local v0, "N":I
    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lmiui/util/ArraySet;->ensureCapacity(I)V

    .line 365
    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    if-nez v2, :cond_1

    .line 366
    if-lez v0, :cond_0

    .line 367
    iget-object v2, p1, Lmiui/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Lmiui/util/ArraySet;->mHashes:[I

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    iget-object v2, p1, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    iput v0, p0, Lmiui/util/ArraySet;->mSize:I

    .line 376
    :cond_0
    return-void

    .line 372
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 373
    invoke-virtual {p1, v1}, Lmiui/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 386
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    if-nez p1, :cond_0

    invoke-direct {p0}, Lmiui/util/ArraySet;->indexOfNull()I

    move-result v0

    .line 387
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 388
    invoke-virtual {p0, v0}, Lmiui/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 389
    const/4 v1, 0x1

    .line 391
    :goto_1
    return v1

    .line 386
    .end local v0    # "index":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    .line 391
    .restart local v0    # "index":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 643
    .local v1, "removed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 644
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lmiui/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    .line 646
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    return v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    const/16 v0, 0x8

    const/4 v7, 0x0

    .line 400
    iget-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v4, p1

    .line 401
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, Lmiui/util/ArraySet;->mSize:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 404
    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    iget-object v5, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-static {v4, v5, v6}, Lmiui/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 405
    sget-object v4, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    .line 406
    sget-object v4, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 407
    iput v7, p0, Lmiui/util/ArraySet;->mSize:I

    .line 445
    :cond_0
    :goto_0
    return-object v3

    .line 409
    :cond_1
    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    array-length v4, v4

    if-le v4, v0, :cond_4

    iget v4, p0, Lmiui/util/ArraySet;->mSize:I

    iget-object v5, p0, Lmiui/util/ArraySet;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_4

    .line 413
    iget v4, p0, Lmiui/util/ArraySet;->mSize:I

    if-le v4, v0, :cond_2

    iget v4, p0, Lmiui/util/ArraySet;->mSize:I

    iget v5, p0, Lmiui/util/ArraySet;->mSize:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    .line 417
    .local v0, "n":I
    :cond_2
    iget-object v2, p0, Lmiui/util/ArraySet;->mHashes:[I

    .line 418
    .local v2, "ohashes":[I
    iget-object v1, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 419
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Lmiui/util/ArraySet;->allocArrays(I)V

    .line 421
    iget v4, p0, Lmiui/util/ArraySet;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmiui/util/ArraySet;->mSize:I

    .line 422
    if-lez p1, :cond_3

    .line 425
    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    iget-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    :cond_3
    iget v4, p0, Lmiui/util/ArraySet;->mSize:I

    if-ge p1, v4, :cond_0

    .line 431
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lmiui/util/ArraySet;->mHashes:[I

    iget v6, p0, Lmiui/util/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Lmiui/util/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v1, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 435
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_4
    iget v4, p0, Lmiui/util/ArraySet;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmiui/util/ArraySet;->mSize:I

    .line 436
    iget v4, p0, Lmiui/util/ArraySet;->mSize:I

    if-ge p1, v4, :cond_5

    .line 439
    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lmiui/util/ArraySet;->mHashes:[I

    iget v7, p0, Lmiui/util/ArraySet;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    iget-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v7, p0, Lmiui/util/ArraySet;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    :cond_5
    iget-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v5, p0, Lmiui/util/ArraySet;->mSize:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 651
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 652
    .local v1, "removed":Z
    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 653
    iget-object v2, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 654
    invoke-virtual {p0, v0}, Lmiui/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 655
    const/4 v1, 0x1

    .line 652
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 658
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 453
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    iget v0, p0, Lmiui/util/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    const/4 v3, 0x0

    .line 458
    iget v1, p0, Lmiui/util/ArraySet;->mSize:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 459
    .local v0, "result":[Ljava/lang/Object;
    iget-object v1, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 465
    array-length v1, p1

    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_0

    .line 466
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 468
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v0

    .line 470
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v1, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    array-length v1, p1

    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    if-le v1, v2, :cond_1

    .line 472
    iget v1, p0, Lmiui/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 474
    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 536
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    invoke-virtual {p0}, Lmiui/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    const-string v3, "{}"

    .line 554
    :goto_0
    return-object v3

    .line 540
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Lmiui/util/ArraySet;->mSize:I

    mul-int/lit8 v3, v3, 0xe

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 541
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Lmiui/util/ArraySet;->mSize:I

    if-ge v1, v3, :cond_3

    .line 543
    if-lez v1, :cond_1

    .line 544
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_1
    invoke-virtual {p0, v1}, Lmiui/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 547
    .local v2, "value":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    .line 548
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 542
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 550
    :cond_2
    const-string v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 553
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lmiui/util/ArraySet;, "Lmiui/util/ArraySet<TE;>;"
    iget-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
