.class Lmiui/util/DirectIndexedFile$FileHeader;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileHeader"
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static final FILE_TAG:[B


# instance fields
.field private mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x46t
        0x20t
    .end array-data
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "dataCount"    # I

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    new-array v0, p1, [Lmiui/util/DirectIndexedFile$DescriptionPair;

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    .line 534
    return-void
.end method

.method synthetic constructor <init>(ILmiui/util/DirectIndexedFile$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lmiui/util/DirectIndexedFile$1;

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$FileHeader;-><init>(I)V

    return-void
.end method

.method static synthetic access$200(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;
    .locals 1
    .param p0, "x0"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$FileHeader;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$FileHeader;

    .prologue
    .line 523
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    return-object v0
.end method

.method static synthetic access$3600(Lmiui/util/DirectIndexedFile$FileHeader;Ljava/io/DataOutput;)I
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$FileHeader;
    .param p1, "x1"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$FileHeader;->write(Ljava/io/DataOutput;)I

    move-result v0

    return v0
.end method

.method private static read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;
    .locals 8
    .param p0, "i"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    sget-object v6, Lmiui/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    array-length v6, v6

    new-array v1, v6, [B

    .line 538
    .local v1, "fileTag":[B
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 539
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v6

    aput-byte v6, v1, v3

    .line 538
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 541
    :cond_0
    sget-object v6, Lmiui/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_1

    .line 542
    new-instance v6, Ljava/io/IOException;

    const-string v7, "File tag unmatched, file may be corrupt"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 544
    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .line 545
    .local v5, "version":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 546
    new-instance v6, Ljava/io/IOException;

    const-string v7, "File version unmatched, please upgrade your reader"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 549
    :cond_2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 550
    .local v0, "count":I
    new-instance v2, Lmiui/util/DirectIndexedFile$FileHeader;

    invoke-direct {v2, v0}, Lmiui/util/DirectIndexedFile$FileHeader;-><init>(I)V

    .line 551
    .local v2, "header":Lmiui/util/DirectIndexedFile$FileHeader;
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 552
    iget-object v6, v2, Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    # invokes: Lmiui/util/DirectIndexedFile$DescriptionPair;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$000(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v7

    aput-object v7, v6, v4

    .line 551
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 554
    :cond_3
    return-object v2
.end method

.method private write(Ljava/io/DataOutput;)I
    .locals 6
    .param p1, "o"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    sget-object v5, Lmiui/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v5, 0x4

    .line 559
    .local v4, "written":I
    if-eqz p1, :cond_0

    .line 560
    sget-object v5, Lmiui/util/DirectIndexedFile$FileHeader;->FILE_TAG:[B

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->write([B)V

    .line 561
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 562
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    array-length v5, v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 564
    :cond_0
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;

    .local v0, "arr$":[Lmiui/util/DirectIndexedFile$DescriptionPair;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 565
    .local v3, "mDescriptionOffset":Lmiui/util/DirectIndexedFile$DescriptionPair;
    # invokes: Lmiui/util/DirectIndexedFile$DescriptionPair;->write(Ljava/io/DataOutput;)I
    invoke-static {v3, p1}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$100(Lmiui/util/DirectIndexedFile$DescriptionPair;Ljava/io/DataOutput;)I

    move-result v5

    add-int/2addr v4, v5

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    .end local v3    # "mDescriptionOffset":Lmiui/util/DirectIndexedFile$DescriptionPair;
    :cond_1
    return v4
.end method
