.class Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexGroupDescriptor"
.end annotation


# instance fields
.field mMaxIndex:I

.field mMinIndex:I

.field mOffset:J


# direct methods
.method private constructor <init>(IIJ)V
    .locals 1
    .param p1, "minIndex"    # I
    .param p2, "maxIndex"    # I
    .param p3, "offset"    # J

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    .line 82
    iput p2, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    .line 83
    iput-wide p3, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    .line 84
    return-void
.end method

.method synthetic constructor <init>(IIJLmiui/util/DirectIndexedFile$1;)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # Lmiui/util/DirectIndexedFile$1;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJ)V

    return-void
.end method

.method static synthetic access$3700(Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .param p1, "x1"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->write(Ljava/io/DataOutput;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 1
    .param p0, "x0"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 5
    .param p0, "i"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 88
    .local v1, "minIndex":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 89
    .local v0, "maxIndex":I
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 90
    .local v2, "offset":J
    new-instance v4, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    invoke-direct {v4, v1, v0, v2, v3}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJ)V

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
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget v0, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 96
    iget v0, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 97
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 99
    :cond_0
    const/16 v0, 0x10

    return v0
.end method
