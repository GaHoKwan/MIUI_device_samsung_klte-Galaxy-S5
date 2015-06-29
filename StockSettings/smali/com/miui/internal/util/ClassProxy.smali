.class public abstract Lcom/miui/internal/util/ClassProxy;
.super Ljava/lang/Object;
.source "ClassProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCookies:[J

.field private final mFinalizerGuardian:Ljava/lang/Object;

.field private mPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-string v0, "miuiclassproxy"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/miui/internal/util/ClassProxy;, "Lcom/miui/internal/util/ClassProxy<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/miui/internal/util/ClassProxy$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/util/ClassProxy$1;-><init>(Lcom/miui/internal/util/ClassProxy;)V

    iput-object v0, p0, Lcom/miui/internal/util/ClassProxy;->mFinalizerGuardian:Ljava/lang/Object;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/util/ClassProxy;->mPtr:J

    .line 125
    invoke-direct {p0, p1}, Lcom/miui/internal/util/ClassProxy;->initNative(Ljava/lang/Class;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/util/ClassProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/util/ClassProxy;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/miui/internal/util/ClassProxy;->disposeNative()V

    return-void
.end method

.method private addCookie(J)V
    .locals 9
    .param p1, "cookie"    # J

    .prologue
    .local p0, "this":Lcom/miui/internal/util/ClassProxy;, "Lcom/miui/internal/util/ClassProxy<TT;>;"
    const/4 v8, 0x0

    .line 134
    iget-object v3, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    if-nez v3, :cond_0

    .line 135
    const/4 v3, 0x4

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    .line 136
    iget-object v3, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    aput-wide p1, v3, v8

    .line 155
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v1, -0x1

    .line 139
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 140
    iget-object v3, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    aget-wide v4, v3, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    aget-wide v4, v3, v0

    cmp-long v3, v4, p1

    if-nez v3, :cond_4

    .line 141
    :cond_1
    move v1, v0

    .line 146
    :cond_2
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 147
    iget-object v3, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    array-length v3, v3

    add-int/lit8 v3, v3, 0x4

    new-array v2, v3, [J

    .line 148
    .local v2, "newCookies":[J
    iget-object v3, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    iget-object v4, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    array-length v4, v4

    invoke-static {v3, v8, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v3, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    array-length v1, v3

    .line 150
    iput-object v2, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    .line 153
    .end local v2    # "newCookies":[J
    :cond_3
    iget-object v3, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    aput-wide p1, v3, v1

    goto :goto_0

    .line 139
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private native attachMethodNative(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native detachMethodNative(J)V
.end method

.method private native disposeNative()V
.end method

.method private native initNative(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)V"
        }
    .end annotation
.end method

.method private validateCookie(JZ)Z
    .locals 7
    .param p1, "cookie"    # J
    .param p3, "remove"    # Z

    .prologue
    .line 158
    .local p0, "this":Lcom/miui/internal/util/ClassProxy;, "Lcom/miui/internal/util/ClassProxy<TT;>;"
    const/4 v1, -0x1

    .line 159
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 161
    move v1, v0

    .line 165
    :cond_0
    if-ltz v1, :cond_3

    .line 166
    if-eqz p3, :cond_1

    .line 167
    iget-object v2, p0, Lcom/miui/internal/util/ClassProxy;->mCookies:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 169
    :cond_1
    const/4 v2, 0x1

    .line 171
    :goto_1
    return v2

    .line 159
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected final attachConstructor(Ljava/lang/String;)J
    .locals 2
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 198
    .local p0, "this":Lcom/miui/internal/util/ClassProxy;, "Lcom/miui/internal/util/ClassProxy<TT;>;"
    const-string v0, "<init>"

    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final attachMethod(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    .line 183
    .local p0, "this":Lcom/miui/internal/util/ClassProxy;, "Lcom/miui/internal/util/ClassProxy<TT;>;"
    iget-object v3, p0, Lcom/miui/internal/util/ClassProxy;->mFinalizerGuardian:Ljava/lang/Object;

    monitor-enter v3

    .line 184
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/util/ClassProxy;->attachMethodNative(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 185
    .local v0, "cookie":J
    invoke-direct {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->addCookie(J)V

    .line 186
    monitor-exit v3

    return-wide v0

    .line 187
    .end local v0    # "cookie":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected final detachMethod(J)V
    .locals 3
    .param p1, "cookie"    # J

    .prologue
    .line 207
    .local p0, "this":Lcom/miui/internal/util/ClassProxy;, "Lcom/miui/internal/util/ClassProxy<TT;>;"
    iget-object v1, p0, Lcom/miui/internal/util/ClassProxy;->mFinalizerGuardian:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/util/ClassProxy;->validateCookie(JZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/util/ClassProxy;->detachMethodNative(J)V

    .line 211
    :cond_0
    monitor-exit v1

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final dispose()V
    .locals 0

    .prologue
    .line 220
    .local p0, "this":Lcom/miui/internal/util/ClassProxy;, "Lcom/miui/internal/util/ClassProxy<TT;>;"
    invoke-direct {p0}, Lcom/miui/internal/util/ClassProxy;->disposeNative()V

    .line 221
    return-void
.end method

.method protected abstract handle()V
.end method
