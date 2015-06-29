.class public Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;
.super Ljava/lang/Object;
.source "DecodeGifImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;,
        Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    }
.end annotation


# static fields
.field public static final MESSAGE_WHAT_DECODE_FRAMES:I = 0x1


# instance fields
.field public mDecodeFrameHandler:Landroid/os/Handler;

.field private mDecodeGifFrames:Lcom/miui/internal/graphics/gif/DecodeGifFrames;

.field public mDecodedAllFrames:Z

.field public mFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field public mGifSource:Lmiui/io/ResettableInputStream;

.field public mMaxDecodeSize:J

.field private mMaxFrames:I

.field public mRealFrameCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;)Lcom/miui/internal/graphics/gif/DecodeGifFrames;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    return-object v0
.end method

.method private calcFrameIndex(I)I
    .locals 1
    .param p1, "frameIndex"    # I

    .prologue
    .line 189
    iget v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    if-nez v0, :cond_0

    .line 194
    .end local p1    # "frameIndex":I
    :goto_0
    return p1

    .restart local p1    # "frameIndex":I
    :cond_0
    iget v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    rem-int/2addr p1, v0

    goto :goto_0
.end method

.method public static decode(Lmiui/io/ResettableInputStream;JI)Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .locals 7
    .param p0, "gifSource"    # Lmiui/io/ResettableInputStream;
    .param p1, "maxDecodeSize"    # J
    .param p3, "startFrame"    # I

    .prologue
    const/4 v4, 0x0

    .line 281
    new-instance v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    invoke-direct {v0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;-><init>()V

    .line 282
    .local v0, "decodeResult":Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    .line 283
    iput-boolean v4, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lmiui/io/ResettableInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    new-instance v5, Lcom/miui/internal/graphics/gif/GifDecoder;

    invoke-direct {v5}, Lcom/miui/internal/graphics/gif/GifDecoder;-><init>()V

    iput-object v5, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    .line 292
    iget-object v2, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    .line 294
    .local v2, "gifDecoder":Lcom/miui/internal/graphics/gif/GifDecoder;
    invoke-virtual {v2, p3}, Lcom/miui/internal/graphics/gif/GifDecoder;->setStartFrame(I)V

    .line 295
    invoke-virtual {v2, p1, p2}, Lcom/miui/internal/graphics/gif/GifDecoder;->setMaxDecodeSize(J)V

    .line 297
    invoke-virtual {v2, p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read(Ljava/io/InputStream;)I

    move-result v3

    .line 299
    .local v3, "status":I
    if-nez v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    .line 301
    :try_start_1
    invoke-virtual {p0}, Lmiui/io/ResettableInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 305
    .end local v2    # "gifDecoder":Lcom/miui/internal/graphics/gif/GifDecoder;
    .end local v3    # "status":I
    :goto_0
    return-object v0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 302
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "gifDecoder":Lcom/miui/internal/graphics/gif/GifDecoder;
    .restart local v3    # "status":I
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private getLastFrameIndex()I
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;

    .line 185
    .local v0, "lastFrame":Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;
    iget v1, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mIndex:I

    return v1
.end method


# virtual methods
.method public decodeFrom(I)Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .locals 4
    .param p1, "startFrame"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mGifSource:Lmiui/io/ResettableInputStream;

    iget-wide v2, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    invoke-static {v0, v2, v3, p1}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->decode(Lmiui/io/ResettableInputStream;JI)Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    move-result-object v0

    return-object v0
.end method

.method public decodeNextFrames()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 206
    iget-object v4, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 208
    .local v0, "remainingFrames":I
    iget v4, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mMaxFrames:I

    const/4 v5, 0x3

    if-gt v4, v5, :cond_2

    .line 210
    const/4 v4, 0x2

    if-gt v0, v4, :cond_1

    .line 216
    .local v1, "shouldDecode":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->getLastFrameIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->calcFrameIndex(I)I

    move-result v2

    .line 218
    .local v2, "startFrame":I
    iget-object v3, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    invoke-virtual {v3, v2}, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->decode(I)V

    .line 220
    .end local v2    # "startFrame":I
    :cond_0
    return-void

    .end local v1    # "shouldDecode":Z
    :cond_1
    move v1, v3

    .line 210
    goto :goto_0

    .line 213
    :cond_2
    iget v4, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mMaxFrames:I

    div-int/lit8 v4, v4, 0x2

    if-gt v0, v4, :cond_3

    .restart local v1    # "shouldDecode":Z
    :goto_1
    goto :goto_0

    .end local v1    # "shouldDecode":Z
    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    invoke-virtual {v0}, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->destroy()V

    .line 344
    :cond_0
    return-void
.end method

.method public firstDecodeNextFrames()V
    .locals 4

    .prologue
    .line 317
    new-instance v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$1;-><init>(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodeFrameHandler:Landroid/os/Handler;

    .line 331
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mGifSource:Lmiui/io/ResettableInputStream;

    iget-wide v2, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    iget-object v1, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodeFrameHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v3, v1}, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->createInstance(Lmiui/io/ResettableInputStream;JLandroid/os/Handler;)Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    .line 333
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mMaxFrames:I

    .line 337
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->decodeNextFrames()V

    .line 338
    return-void
.end method

.method public handleDecodeFramesResult(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z
    .locals 14
    .param p1, "decodeResult"    # Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 231
    iget-boolean v10, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    if-eqz v10, :cond_0

    iget-object v10, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    if-nez v10, :cond_2

    :cond_0
    move v8, v9

    .line 260
    :cond_1
    return v8

    .line 235
    :cond_2
    iget-object v5, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    .line 237
    .local v5, "gifDecoder":Lcom/miui/internal/graphics/gif/GifDecoder;
    const-string v10, "Thread#%d: decoded %d frames [%s] [%d]"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v9

    iget-object v9, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    invoke-virtual {v9}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v8

    const/4 v9, 0x2

    iget-boolean v12, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v9

    const/4 v9, 0x3

    iget v12, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, "text":Ljava/lang/String;
    const-string v9, "dumpFrameIndex"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v5}, Lcom/miui/internal/graphics/gif/GifDecoder;->isDecodeToTheEnd()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 244
    invoke-virtual {v5}, Lcom/miui/internal/graphics/gif/GifDecoder;->getRealFrameCount()I

    move-result v9

    iput v9, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    .line 248
    :cond_3
    invoke-virtual {v5}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v1

    .line 250
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->getLastFrameIndex()I

    move-result v2

    .line 252
    .local v2, "currentLastFrameIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_1

    .line 253
    invoke-virtual {v5, v6}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5, v6}, Lcom/miui/internal/graphics/gif/GifDecoder;->getDelay(I)I

    move-result v3

    .line 255
    .local v3, "duration":I
    add-int/lit8 v9, v2, 0x1

    add-int/2addr v9, v6

    invoke-direct {p0, v9}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->calcFrameIndex(I)I

    move-result v4

    .line 256
    .local v4, "frameIndex":I
    iget-object v9, p0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    new-instance v10, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;

    invoke-direct {v10, v0, v3, v4}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
