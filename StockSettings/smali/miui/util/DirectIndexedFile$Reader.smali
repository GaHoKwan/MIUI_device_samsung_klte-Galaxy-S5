.class public Lmiui/util/DirectIndexedFile$Reader;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DirectIndexedFile$Reader$IndexData;
    }
.end annotation


# instance fields
.field private mFile:Lmiui/util/DirectIndexedFile$InputFile;

.field private mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

.field private mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputstream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    new-instance v0, Lmiui/util/DirectIndexedFile$DataInputStream;

    invoke-direct {v0, p1}, Lmiui/util/DirectIndexedFile$DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    .line 848
    const-string v0, "assets"

    invoke-direct {p0, v0}, Lmiui/util/DirectIndexedFile$Reader;->constructFromFile(Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lmiui/util/DirectIndexedFile$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lmiui/util/DirectIndexedFile$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Reader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    new-instance v0, Lmiui/util/DirectIndexedFile$DataInputRandom;

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lmiui/util/DirectIndexedFile$DataInputRandom;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    .line 853
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Reader;->constructFromFile(Ljava/lang/String;)V

    .line 854
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lmiui/util/DirectIndexedFile$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lmiui/util/DirectIndexedFile$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Reader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructFromFile(Ljava/lang/String;)V
    .locals 10
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 859
    .local v6, "time":J
    :try_start_0
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    const-wide/16 v8, 0x0

    invoke-interface {v5, v8, v9}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 860
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    # invokes: Lmiui/util/DirectIndexedFile$FileHeader;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$FileHeader;->access$200(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$FileHeader;

    move-result-object v5

    iput-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    .line 862
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [Lmiui/util/DirectIndexedFile$Reader$IndexData;

    iput-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    .line 863
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 864
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    new-instance v8, Lmiui/util/DirectIndexedFile$Reader$IndexData;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lmiui/util/DirectIndexedFile$Reader$IndexData;-><init>(Lmiui/util/DirectIndexedFile$1;)V

    aput-object v8, v5, v4

    .line 865
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v8

    aget-object v8, v8, v4

    # getter for: Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$500(Lmiui/util/DirectIndexedFile$DescriptionPair;)J

    move-result-wide v8

    invoke-interface {v5, v8, v9}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 866
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v5}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v0

    .line 867
    .local v0, "IndexGroupDescriptionCount":I
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v4

    new-array v8, v0, [Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    # setter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v5, v8}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$602(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 868
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 869
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v4

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    # invokes: Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->access$700(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v8

    aput-object v8, v5, v3

    .line 868
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 872
    :cond_0
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v8

    aget-object v8, v8, v4

    # getter for: Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$800(Lmiui/util/DirectIndexedFile$DescriptionPair;)J

    move-result-wide v8

    invoke-interface {v5, v8, v9}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 873
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v5}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v1

    .line 874
    .local v1, "dataItemDescriptionCount":I
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v4

    const/4 v8, 0x0

    # setter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I
    invoke-static {v5, v8}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$902(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I

    .line 875
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v4

    new-array v8, v1, [Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    # setter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v5, v8}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1002(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$DataItemDescriptor;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    .line 876
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_1

    .line 877
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v4

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->read(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1100(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aput-object v8, v5, v3

    .line 878
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v4

    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v8, v8, v4

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v3

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    # += operator for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I
    invoke-static {v5, v8}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$912(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I

    .line 876
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 881
    :cond_1
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v4

    new-array v8, v1, [[Ljava/lang/Object;

    # setter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v5, v8}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1302(Lmiui/util/DirectIndexedFile$Reader$IndexData;[[Ljava/lang/Object;)[[Ljava/lang/Object;

    .line 882
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_2

    .line 883
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v8, v8, v4

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v3

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1400(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)J

    move-result-wide v8

    invoke-interface {v5, v8, v9}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 884
    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v5, v5, v4

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v5}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v5

    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v8, v8, v4

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v3

    iget-object v9, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readDataItems(Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;
    invoke-static {v8, v9}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1500(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;)[Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v5, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 863
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 887
    .end local v0    # "IndexGroupDescriptionCount":I
    .end local v1    # "dataItemDescriptionCount":I
    .end local v3    # "i":I
    .end local v4    # "k":I
    :catch_0
    move-exception v2

    .line 888
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    .line 889
    throw v2

    .line 895
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "k":I
    :cond_3
    return-void
.end method

.method private offset(II)J
    .locals 10
    .param p1, "kind"    # I
    .param p2, "index"    # I

    .prologue
    .line 1075
    const/4 v1, 0x0

    .line 1076
    .local v1, "id":Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    const/4 v3, 0x0

    .local v3, "min":I
    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v6, v6, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    array-length v2, v6

    .line 1077
    .local v2, "max":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1078
    add-int v6, v2, v3

    div-int/lit8 v0, v6, 0x2

    .line 1079
    .local v0, "found":I
    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v6, v6, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    aget-object v6, v6, v0

    iget v6, v6, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    if-le v6, p2, :cond_0

    .line 1080
    move v2, v0

    goto :goto_0

    .line 1081
    :cond_0
    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v6, v6, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    aget-object v6, v6, v0

    iget v6, v6, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    if-gt v6, p2, :cond_1

    .line 1082
    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    .line 1084
    :cond_1
    iget-object v6, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v6, v6, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v6}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    aget-object v1, v6, v0

    .line 1089
    .end local v0    # "found":I
    :cond_2
    const-wide/16 v4, -0x1

    .line 1090
    .local v4, "offset":J
    if-eqz v1, :cond_3

    .line 1091
    iget-wide v6, v1, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    iget v8, v1, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    sub-int v8, p2, v8

    iget-object v9, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v9, v9, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I
    invoke-static {v9}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$900(Lmiui/util/DirectIndexedFile$Reader$IndexData;)I

    move-result v9

    mul-int/2addr v8, v9

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 1093
    :cond_3
    return-wide v4
.end method

.method private readSingleDataItem(III)Ljava/lang/Object;
    .locals 6
    .param p1, "kind"    # I
    .param p2, "dataIndex"    # I
    .param p3, "dataItemIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1066
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    if-nez v0, :cond_0

    .line 1067
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, p2

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1400(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)J

    move-result-wide v2

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 1068
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v1, v1, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readSingleDataItem(Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;
    invoke-static {v1, v2, p3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1800(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Lmiui/util/DirectIndexedFile$InputFile;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p3

    .line 1071
    :cond_0
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v0, v0, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 1052
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1054
    :try_start_1
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v0}, Lmiui/util/DirectIndexedFile$InputFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1060
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    .line 1061
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    .line 1062
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1063
    monitor-exit p0

    return-void

    .line 1052
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1055
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized get(III)Ljava/lang/Object;
    .locals 11
    .param p1, "kind"    # I
    .param p2, "index"    # I
    .param p3, "dataIndex"    # I

    .prologue
    .line 908
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    if-nez v8, :cond_0

    .line 909
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Get data from a corrupt file"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 911
    :cond_0
    if-ltz p1, :cond_1

    :try_start_1
    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    array-length v8, v8

    if-lt p1, v8, :cond_2

    .line 912
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Kind "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " out of range[0, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 914
    :cond_2
    if-ltz p3, :cond_3

    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v8, v8, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    array-length v8, v8

    if-lt p3, v8, :cond_4

    .line 915
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DataIndex "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " out of range[0, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v10, v10, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v10}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 919
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 921
    .local v6, "time":J
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$Reader;->offset(II)J

    move-result-wide v4

    .line 922
    .local v4, "offset":J
    const/4 v3, 0x0

    .line 923
    .local v3, "ret":Ljava/lang/Object;
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_6

    .line 924
    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v8, v8, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, p3

    const/4 v9, 0x0

    aget-object v3, v8, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 973
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_5
    monitor-exit p0

    return-object v3

    .line 927
    .restart local v3    # "ret":Ljava/lang/Object;
    :cond_6
    :try_start_2
    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v8, v4, v5}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 928
    const/4 v2, 0x0

    .end local v3    # "ret":Ljava/lang/Object;
    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_5

    .line 929
    sget-object v8, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v9, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v9, v9, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v9}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v9

    aget-object v9, v9, v2

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-static {v9}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1600(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v9

    invoke-virtual {v9}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 959
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v10, v10, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v10}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v10

    aget-object v10, v10, v2

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-static {v10}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1600(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 963
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 964
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Seek data from a corrupt file"

    invoke-direct {v8, v9, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 931
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    :pswitch_0
    :try_start_4
    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v8}, Lmiui/util/DirectIndexedFile$InputFile;->readByte()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 928
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 934
    :pswitch_1
    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v8}, Lmiui/util/DirectIndexedFile$InputFile;->readShort()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 935
    .local v3, "ret":Ljava/lang/Short;
    goto :goto_1

    .line 937
    .end local v3    # "ret":Ljava/lang/Short;
    :pswitch_2
    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v8}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 938
    .local v3, "ret":Ljava/lang/Integer;
    goto :goto_1

    .line 940
    .end local v3    # "ret":Ljava/lang/Integer;
    :pswitch_3
    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v8}, Lmiui/util/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 941
    .local v3, "ret":Ljava/lang/Long;
    goto :goto_1

    .line 948
    .end local v3    # "ret":Ljava/lang/Long;
    :pswitch_4
    :try_start_5
    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v9, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v9, v9, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v9}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v9

    aget-object v9, v9, v2

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v9}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v9

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J
    invoke-static {v8, v9}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Ljava/io/DataInput;I)J

    move-result-wide v8

    long-to-int v0, v8

    .line 950
    .local v0, "dataItemIndex":I
    if-ne v2, p3, :cond_7

    .line 951
    invoke-direct {p0, p1, p3, v0}, Lmiui/util/DirectIndexedFile$Reader;->readSingleDataItem(III)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    .local v3, "ret":Ljava/lang/Object;
    goto :goto_1

    .line 953
    .end local v0    # "dataItemIndex":I
    .end local v3    # "ret":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 954
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_6
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "File may be corrupt due to invalid data index size"

    invoke-direct {v8, v9, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 929
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

.method public declared-synchronized get(II)[Ljava/lang/Object;
    .locals 13
    .param p1, "kind"    # I
    .param p2, "index"    # I

    .prologue
    .line 984
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    if-nez v10, :cond_0

    .line 985
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Get data from a corrupt file"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 987
    :cond_0
    if-ltz p1, :cond_1

    :try_start_1
    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    array-length v10, v10

    if-lt p1, v10, :cond_2

    .line 988
    :cond_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot get data kind "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 991
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 993
    .local v8, "time":J
    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$Reader;->offset(II)J

    move-result-wide v6

    .line 994
    .local v6, "offset":J
    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v10, v10, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v10}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v10

    array-length v10, v10

    new-array v5, v10, [Ljava/lang/Object;

    .line 995
    .local v5, "ret":[Ljava/lang/Object;
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-gez v10, :cond_3

    .line 996
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v10, v5

    if-ge v4, v10, :cond_4

    .line 997
    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v10, v10, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;
    invoke-static {v10}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;

    move-result-object v10

    aget-object v10, v10, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aput-object v10, v5, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 996
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1002
    .end local v4    # "i":I
    :cond_3
    :try_start_2
    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v10, v6, v7}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V

    .line 1003
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v10, v5

    if-ge v4, v10, :cond_4

    .line 1004
    sget-object v10, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v11, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v11, v11, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v11}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v11

    aget-object v11, v11, v4

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-static {v11}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1600(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v11

    invoke-virtual {v11}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 1034
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v12, v12, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v12}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v12

    aget-object v12, v12, v4

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-static {v12}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1600(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1038
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 1039
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Seek data from a corrupt file"

    invoke-direct {v10, v11, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1006
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "i":I
    :pswitch_0
    :try_start_4
    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v10}, Lmiui/util/DirectIndexedFile$InputFile;->readByte()B

    move-result v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v4

    .line 1003
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1009
    :pswitch_1
    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v10}, Lmiui/util/DirectIndexedFile$InputFile;->readShort()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, v5, v4

    goto :goto_2

    .line 1012
    :pswitch_2
    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v10}, Lmiui/util/DirectIndexedFile$InputFile;->readInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v4

    goto :goto_2

    .line 1015
    :pswitch_3
    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v10}, Lmiui/util/DirectIndexedFile$InputFile;->readLong()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v5, v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1023
    :pswitch_4
    :try_start_5
    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    iget-object v11, p0, Lmiui/util/DirectIndexedFile$Reader;->mIndexData:[Lmiui/util/DirectIndexedFile$Reader$IndexData;

    aget-object v11, v11, p1

    # getter for: Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v11}, Lmiui/util/DirectIndexedFile$Reader$IndexData;->access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v11

    aget-object v11, v11, v4

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v11}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v11

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->readAccordingToSize(Ljava/io/DataInput;I)J
    invoke-static {v10, v11}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Ljava/io/DataInput;I)J

    move-result-wide v10

    long-to-int v2, v10

    .line 1025
    .local v2, "dataItemIndex":I
    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v10}, Lmiui/util/DirectIndexedFile$InputFile;->getFilePointer()J

    move-result-wide v0

    .line 1026
    .local v0, "curPos":J
    invoke-direct {p0, p1, v4, v2}, Lmiui/util/DirectIndexedFile$Reader;->readSingleDataItem(III)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v5, v4

    .line 1027
    iget-object v10, p0, Lmiui/util/DirectIndexedFile$Reader;->mFile:Lmiui/util/DirectIndexedFile$InputFile;

    invoke-interface {v10, v0, v1}, Lmiui/util/DirectIndexedFile$InputFile;->seek(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1028
    .end local v0    # "curPos":J
    .end local v2    # "dataItemIndex":I
    :catch_1
    move-exception v3

    .line 1029
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_6
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "File may be corrupt due to invalid data index size"

    invoke-direct {v10, v11, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1047
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    monitor-exit p0

    return-object v5

    .line 1004
    nop

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
