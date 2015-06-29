.class Lmiui/util/DirectIndexedFile$DescriptionPair;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescriptionPair"
.end annotation


# instance fields
.field private mDataItemDescriptionOffset:J

.field private mIndexGroupDescriptionOffset:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1
    .param p1, "indexGroupDescriptionOffset"    # J
    .param p3, "dataItemDescriptionOffset"    # J

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    .line 505
    iput-wide p3, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    .line 506
    return-void
.end method

.method synthetic constructor <init>(JJLmiui/util/DirectIndexedFile$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Lmiui/util/DirectIndexedFile$1;

    .prologue
    .line 499
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/util/DirectIndexedFile$DescriptionPair;-><init>(JJ)V

    return-void
.end method

.method static synthetic access$000(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;
    .locals 1
    .param p0, "x0"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$DescriptionPair;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lmiui/util/DirectIndexedFile$DescriptionPair;Ljava/io/DataOutput;)I
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$DescriptionPair;
    .param p1, "x1"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$DescriptionPair;->write(Ljava/io/DataOutput;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lmiui/util/DirectIndexedFile$DescriptionPair;)J
    .locals 2
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$DescriptionPair;

    .prologue
    .line 499
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    return-wide v0
.end method

.method static synthetic access$502(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$DescriptionPair;
    .param p1, "x1"    # J

    .prologue
    .line 499
    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    return-wide p1
.end method

.method static synthetic access$800(Lmiui/util/DirectIndexedFile$DescriptionPair;)J
    .locals 2
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$DescriptionPair;

    .prologue
    .line 499
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    return-wide v0
.end method

.method static synthetic access$802(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$DescriptionPair;
    .param p1, "x1"    # J

    .prologue
    .line 499
    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    return-wide p1
.end method

.method private static read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DescriptionPair;
    .locals 5
    .param p0, "i"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 510
    .local v2, "indexGroupDescriptionOffset":J
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 511
    .local v0, "dataItemDescriptionOffset":J
    new-instance v4, Lmiui/util/DirectIndexedFile$DescriptionPair;

    invoke-direct {v4, v2, v3, v0, v1}, Lmiui/util/DirectIndexedFile$DescriptionPair;-><init>(JJ)V

    return-object v4
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
    .line 515
    if-eqz p1, :cond_0

    .line 516
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 517
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 519
    :cond_0
    const/16 v0, 0x10

    return v0
.end method
