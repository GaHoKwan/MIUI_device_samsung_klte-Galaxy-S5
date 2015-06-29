.class Lmiui/util/DirectIndexedFile$DataInputStream;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"

# interfaces
.implements Lmiui/util/DirectIndexedFile$InputFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataInputStream"
.end annotation


# instance fields
.field private mInputFile:Ljava/io/InputStream;

.field private mInputPos:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    .line 683
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 684
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 685
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 825
    return-void
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    return-wide v0
.end method

.method public readBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 690
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 696
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readChar()C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 701
    new-array v0, v6, [B

    .line 702
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 703
    .local v1, "c":C
    iget-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 704
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 705
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v1, v2

    .line 706
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    int-to-char v1, v2

    .line 708
    :cond_0
    return v1
.end method

.method public readDouble()D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public readFully([B)V
    .locals 6
    .param p1, "dst"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 724
    .local v0, "len":I
    iget-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 725
    return-void
.end method

.method public readFully([BII)V
    .locals 6
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 730
    .local v0, "len":I
    iget-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 731
    return-void
.end method

.method public readInt()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 735
    new-array v0, v6, [B

    .line 736
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 737
    .local v1, "i":I
    iget-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 738
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 739
    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    .line 740
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 741
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 742
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 744
    :cond_0
    return v1
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public readLong()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    .line 754
    new-array v0, v8, [B

    .line 755
    .local v0, "b":[B
    const-wide/16 v2, 0x0

    .line 756
    .local v2, "l":J
    iget-wide v4, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 757
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ne v1, v8, :cond_0

    .line 758
    const/4 v1, 0x7

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    .line 759
    const/4 v1, 0x6

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 760
    const/4 v1, 0x5

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x10

    int-to-long v4, v1

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 761
    const/4 v1, 0x4

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    int-to-long v4, v1

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 762
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    const-wide v6, 0xff00000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 763
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    int-to-long v4, v1

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    const-wide v6, 0xff0000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 764
    const/4 v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v4, v1

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    const-wide/high16 v6, 0xff000000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 765
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    int-to-long v4, v1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    const-wide/high16 v6, -0x100000000000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 767
    :cond_0
    return-wide v2
.end method

.method public readShort()S
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 772
    new-array v0, v6, [B

    .line 773
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 774
    .local v1, "s":S
    iget-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 775
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 776
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v1, v2

    .line 777
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    int-to-short v1, v2

    .line 779
    :cond_0
    return v1
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public readUnsignedByte()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 784
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 785
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 790
    new-array v0, v6, [B

    .line 791
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 792
    .local v1, "s":S
    iget-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 793
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 794
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v1, v2

    .line 795
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    int-to-short v1, v2

    .line 797
    :cond_0
    return v1
.end method

.method public seek(J)V
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 815
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 816
    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 820
    return-void

    .line 818
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Skip failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipBytes(I)I
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputFile:Ljava/io/InputStream;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int p1, v0

    .line 808
    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/util/DirectIndexedFile$DataInputStream;->mInputPos:J

    .line 809
    return p1
.end method
