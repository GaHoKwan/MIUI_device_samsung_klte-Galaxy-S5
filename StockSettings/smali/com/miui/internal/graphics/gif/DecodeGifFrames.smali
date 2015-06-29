.class Lcom/miui/internal/graphics/gif/DecodeGifFrames;
.super Landroid/os/Handler;
.source "DecodeGifImageHelper.java"


# static fields
.field private static final MESSAGE_WHAT_START:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "DecodeGifFrames"


# instance fields
.field private mCallerHandler:Landroid/os/Handler;

.field mDecodeResult:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

.field private mGifSource:Lmiui/io/ResettableInputStream;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mMaxDecodeSize:J


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;Lmiui/io/ResettableInputStream;JLandroid/os/Handler;)V
    .locals 1
    .param p1, "handlerThread"    # Landroid/os/HandlerThread;
    .param p2, "gifSource"    # Lmiui/io/ResettableInputStream;
    .param p3, "maxDecodeSize"    # J
    .param p5, "callerHandler"    # Landroid/os/Handler;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    iput-object p1, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mHandlerThread:Landroid/os/HandlerThread;

    .line 71
    iput-wide p3, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mMaxDecodeSize:J

    .line 72
    iput-object p2, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mGifSource:Lmiui/io/ResettableInputStream;

    .line 73
    iput-object p5, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mCallerHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method public static createInstance(Lmiui/io/ResettableInputStream;JLandroid/os/Handler;)Lcom/miui/internal/graphics/gif/DecodeGifFrames;
    .locals 7
    .param p0, "gifSource"    # Lmiui/io/ResettableInputStream;
    .param p1, "maxDecodeSize"    # J
    .param p3, "callerHandler"    # Landroid/os/Handler;

    .prologue
    .line 55
    new-instance v2, Landroid/os/HandlerThread;

    const-string v0, "handler thread to decode GIF frames"

    invoke-direct {v2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v1, Lcom/miui/internal/graphics/gif/DecodeGifFrames;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/miui/internal/graphics/gif/DecodeGifFrames;-><init>(Landroid/os/HandlerThread;Lmiui/io/ResettableInputStream;JLandroid/os/Handler;)V

    return-object v1
.end method


# virtual methods
.method public decode(I)V
    .locals 3
    .param p1, "startFrame"    # I

    .prologue
    .line 94
    iget-object v1, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mDecodeResult:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    if-eqz v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    invoke-direct {v1}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mDecodeResult:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .line 100
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 101
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 78
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 85
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 86
    return-void
.end method

.method public getAndClearDecodeResult()Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mDecodeResult:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .line 111
    .local v0, "result":Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mDecodeResult:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .line 112
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 117
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v6, :cond_0

    .line 118
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 119
    .local v1, "startFrame":I
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mGifSource:Lmiui/io/ResettableInputStream;

    iget-wide v4, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mMaxDecodeSize:J

    invoke-static {v2, v4, v5, v1}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->decode(Lmiui/io/ResettableInputStream;JI)Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    move-result-object v0

    .line 123
    .local v0, "decodeResult":Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mDecodeResult:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    iget-object v3, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    iput-object v3, v2, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    .line 124
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mDecodeResult:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    iget-boolean v3, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    iput-boolean v3, v2, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    .line 127
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/DecodeGifFrames;->mCallerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 129
    .end local v0    # "decodeResult":Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .end local v1    # "startFrame":I
    :cond_0
    return-void
.end method
