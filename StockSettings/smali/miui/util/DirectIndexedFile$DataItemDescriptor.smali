.class Lmiui/util/DirectIndexedFile$DataItemDescriptor;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataItemDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    }
.end annotation


# static fields
.field private static sBuffer:[B


# instance fields
.field private mIndexSize:B

.field private mLengthSize:B

.field private mOffset:J

.field private mOffsetSize:B

.field private mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    return-void
.end method

.method private constructor <init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V
    .locals 1
    .param p1, "type"    # Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    .param p2, "indexSize"    # B
    .param p3, "lengthSize"    # B
    .param p4, "offsetSize"    # B
    .param p5, "offset"    # J

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 145
    iput-byte p2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    .line 146
    iput-byte p3, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 147
    iput-byte p4, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    .line 148
    iput-wide p5, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJLmiui/util/DirectIndexedFile$1;)V
    .locals 1
    .param p1, "x0"    # Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    .param p2, "x1"    # B
    .param p3, "x2"    # B
    .param p4, "x3"    # B
    .param p5, "x4"    # J
    .param p7, "x5"    # Lmiui/util/DirectIndexedFile$1;

    .prologue
    .line 103
    invoke-direct/range {p0 .. p6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V

    return-void
.end method

.method static synthetic access$1100(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 1
    .param p0, "x0"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    .prologue
    .line 103
    iget-byte v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    return v0
.end method

.method static synthetic access$1202(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B
    .locals 0
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .param p1, "x1"    # B

    .prologue
    .line 103
    iput-byte p1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    return p1
.end method

.method static synthetic access$1400(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)J
    .locals 2
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    .prologue
    .line 103
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    return-wide v0
.end method

.method static synthetic access$1402(Lmiui/util/DirectIndexedFile$DataItemDescriptor;J)J
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .param p1, "x1"    # J

    .prologue
    .line 103
    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    return-wide p1
.end method

.method static synthetic access$1500(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .param p1, "x1"    # Lmiui/util/DirectIndexedFile$InputFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readDataItems(Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    .prologue
    .line 103
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    return-object v0
.end method

.method static synthetic access$1700(Ljava/io/DataInput;I)J
    .locals 2
    .param p0, "x0"    # Ljava/io/DataInput;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .param p1, "x1"    # Lmiui/util/DirectIndexedFile$InputFile;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readSingleDataItem(Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(I)B
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 103
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;)I
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .param p1, "x1"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->write(Ljava/io/DataOutput;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;Ljava/util/List;)I
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .param p1, "x1"    # Ljava/io/DataOutput;
    .param p2, "x2"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeDataItems(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private static aquireBuffer(I)[B
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 125
    const-class v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    monitor-enter v2

    .line 126
    :try_start_0
    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    if-eqz v1, :cond_0

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    array-length v1, v1

    if-ge v1, p0, :cond_1

    .line 127
    :cond_0
    new-array v1, p0, [B

    sput-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 129
    :cond_1
    sget-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 130
    .local v0, "bs":[B
    const/4 v1, 0x0

    sput-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 131
    monitor-exit v2

    return-object v0

    .line 132
    .end local v0    # "bs":[B
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getSizeOf(I)B
    .locals 7
    .param p0, "length"    # I

    .prologue
    const/16 v6, 0x8

    .line 484
    const/4 v2, 0x0

    .line 485
    .local v2, "sizeOf":B
    mul-int/lit8 v3, p0, 0x2

    int-to-long v0, v3

    .local v0, "size":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 486
    add-int/lit8 v3, v2, 0x1

    int-to-byte v2, v3

    .line 485
    shr-long/2addr v0, v6

    goto :goto_0

    .line 489
    :cond_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 490
    const/4 v2, 0x4

    .line 495
    :cond_1
    :goto_1
    return v2

    .line 491
    :cond_2
    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    if-ge v2, v6, :cond_1

    .line 492
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private static read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 8
    .param p0, "i"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->values()[Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    aget-object v2, v0, v1

    .line 153
    .local v2, "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    .line 154
    .local v3, "indexSize":B
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v4

    .line 155
    .local v4, "lengthSize":B
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v5

    .line 156
    .local v5, "offsetSize":B
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v6

    .line 157
    .local v6, "offset":J
    new-instance v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    invoke-direct/range {v1 .. v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJ)V

    return-object v1
.end method

.method private static readAccordingToSize(Ljava/io/DataInput;I)J
    .locals 5
    .param p0, "i"    # Ljava/io/DataInput;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    packed-switch p1, :pswitch_data_0

    .line 478
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsuppoert size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 466
    :pswitch_1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    int-to-long v0, v2

    .line 480
    .local v0, "data":J
    :goto_0
    return-wide v0

    .line 469
    .end local v0    # "data":J
    :pswitch_2
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    int-to-long v0, v2

    .line 470
    .restart local v0    # "data":J
    goto :goto_0

    .line 472
    .end local v0    # "data":J
    :pswitch_3
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    int-to-long v0, v2

    .line 473
    .restart local v0    # "data":J
    goto :goto_0

    .line 475
    .end local v0    # "data":J
    :pswitch_4
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 476
    .restart local v0    # "data":J
    goto :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private readDataItems(Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    .locals 5
    .param p1, "file"    # Lmiui/util/DirectIndexedFile$InputFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "ret":[Ljava/lang/Object;
    sget-object v1, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 440
    :goto_0
    return-object v0

    .line 414
    :pswitch_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 415
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    .line 418
    :pswitch_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 419
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    .line 422
    :pswitch_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 423
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    .line 426
    :pswitch_3
    new-array v0, v3, [Ljava/lang/Object;

    .line 427
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    .line 434
    :pswitch_4
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 435
    invoke-direct {p0, p1, v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readSingleDataItem(Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private readSingleDataItem(Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    .locals 11
    .param p1, "file"    # Lmiui/util/DirectIndexedFile$InputFile;
    .param p2, "dataItemIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 358
    const/4 v6, 0x0

    .line 359
    .local v6, "ret":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 361
    .local v2, "buf":[B
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->getFilePointer()J

    move-result-wide v0

    .line 362
    .local v0, "basePos":J
    if-eqz p2, :cond_0

    .line 363
    iget-byte v7, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    mul-int/2addr v7, p2

    int-to-long v8, v7

    add-long/2addr v8, v0

    invoke-interface {p1, v8, v9}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 365
    :cond_0
    iget-byte v7, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    invoke-static {p1, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v8

    add-long/2addr v8, v0

    invoke-interface {p1, v8, v9}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 367
    sget-object v7, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v8, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 406
    .end local v6    # "ret":Ljava/lang/Object;
    :cond_1
    :goto_0
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->releaseBuffer([B)V

    .line 407
    return-object v6

    .line 369
    .restart local v6    # "ret":Ljava/lang/Object;
    :pswitch_0
    iget-byte v7, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v8

    long-to-int v5, v8

    .line 370
    .local v5, "length":I
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->aquireBuffer(I)[B

    move-result-object v2

    .line 371
    invoke-interface {p1, v2, v10, v5}, Lmiui/util/DirectIndexedFile$InputFile;->readFully([BII)V

    .line 372
    new-instance v6, Ljava/lang/String;

    .end local v6    # "ret":Ljava/lang/Object;
    invoke-direct {v6, v2, v10, v5}, Ljava/lang/String;-><init>([BII)V

    .line 373
    .local v6, "ret":Ljava/lang/String;
    goto :goto_0

    .line 376
    .end local v5    # "length":I
    .local v6, "ret":Ljava/lang/Object;
    :pswitch_1
    iget-byte v7, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v8

    long-to-int v7, v8

    new-array v2, v7, [B

    .line 377
    invoke-interface {p1, v2}, Lmiui/util/DirectIndexedFile$InputFile;->readFully([B)V

    .line 378
    move-object v6, v2

    .line 379
    .local v6, "ret":[B
    const/4 v2, 0x0

    .line 380
    goto :goto_0

    .line 382
    .local v6, "ret":Ljava/lang/Object;
    :pswitch_2
    iget-byte v7, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v8

    long-to-int v7, v8

    new-array v3, v7, [S

    .line 383
    .local v3, "d":[S
    move-object v6, v3

    .line 384
    .local v6, "ret":[S
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_1

    .line 385
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readShort()S

    move-result v7

    aput-short v7, v3, v4

    .line 384
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 390
    .end local v3    # "d":[S
    .end local v4    # "j":I
    .local v6, "ret":Ljava/lang/Object;
    :pswitch_3
    iget-byte v7, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v8

    long-to-int v7, v8

    new-array v3, v7, [I

    .line 391
    .local v3, "d":[I
    move-object v6, v3

    .line 392
    .local v6, "ret":[I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_2
    array-length v7, v3

    if-ge v4, v7, :cond_1

    .line 393
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v7

    aput v7, v3, v4

    .line 392
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 398
    .end local v3    # "d":[I
    .end local v4    # "j":I
    .local v6, "ret":Ljava/lang/Object;
    :pswitch_4
    iget-byte v7, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-static {p1, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J

    move-result-wide v8

    long-to-int v7, v8

    new-array v3, v7, [J

    .line 399
    .local v3, "d":[J
    move-object v6, v3

    .line 400
    .local v6, "ret":[J
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_3
    array-length v7, v3

    if-ge v4, v7, :cond_1

    .line 401
    invoke-interface {p1}, Lmiui/util/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v8

    aput-wide v8, v3, v4

    .line 400
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static releaseBuffer([B)V
    .locals 3
    .param p0, "buffer"    # [B

    .prologue
    .line 136
    const-class v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    monitor-enter v1

    .line 137
    if-eqz p0, :cond_1

    :try_start_0
    sget-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    array-length v0, v0

    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 138
    :cond_0
    sput-object p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->sBuffer:[B

    .line 140
    :cond_1
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private write(Ljava/io/DataOutput;)I
    .locals 2
    .param p1, "o"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 163
    iget-byte v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 164
    iget-byte v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 165
    iget-byte v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 166
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 168
    :cond_0
    const/16 v0, 0xc

    return v0
.end method

.method private static writeAccordingToSize(Ljava/io/DataOutput;IJ)V
    .locals 4
    .param p0, "o"    # Ljava/io/DataOutput;
    .param p1, "size"    # I
    .param p2, "data"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    packed-switch p1, :pswitch_data_0

    .line 458
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsuppoert size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :pswitch_1
    long-to-int v0, p2

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 460
    :goto_0
    return-void

    .line 449
    :pswitch_2
    long-to-int v0, p2

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_0

    .line 452
    :pswitch_3
    long-to-int v0, p2

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    .line 455
    :pswitch_4
    invoke-interface {p0, p2, p3}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private writeDataItems(Ljava/io/DataOutput;Ljava/util/List;)I
    .locals 20
    .param p1, "o"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    .local p2, "dataItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/16 v16, 0x0

    .line 237
    .local v16, "written":I
    sget-object v17, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 354
    :cond_0
    :goto_0
    return v16

    .line 239
    :pswitch_0
    if-eqz p1, :cond_1

    .line 240
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Byte;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Byte;->byteValue()B

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 242
    :cond_1
    add-int/lit8 v16, v16, 0x1

    .line 243
    goto :goto_0

    .line 245
    :pswitch_1
    if-eqz p1, :cond_2

    .line 246
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Short;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Short;->shortValue()S

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeShort(I)V

    .line 248
    :cond_2
    add-int/lit8 v16, v16, 0x2

    .line 249
    goto :goto_0

    .line 251
    :pswitch_2
    if-eqz p1, :cond_3

    .line 252
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 254
    :cond_3
    add-int/lit8 v16, v16, 0x4

    .line 255
    goto :goto_0

    .line 257
    :pswitch_3
    if-eqz p1, :cond_4

    .line 258
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 260
    :cond_4
    add-int/lit8 v16, v16, 0x8

    .line 261
    goto :goto_0

    .line 263
    :pswitch_4
    if-eqz p1, :cond_5

    .line 264
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 266
    :cond_5
    add-int/lit8 v16, v16, 0x4

    .line 267
    invoke-direct/range {p0 .. p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v17

    add-int/lit8 v16, v17, 0x4

    .line 269
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "dataItem":Ljava/lang/Object;
    move-object v7, v8

    .line 270
    check-cast v7, Ljava/lang/String;

    .line 271
    .local v7, "d":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 272
    .local v6, "bs":[B
    if-eqz p1, :cond_6

    .line 273
    move-object/from16 v0, p0

    iget-byte v0, v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move/from16 v17, v0

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 274
    move-object v4, v6

    .local v4, "arr$":[B
    array-length v14, v4

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_2
    if-ge v11, v14, :cond_6

    aget-byte v5, v4, v11

    .line 275
    .local v5, "b":B
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/io/DataOutput;->writeByte(I)V

    .line 274
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 278
    .end local v4    # "arr$":[B
    .end local v5    # "b":B
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    :cond_6
    move-object/from16 v0, p0

    iget-byte v0, v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move/from16 v17, v0

    array-length v0, v6

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v16, v16, v17

    .line 279
    goto :goto_1

    .line 282
    .end local v6    # "bs":[B
    .end local v7    # "d":Ljava/lang/String;
    .end local v8    # "dataItem":Ljava/lang/Object;
    :pswitch_5
    if-eqz p1, :cond_7

    .line 283
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 285
    :cond_7
    add-int/lit8 v16, v16, 0x4

    .line 286
    invoke-direct/range {p0 .. p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v17

    add-int/lit8 v16, v17, 0x4

    .line 288
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 289
    .restart local v8    # "dataItem":Ljava/lang/Object;
    check-cast v8, [B

    .end local v8    # "dataItem":Ljava/lang/Object;
    move-object v7, v8

    check-cast v7, [B

    .line 290
    .local v7, "d":[B
    if-eqz p1, :cond_8

    .line 291
    move-object/from16 v0, p0

    iget-byte v0, v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move/from16 v17, v0

    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 292
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/io/DataOutput;->write([B)V

    .line 294
    :cond_8
    move-object/from16 v0, p0

    iget-byte v0, v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move/from16 v17, v0

    array-length v0, v7

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v16, v16, v17

    .line 295
    goto :goto_3

    .line 298
    .end local v7    # "d":[B
    .end local v10    # "i$":Ljava/util/Iterator;
    :pswitch_6
    if-eqz p1, :cond_9

    .line 299
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 301
    :cond_9
    add-int/lit8 v16, v16, 0x4

    .line 302
    invoke-direct/range {p0 .. p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v17

    add-int/lit8 v16, v17, 0x4

    .line 304
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 305
    .restart local v8    # "dataItem":Ljava/lang/Object;
    check-cast v8, [S

    .end local v8    # "dataItem":Ljava/lang/Object;
    move-object v7, v8

    check-cast v7, [S

    .line 306
    .local v7, "d":[S
    if-eqz p1, :cond_a

    .line 307
    move-object/from16 v0, p0

    iget-byte v0, v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move/from16 v17, v0

    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 308
    move-object v4, v7

    .local v4, "arr$":[S
    array-length v14, v4

    .restart local v14    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_5
    if-ge v11, v14, :cond_a

    aget-short v15, v4, v11

    .line 309
    .local v15, "s":S
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/io/DataOutput;->writeShort(I)V

    .line 308
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 312
    .end local v4    # "arr$":[S
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "s":S
    :cond_a
    move-object/from16 v0, p0

    iget-byte v0, v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move/from16 v17, v0

    array-length v0, v7

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    add-int v16, v16, v17

    .line 313
    goto :goto_4

    .line 316
    .end local v7    # "d":[S
    :pswitch_7
    if-eqz p1, :cond_b

    .line 317
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 319
    :cond_b
    add-int/lit8 v16, v16, 0x4

    .line 320
    invoke-direct/range {p0 .. p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v17

    add-int/lit8 v16, v17, 0x4

    .line 322
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 323
    .restart local v8    # "dataItem":Ljava/lang/Object;
    check-cast v8, [I

    .end local v8    # "dataItem":Ljava/lang/Object;
    move-object v7, v8

    check-cast v7, [I

    .line 324
    .local v7, "d":[I
    if-eqz p1, :cond_c

    .line 325
    move-object/from16 v0, p0

    iget-byte v0, v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move/from16 v17, v0

    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 326
    move-object v4, v7

    .local v4, "arr$":[I
    array-length v14, v4

    .restart local v14    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_7
    if-ge v11, v14, :cond_c

    aget v9, v4, v11

    .line 327
    .local v9, "i":I
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/io/DataOutput;->writeInt(I)V

    .line 326
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 330
    .end local v4    # "arr$":[I
    .end local v9    # "i":I
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    :cond_c
    move-object/from16 v0, p0

    iget-byte v0, v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move/from16 v17, v0

    array-length v0, v7

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x4

    add-int v17, v17, v18

    add-int v16, v16, v17

    .line 331
    goto :goto_6

    .line 334
    .end local v7    # "d":[I
    :pswitch_8
    if-eqz p1, :cond_d

    .line 335
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 337
    :cond_d
    add-int/lit8 v16, v16, 0x4

    .line 338
    invoke-direct/range {p0 .. p2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v17

    add-int/lit8 v16, v17, 0x4

    .line 340
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 341
    .restart local v8    # "dataItem":Ljava/lang/Object;
    check-cast v8, [J

    .end local v8    # "dataItem":Ljava/lang/Object;
    move-object v7, v8

    check-cast v7, [J

    .line 342
    .local v7, "d":[J
    if-eqz p1, :cond_e

    .line 343
    move-object/from16 v0, p0

    iget-byte v0, v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move/from16 v17, v0

    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 344
    move-object v4, v7

    .local v4, "arr$":[J
    array-length v14, v4

    .restart local v14    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_9
    if-ge v11, v14, :cond_e

    aget-wide v12, v4, v11

    .line 345
    .local v12, "l":J
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Ljava/io/DataOutput;->writeLong(J)V

    .line 344
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 348
    .end local v4    # "arr$":[J
    .end local v11    # "i$":I
    .end local v12    # "l":J
    .end local v14    # "len$":I
    :cond_e
    move-object/from16 v0, p0

    iget-byte v0, v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    move/from16 v17, v0

    array-length v0, v7

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x8

    add-int v17, v17, v18

    add-int v16, v16, v17

    .line 349
    goto :goto_8

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private writeOffsets(Ljava/io/DataOutput;Ljava/util/List;)I
    .locals 10
    .param p1, "o"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "dataItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    if-eqz v6, :cond_0

    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    if-nez v6, :cond_3

    .line 173
    :cond_0
    const/4 v3, 0x0

    .line 174
    .local v3, "maxLength":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v4, v6, 0x4

    .line 175
    .local v4, "offset":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "dataItem":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 177
    .local v2, "length":I
    sget-object v6, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v7, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 199
    .end local v0    # "dataItem":Ljava/lang/Object;
    :goto_1
    if-ge v3, v2, :cond_1

    .line 200
    move v3, v2

    goto :goto_0

    .line 179
    .restart local v0    # "dataItem":Ljava/lang/Object;
    :pswitch_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "dataItem":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v2, v6

    .line 180
    add-int/2addr v4, v2

    .line 181
    goto :goto_1

    .line 183
    .restart local v0    # "dataItem":Ljava/lang/Object;
    :pswitch_1
    check-cast v0, [B

    .end local v0    # "dataItem":Ljava/lang/Object;
    check-cast v0, [B

    array-length v2, v0

    .line 184
    add-int/2addr v4, v2

    .line 185
    goto :goto_1

    .line 187
    .restart local v0    # "dataItem":Ljava/lang/Object;
    :pswitch_2
    check-cast v0, [S

    .end local v0    # "dataItem":Ljava/lang/Object;
    check-cast v0, [S

    array-length v2, v0

    .line 188
    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v4, v6

    .line 189
    goto :goto_1

    .line 191
    .restart local v0    # "dataItem":Ljava/lang/Object;
    :pswitch_3
    check-cast v0, [I

    .end local v0    # "dataItem":Ljava/lang/Object;
    check-cast v0, [I

    array-length v2, v0

    .line 192
    mul-int/lit8 v6, v2, 0x4

    add-int/2addr v4, v6

    .line 193
    goto :goto_1

    .line 195
    .restart local v0    # "dataItem":Ljava/lang/Object;
    :pswitch_4
    check-cast v0, [J

    .end local v0    # "dataItem":Ljava/lang/Object;
    check-cast v0, [J

    array-length v2, v0

    .line 196
    mul-int/lit8 v6, v2, 0x8

    add-int/2addr v4, v6

    goto :goto_1

    .line 203
    .end local v2    # "length":I
    :cond_2
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B

    move-result v6

    iput-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    .line 204
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 205
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B

    move-result v6

    iput-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    .line 208
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "maxLength":I
    .end local v4    # "offset":I
    :cond_3
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    mul-int v5, v6, v7

    .line 209
    .local v5, "written":I
    if-eqz p1, :cond_4

    .line 210
    move v4, v5

    .line 211
    .restart local v4    # "offset":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 212
    .restart local v0    # "dataItem":Ljava/lang/Object;
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffsetSize:B

    int-to-long v8, v4

    invoke-static {p1, v6, v8, v9}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeAccordingToSize(Ljava/io/DataOutput;IJ)V

    .line 213
    sget-object v6, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v7, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto :goto_2

    .line 215
    :pswitch_5
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    check-cast v0, Ljava/lang/String;

    .end local v0    # "dataItem":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 216
    goto :goto_2

    .line 218
    .restart local v0    # "dataItem":Ljava/lang/Object;
    :pswitch_6
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    check-cast v0, [B

    .end local v0    # "dataItem":Ljava/lang/Object;
    check-cast v0, [B

    array-length v7, v0

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 219
    goto :goto_2

    .line 221
    .restart local v0    # "dataItem":Ljava/lang/Object;
    :pswitch_7
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    check-cast v0, [S

    .end local v0    # "dataItem":Ljava/lang/Object;
    check-cast v0, [S

    array-length v7, v0

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 222
    goto :goto_2

    .line 224
    .restart local v0    # "dataItem":Ljava/lang/Object;
    :pswitch_8
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    check-cast v0, [I

    .end local v0    # "dataItem":Ljava/lang/Object;
    check-cast v0, [I

    array-length v7, v0

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 225
    goto :goto_2

    .line 227
    .restart local v0    # "dataItem":Ljava/lang/Object;
    :pswitch_9
    iget-byte v6, p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mLengthSize:B

    check-cast v0, [J

    .end local v0    # "dataItem":Ljava/lang/Object;
    check-cast v0, [J

    array-length v7, v0

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    goto :goto_2

    .line 232
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "offset":I
    :cond_4
    return v5

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 213
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
