.class public Lmiui/graphics/drawable/GifAnimationDrawable;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "GifAnimationDrawable.java"


# instance fields
.field private mCurrentFrame:I

.field private mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private mDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

.field private mOriginalDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 41
    new-instance v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    invoke-direct {v0}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;-><init>()V

    iput-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mOriginalDurations:Ljava/util/ArrayList;

    return-void
.end method

.method private handleFirstDecodeResult(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z
    .locals 11
    .param p1, "decodeResult"    # Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .prologue
    const/4 v7, 0x0

    .line 86
    iget-object v8, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    if-eqz v8, :cond_0

    iget-boolean v8, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    if-nez v8, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v7

    .line 90
    :cond_1
    iget-object v4, p1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lcom/miui/internal/graphics/gif/GifDecoder;

    .line 91
    .local v4, "gifDecoder":Lcom/miui/internal/graphics/gif/GifDecoder;
    iget-object v8, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    invoke-virtual {v4}, Lcom/miui/internal/graphics/gif/GifDecoder;->isDecodeToTheEnd()Z

    move-result v9

    iput-boolean v9, v8, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodedAllFrames:Z

    .line 92
    invoke-virtual {v4}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v1

    .line 93
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 97
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_3

    .line 98
    iget-object v8, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-boolean v8, v8, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodedAllFrames:Z

    if-eqz v8, :cond_2

    .line 100
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v6}, Lcom/miui/internal/graphics/gif/GifDecoder;->getDelay(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lmiui/graphics/drawable/GifAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 97
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v4, v6}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v6}, Lcom/miui/internal/graphics/gif/GifDecoder;->getDelay(I)I

    move-result v3

    .line 105
    .local v3, "duration":I
    iget-object v8, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-object v8, v8, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    new-instance v9, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;

    invoke-direct {v9, v0, v3, v6}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 109
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "duration":I
    :cond_3
    iget-object v8, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-boolean v8, v8, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mDecodedAllFrames:Z

    if-nez v8, :cond_4

    .line 113
    iget-object v8, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    invoke-virtual {v8}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->firstDecodeNextFrames()V

    .line 116
    iget-object v8, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-object v8, v8, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;

    .line 117
    .local v5, "gifFame":Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mResources:Landroid/content/res/Resources;

    iget-object v9, v5, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mImage:Landroid/graphics/Bitmap;

    invoke-direct {v2, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 118
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget v8, v5, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    invoke-virtual {p0, v2, v8}, Lmiui/graphics/drawable/GifAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 119
    iget v8, v5, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    invoke-virtual {p0, v2, v8}, Lmiui/graphics/drawable/GifAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 123
    .end local v2    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "gifFame":Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;
    :cond_4
    invoke-virtual {p0, v7}, Lmiui/graphics/drawable/GifAnimationDrawable;->setOneShot(Z)V

    .line 126
    invoke-super {p0, v7}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 128
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private internalLoad(Landroid/content/res/Resources;Lmiui/io/ResettableInputStream;)Z
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "gifSource"    # Lmiui/io/ResettableInputStream;

    .prologue
    .line 158
    iput-object p1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mResources:Landroid/content/res/Resources;

    .line 159
    iget-object v1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iput-object p2, v1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mGifSource:Lmiui/io/ResettableInputStream;

    .line 161
    iget-object v1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->decodeFrom(I)Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    move-result-object v0

    .line 162
    .local v0, "decodeResult":Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    invoke-direct {p0, v0}, Lmiui/graphics/drawable/GifAnimationDrawable;->handleFirstDecodeResult(Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z

    move-result v1

    return v1
.end method

.method private preSelectDrawable(I)V
    .locals 5
    .param p1, "frame"    # I

    .prologue
    const/4 v4, 0x0

    .line 60
    iget-object v2, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-object v2, v2, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v2, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-object v2, v2, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;

    .line 67
    .local v1, "gifFame":Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;
    iget-object v2, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-object v2, v2, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 68
    iget-object v2, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iget-object v2, v2, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    :cond_1
    iget-object v2, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    invoke-virtual {v2}, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->decodeNextFrames()V

    .line 75
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mResources:Landroid/content/res/Resources;

    iget-object v3, v1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mImage:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 78
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v0, v2, p1

    .line 79
    iget-object v2, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    iget v3, v1, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final addFrame(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "frame"    # Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # I

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 145
    iget-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mOriginalDurations:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public final getDuration(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetManager"    # Landroid/content/res/AssetManager;
    .param p3, "gifAssetPath"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p2, p3}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lmiui/graphics/drawable/GifAnimationDrawable;->internalLoad(Landroid/content/res/Resources;Lmiui/io/ResettableInputStream;)Z

    move-result v0

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p1, p2}, Lmiui/io/ResettableInputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p0, v0, v1}, Lmiui/graphics/drawable/GifAnimationDrawable;->internalLoad(Landroid/content/res/Resources;Lmiui/io/ResettableInputStream;)Z

    move-result v0

    return v0
.end method

.method public load(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gifPath"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lmiui/io/ResettableInputStream;

    invoke-direct {v1, p2}, Lmiui/io/ResettableInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lmiui/graphics/drawable/GifAnimationDrawable;->internalLoad(Landroid/content/res/Resources;Lmiui/io/ResettableInputStream;)Z

    move-result v0

    return v0
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mOriginalDurations:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mCurrentFrame:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mDurations:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mCurrentFrame:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    add-long p2, v2, v0

    .line 154
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/AnimationDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 155
    return-void
.end method

.method public final selectDrawable(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lmiui/graphics/drawable/GifAnimationDrawable;->preSelectDrawable(I)V

    .line 51
    iput p1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mCurrentFrame:I

    .line 52
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    move-result v0

    return v0
.end method

.method protected final setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimationDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 134
    iput-object p1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 135
    return-void
.end method

.method public final setMaxDecodeSize(J)V
    .locals 1
    .param p1, "maxDecodeSize"    # J

    .prologue
    .line 204
    iget-object v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mHelper:Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;

    iput-wide p1, v0, Lcom/miui/internal/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    .line 205
    return-void
.end method
