.class public Lcom/miui/internal/graphics/gif/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field public static final MAX_DECODE_SIZE:I = 0x100000

.field protected static final MAX_STACK_SIZE:I = 0x1000

.field public static final STATUS_DECODE_CANCEL:I = 0x3

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field private calledOnce:Z

.field protected delay:I

.field private dest:[I

.field protected dispose:I

.field protected frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field private height:I

.field protected ih:I

.field protected image:Landroid/graphics/Bitmap;

.field protected in:Ljava/io/BufferedInputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastBitmap:Landroid/graphics/Bitmap;

.field protected lastDispose:I

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected lrh:I

.field protected lrw:I

.field protected lrx:I

.field protected lry:I

.field private mCancel:Z

.field private mDecodeBmSize:J

.field private mDecodeToTheEnd:Z

.field private mDecodedFrames:I

.field private mMaxDecodeSize:J

.field private mStartFrame:I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->loopCount:I

    .line 126
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    .line 128
    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    .line 131
    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    .line 134
    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastDispose:I

    .line 136
    iput-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    .line 138
    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    .line 363
    iput-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    .line 409
    iput-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->calledOnce:Z

    return-void
.end method

.method public static isGifStream(Ljava/io/InputStream;)Z
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 394
    const/4 v3, 0x0

    .line 395
    .local v3, "ret":Z
    if-eqz p0, :cond_1

    .line 396
    const-string v2, ""

    .line 397
    .local v2, "id":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x6

    if-ge v1, v4, :cond_0

    .line 398
    invoke-static {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readOneByte(Ljava/io/InputStream;)I

    move-result v0

    .line 399
    .local v0, "ch":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    .line 404
    .end local v0    # "ch":I
    :cond_0
    const-string v4, "GIF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 406
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    return v3

    .line 402
    .restart local v0    # "ch":I
    .restart local v1    # "i":I
    .restart local v2    # "id":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static readOneByte(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 381
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 383
    :goto_0
    return v1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private requestCancel()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method


# virtual methods
.method protected decodeBitmapData()V
    .locals 25

    .prologue
    .line 454
    const/16 v17, -0x1

    .line 455
    .local v17, "nullCode":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->ih:I

    move/from16 v24, v0

    mul-int v16, v23, v24

    .line 457
    .local v16, "npix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 458
    :cond_0
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    .line 460
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 461
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    .line 463
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 464
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    .line 466
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 467
    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    .line 470
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v10

    .line 471
    .local v10, "data_size":I
    const/16 v23, 0x1

    shl-int v5, v23, v10

    .line 472
    .local v5, "clear":I
    add-int/lit8 v12, v5, 0x1

    .line 473
    .local v12, "end_of_information":I
    add-int/lit8 v2, v5, 0x2

    .line 474
    .local v2, "available":I
    move/from16 v18, v17

    .line 475
    .local v18, "old_code":I
    add-int/lit8 v8, v10, 0x1

    .line 476
    .local v8, "code_size":I
    const/16 v23, 0x1

    shl-int v23, v23, v8

    add-int/lit8 v7, v23, -0x1

    .line 477
    .local v7, "code_mask":I
    const/4 v6, 0x0

    .local v6, "code":I
    :goto_0
    if-ge v6, v5, :cond_5

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v6

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v6

    move/from16 v24, v0

    aput-byte v24, v23, v6

    .line 477
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 482
    :cond_5
    const/4 v3, 0x0

    .local v3, "bi":I
    move/from16 v19, v3

    .local v19, "pi":I
    move/from16 v21, v3

    .local v21, "top":I
    move v13, v3

    .local v13, "first":I
    move v9, v3

    .local v9, "count":I
    move v4, v3

    .local v4, "bits":I
    move v11, v3

    .line 483
    .local v11, "datum":I
    const/4 v14, 0x0

    .local v14, "i":I
    move/from16 v20, v19

    .end local v19    # "pi":I
    .local v20, "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .local v22, "top":I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_11

    .line 484
    if-nez v22, :cond_12

    .line 485
    if-ge v4, v8, :cond_8

    .line 487
    if-nez v9, :cond_7

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBlock()I

    move-result v9

    .line 490
    if-gtz v9, :cond_6

    move/from16 v21, v22

    .line 552
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :goto_2
    move/from16 v14, v20

    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_10

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v14

    .line 552
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 493
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_6
    const/4 v3, 0x0

    .line 495
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v3

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v4

    add-int v11, v11, v23

    .line 496
    add-int/lit8 v4, v4, 0x8

    .line 497
    add-int/lit8 v3, v3, 0x1

    .line 498
    add-int/lit8 v9, v9, -0x1

    .line 499
    goto :goto_1

    .line 502
    :cond_8
    and-int v6, v11, v7

    .line 503
    shr-int/2addr v11, v8

    .line 504
    sub-int/2addr v4, v8

    .line 506
    if-gt v6, v2, :cond_11

    if-ne v6, v12, :cond_9

    move/from16 v21, v22

    .line 507
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_2

    .line 509
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_9
    if-ne v6, v5, :cond_a

    .line 511
    add-int/lit8 v8, v10, 0x1

    .line 512
    const/16 v23, 0x1

    shl-int v23, v23, v8

    add-int/lit8 v7, v23, -0x1

    .line 513
    add-int/lit8 v2, v5, 0x2

    .line 514
    move/from16 v18, v17

    .line 515
    goto :goto_1

    .line 517
    :cond_a
    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v6

    aput-byte v24, v23, v22

    .line 519
    move/from16 v18, v6

    .line 520
    move v13, v6

    move/from16 v22, v21

    .line 521
    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_1

    .line 523
    :cond_b
    move v15, v6

    .line 524
    .local v15, "in_code":I
    if-ne v6, v2, :cond_c

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v13

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 526
    move/from16 v6, v18

    move/from16 v22, v21

    .line 528
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_c
    :goto_4
    if-le v6, v5, :cond_d

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v6

    aput-byte v24, v23, v22

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    aget-short v6, v23, v6

    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_4

    .line 532
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    move/from16 v0, v23

    and-int/lit16 v13, v0, 0xff

    .line 534
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-lt v2, v0, :cond_e

    move/from16 v21, v22

    .line 535
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_2

    .line 537
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v13

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v2

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v13

    move/from16 v24, v0

    aput-byte v24, v23, v2

    .line 540
    add-int/lit8 v2, v2, 0x1

    .line 541
    and-int v23, v2, v7

    if-nez v23, :cond_f

    const/16 v23, 0x1000

    move/from16 v0, v23

    if-ge v2, v0, :cond_f

    .line 542
    add-int/lit8 v8, v8, 0x1

    .line 543
    add-int/2addr v7, v2

    .line 545
    :cond_f
    move/from16 v18, v15

    .line 548
    .end local v15    # "in_code":I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "pi":I
    .restart local v19    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 550
    add-int/lit8 v14, v14, 0x1

    move/from16 v20, v19

    .end local v19    # "pi":I
    .restart local v20    # "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto/16 :goto_1

    .line 555
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :cond_10
    return-void

    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_11
    move/from16 v21, v22

    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_2

    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_12
    move/from16 v21, v22

    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_5
.end method

.method protected err()Z
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 210
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    .line 211
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    .line 212
    .local v0, "frameCount":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;

    iget v1, v1, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->delay:I

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    .line 215
    :cond_0
    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    return v1
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    .line 357
    .local v0, "frameCount":I
    if-gtz v0, :cond_0

    .line 358
    const/4 v1, 0x0

    .line 360
    :goto_0
    return-object v1

    .line 359
    :cond_0
    rem-int/2addr p1, v0

    .line 360
    iget-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;

    iget-object v1, v1, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 898
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->loopCount:I

    return v0
.end method

.method public getRealFrameCount()I
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    if-eqz v0, :cond_0

    .line 653
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodedFrames:I

    .line 655
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 894
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 568
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 569
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    .line 570
    iput-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gct:[I

    .line 571
    iput-object v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lct:[I

    .line 572
    return-void
.end method

.method public isDecodeToTheEnd()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    return v0
.end method

.method protected read()I
    .locals 3

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 580
    .local v0, "curByte":I
    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 584
    :goto_0
    return v0

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 418
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    .line 419
    iget-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->calledOnce:Z

    if-eqz v2, :cond_0

    .line 420
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "decoder cannot be called more than once"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 422
    :cond_0
    iput-boolean v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->calledOnce:Z

    .line 423
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->init()V

    .line 424
    if-eqz p1, :cond_3

    .line 425
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    .line 427
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readHeader()V

    .line 428
    iget-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readContents()V

    .line 430
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v1

    .line 431
    .local v1, "frameCount":I
    if-gez v1, :cond_1

    .line 432
    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .end local v1    # "frameCount":I
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v2, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->recycle()V

    .line 445
    const/4 v2, 0x3

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 447
    :cond_2
    iget v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    return v2

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    iput v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 437
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->recycle()V

    goto :goto_0

    .line 440
    .end local v0    # "ex":Ljava/lang/OutOfMemoryError;
    :cond_3
    iput v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    goto :goto_0
.end method

.method protected readBitmap()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 772
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ix:I

    .line 773
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iy:I

    .line 774
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    .line 775
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ih:I

    .line 776
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    .line 777
    .local v0, "packed":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lctFlag:Z

    .line 778
    const/4 v2, 0x2

    and-int/lit8 v5, v0, 0x7

    shl-int/2addr v2, v5

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lctSize:I

    .line 782
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->interlace:Z

    .line 783
    iget-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lctFlag:Z

    if-eqz v2, :cond_6

    .line 784
    iget v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lctSize:I

    invoke-virtual {p0, v2}, Lcom/miui/internal/graphics/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lct:[I

    .line 785
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lct:[I

    iput-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    .line 792
    :cond_0
    :goto_2
    const/4 v1, 0x0

    .line 793
    .local v1, "save":I
    iget-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    if-eqz v2, :cond_1

    .line 794
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    iget v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transIndex:I

    aget v1, v2, v5

    .line 795
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    iget v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transIndex:I

    aput v4, v2, v5

    .line 797
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    if-nez v2, :cond_2

    .line 798
    iput v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 800
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 825
    :cond_3
    :goto_3
    return-void

    .end local v1    # "save":I
    :cond_4
    move v2, v4

    .line 777
    goto :goto_0

    :cond_5
    move v2, v4

    .line 782
    goto :goto_1

    .line 787
    :cond_6
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gct:[I

    iput-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    .line 788
    iget v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgIndex:I

    iget v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transIndex:I

    if-ne v2, v5, :cond_0

    .line 789
    iput v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgColor:I

    goto :goto_2

    .line 803
    .restart local v1    # "save":I
    :cond_7
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->decodeBitmapData()V

    .line 804
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    .line 805
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_3

    .line 809
    iget-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-nez v2, :cond_3

    .line 812
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->setPixels()V

    .line 815
    iget v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodedFrames:I

    iget v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mStartFrame:I

    if-lt v2, v3, :cond_8

    .line 816
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    new-instance v3, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;

    iget-object v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    invoke-direct {v3, v4, v5}, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 818
    :cond_8
    iget v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodedFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodedFrames:I

    .line 821
    iget-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    if-eqz v2, :cond_9

    .line 822
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    iget v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transIndex:I

    aput v1, v2, v3

    .line 824
    :cond_9
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->resetFrame()V

    goto :goto_3
.end method

.method protected readBlock()I
    .locals 6

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v3

    iput v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    .line 594
    const/4 v2, 0x0

    .line 595
    .local v2, "n":I
    iget v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    if-lez v3, :cond_1

    .line 598
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_0

    .line 599
    iget-object v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    iget v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 600
    .local v0, "count":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 608
    .end local v0    # "count":I
    :cond_0
    :goto_1
    iget v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_1

    .line 609
    const/4 v3, 0x1

    iput v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 612
    :cond_1
    return v2

    .line 603
    .restart local v0    # "count":I
    :cond_2
    add-int/2addr v2, v0

    goto :goto_0

    .line 605
    .end local v0    # "count":I
    :catch_0
    move-exception v1

    .line 606
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected readColorTable(I)[I
    .locals 16
    .param p1, "ncolors"    # I

    .prologue
    .line 622
    mul-int/lit8 v10, p1, 0x3

    .line 623
    .local v10, "nbytes":I
    const/4 v12, 0x0

    .line 624
    .local v12, "tab":[I
    new-array v2, v10, [B

    .line 625
    .local v2, "c":[B
    const/4 v9, 0x0

    .line 627
    .local v9, "n":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    const/4 v14, 0x0

    array-length v15, v2

    invoke-virtual {v13, v2, v14, v15}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 631
    :goto_0
    if-ge v9, v10, :cond_1

    .line 632
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    .line 644
    :cond_0
    return-object v12

    .line 628
    :catch_0
    move-exception v3

    .line 629
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 634
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v13, 0x100

    new-array v12, v13, [I

    .line 635
    const/4 v5, 0x0

    .line 636
    .local v5, "i":I
    const/4 v7, 0x0

    .local v7, "j":I
    move v8, v7

    .end local v7    # "j":I
    .local v8, "j":I
    move v6, v5

    .line 637
    .end local v5    # "i":I
    .local v6, "i":I
    :goto_1
    move/from16 v0, p1

    if-ge v6, v0, :cond_0

    .line 638
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget-byte v13, v2, v8

    and-int/lit16 v11, v13, 0xff

    .line 639
    .local v11, "r":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    aget-byte v13, v2, v7

    and-int/lit16 v4, v13, 0xff

    .line 640
    .local v4, "g":I
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget-byte v13, v2, v8

    and-int/lit16 v1, v13, 0xff

    .line 641
    .local v1, "b":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    const/high16 v13, -0x1000000

    shl-int/lit8 v14, v11, 0x10

    or-int/2addr v13, v14

    shl-int/lit8 v14, v4, 0x8

    or-int/2addr v13, v14

    or-int/2addr v13, v1

    aput v13, v12, v6

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    move v6, v5

    .line 642
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_1
.end method

.method protected readContents()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 663
    const/4 v5, 0x0

    iput v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodedFrames:I

    .line 664
    const/4 v2, 0x0

    .line 665
    .local v2, "done":Z
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v5

    if-nez v5, :cond_1

    .line 666
    iget-boolean v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v5, :cond_2

    .line 723
    :cond_1
    return-void

    .line 669
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v1

    .line 670
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 720
    iput v10, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    goto :goto_0

    .line 673
    :sswitch_0
    iget-object v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 675
    .local v3, "framesBeforeRead":I
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBitmap()V

    .line 677
    iget-object v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-le v5, v3, :cond_3

    .line 678
    iget-wide v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodeBmSize:J

    iget-object v5, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    iget-object v8, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v5, v8

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodeBmSize:J

    .line 680
    :cond_3
    iget-wide v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodeBmSize:J

    iget-wide v8, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 681
    const/4 v2, 0x1

    goto :goto_0

    .line 685
    .end local v3    # "framesBeforeRead":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v1

    .line 686
    sparse-switch v1, :sswitch_data_1

    .line 709
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    goto :goto_0

    .line 688
    :sswitch_2
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    .line 691
    :sswitch_3
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBlock()I

    .line 692
    const-string v0, ""

    .line 693
    .local v0, "app":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v5, 0xb

    if-ge v4, v5, :cond_4

    .line 694
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    aget-byte v6, v6, v4

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 696
    :cond_4
    const-string v5, "NETSCAPE2.0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 697
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readNetscapeExt()V

    goto/16 :goto_0

    .line 699
    :cond_5
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    goto/16 :goto_0

    .line 703
    .end local v0    # "app":Ljava/lang/String;
    .end local v4    # "i":I
    :sswitch_4
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    goto/16 :goto_0

    .line 706
    :sswitch_5
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->skip()V

    goto/16 :goto_0

    .line 713
    :sswitch_6
    const/4 v2, 0x1

    .line 715
    iput-boolean v10, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    goto/16 :goto_0

    .line 670
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    .line 686
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 729
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    .line 730
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    .line 731
    .local v0, "packed":I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    .line 732
    iget v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    if-nez v2, :cond_0

    .line 733
    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    .line 735
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    .line 736
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    .line 737
    iget v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    if-gtz v1, :cond_1

    .line 738
    const/16 v1, 0x64

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    .line 740
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transIndex:I

    .line 741
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    .line 742
    return-void

    .line 735
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readHeader()V
    .locals 4

    .prologue
    .line 748
    iget-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v2, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    const-string v1, ""

    .line 753
    .local v1, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 756
    :cond_2
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 757
    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->status:I

    goto :goto_0

    .line 761
    :cond_3
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readLSD()V

    .line 762
    iget-boolean v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_0

    .line 763
    iget v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gctSize:I

    invoke-virtual {p0, v2}, Lcom/miui/internal/graphics/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gct:[I

    .line 764
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gct:[I

    iget v3, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgColor:I

    goto :goto_0
.end method

.method protected readLSD()V
    .locals 3

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    .line 833
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    .line 835
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    .line 836
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gctFlag:Z

    .line 839
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->gctSize:I

    .line 840
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgIndex:I

    .line 841
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixelAspect:I

    .line 842
    return-void

    .line 836
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 849
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBlock()I

    .line 850
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 852
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 853
    .local v0, "b1":I
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 854
    .local v1, "b2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->loopCount:I

    .line 856
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    :cond_1
    iget v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 2

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 169
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 171
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 172
    iget-object v2, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;

    invoke-virtual {v2}, Lcom/miui/internal/graphics/gif/GifDecoder$GifFrame;->recycle()V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public requestCancelDecode()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mCancel:Z

    .line 369
    invoke-direct {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->requestCancel()V

    .line 370
    return-void
.end method

.method protected resetFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 871
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastDispose:I

    .line 872
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ix:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrx:I

    .line 873
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iy:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lry:I

    .line 874
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrw:I

    .line 875
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->ih:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrh:I

    .line 876
    iget-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 877
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBgColor:I

    .line 878
    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->dispose:I

    .line 879
    iput-boolean v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    .line 880
    iput v1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->delay:I

    .line 881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->lct:[I

    .line 882
    return-void
.end method

.method public setMaxDecodeSize(J)V
    .locals 1
    .param p1, "maxDecodeSize"    # J

    .prologue
    .line 183
    iput-wide p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    .line 184
    return-void
.end method

.method protected setPixels()V
    .locals 25

    .prologue
    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->dest:[I

    if-nez v1, :cond_0

    .line 252
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->dest:[I

    .line 255
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastDispose:I

    if-lez v1, :cond_5

    .line 256
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastDispose:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v1

    add-int/lit8 v20, v1, -0x2

    .line 259
    .local v20, "n":I
    if-lez v20, :cond_3

    .line 260
    add-int/lit8 v1, v20, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/internal/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 261
    .local v9, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->dest:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 270
    .end local v9    # "bm":Landroid/graphics/Bitmap;
    .end local v20    # "n":I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 272
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastDispose:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 274
    const/4 v10, 0x0

    .line 275
    .local v10, "c":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->transparency:Z

    if-nez v1, :cond_2

    .line 276
    move-object/from16 v0, p0

    iget v10, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBgColor:I

    .line 278
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->lry:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    mul-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrx:I

    add-int v22, v1, v2

    .line 279
    .local v22, "start":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrh:I

    if-ge v14, v1, :cond_5

    .line 280
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->lrw:I

    add-int v13, v22, v1

    .line 281
    .local v13, "end":I
    move/from16 v18, v22

    .local v18, "k":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v13, :cond_4

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->dest:[I

    aput v10, v1, v18

    .line 281
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 266
    .end local v10    # "c":I
    .end local v13    # "end":I
    .end local v14    # "i":I
    .end local v18    # "k":I
    .end local v22    # "start":I
    .restart local v20    # "n":I
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 267
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->dest:[I

    goto :goto_0

    .line 284
    .end local v20    # "n":I
    .restart local v10    # "c":I
    .restart local v13    # "end":I
    .restart local v14    # "i":I
    .restart local v18    # "k":I
    .restart local v22    # "start":I
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    add-int v22, v22, v1

    .line 279
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 290
    .end local v10    # "c":I
    .end local v13    # "end":I
    .end local v14    # "i":I
    .end local v18    # "k":I
    .end local v22    # "start":I
    :cond_5
    const/16 v21, 0x1

    .line 291
    .local v21, "pass":I
    const/16 v16, 0x8

    .line 292
    .local v16, "inc":I
    const/4 v15, 0x0

    .line 293
    .local v15, "iline":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->ih:I

    if-ge v14, v1, :cond_b

    .line 294
    move/from16 v19, v14

    .line 295
    .local v19, "line":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->interlace:Z

    if-eqz v1, :cond_7

    .line 296
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->ih:I

    if-lt v15, v1, :cond_6

    .line 297
    add-int/lit8 v21, v21, 0x1

    .line 298
    packed-switch v21, :pswitch_data_0

    .line 314
    :cond_6
    :goto_4
    move/from16 v19, v15

    .line 315
    add-int v15, v15, v16

    .line 317
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->iy:I

    add-int v19, v19, v1

    .line 318
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    move/from16 v0, v19

    if-ge v0, v1, :cond_a

    .line 319
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    mul-int v18, v19, v1

    .line 320
    .restart local v18    # "k":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->ix:I

    add-int v12, v18, v1

    .line 321
    .local v12, "dx":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    add-int v11, v12, v1

    .line 322
    .local v11, "dlim":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    add-int v1, v1, v18

    if-ge v1, v11, :cond_8

    .line 323
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    add-int v11, v18, v1

    .line 325
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->iw:I

    mul-int v23, v14, v1

    .local v23, "sx":I
    move/from16 v24, v23

    .line 326
    .end local v23    # "sx":I
    .local v24, "sx":I
    :goto_5
    if-ge v12, v11, :cond_a

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->pixels:[B

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "sx":I
    .restart local v23    # "sx":I
    aget-byte v1, v1, v24

    and-int/lit16 v0, v1, 0xff

    move/from16 v17, v0

    .line 329
    .local v17, "index":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->act:[I

    aget v10, v1, v17

    .line 330
    .restart local v10    # "c":I
    if-eqz v10, :cond_9

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->dest:[I

    aput v10, v1, v12

    .line 333
    :cond_9
    add-int/lit8 v12, v12, 0x1

    move/from16 v24, v23

    .line 334
    .end local v23    # "sx":I
    .restart local v24    # "sx":I
    goto :goto_5

    .line 300
    .end local v10    # "c":I
    .end local v11    # "dlim":I
    .end local v12    # "dx":I
    .end local v17    # "index":I
    .end local v18    # "k":I
    .end local v24    # "sx":I
    :pswitch_0
    const/4 v15, 0x4

    .line 301
    goto :goto_4

    .line 303
    :pswitch_1
    const/4 v15, 0x2

    .line 304
    const/16 v16, 0x4

    .line 305
    goto :goto_4

    .line 307
    :pswitch_2
    const/4 v15, 0x1

    .line 308
    const/16 v16, 0x2

    .line 309
    goto :goto_4

    .line 293
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 341
    .end local v19    # "line":I
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->mDecodedFrames:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->mStartFrame:I

    if-gt v1, v2, :cond_c

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_c

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 347
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->dest:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/internal/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 348
    return-void

    .line 298
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setStartFrame(I)V
    .locals 0
    .param p1, "startFrame"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->mStartFrame:I

    .line 166
    return-void
.end method

.method protected skip()V
    .locals 1

    .prologue
    .line 889
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->readBlock()I

    .line 890
    iget v0, p0, Lcom/miui/internal/graphics/gif/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    :cond_1
    return-void
.end method
