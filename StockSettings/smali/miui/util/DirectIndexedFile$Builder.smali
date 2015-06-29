.class public Lmiui/util/DirectIndexedFile$Builder;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DirectIndexedFile$Builder$IndexData;,
        Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;,
        Lmiui/util/DirectIndexedFile$Builder$Item;
    }
.end annotation


# instance fields
.field private mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

.field private mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

.field private mIndexDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/DirectIndexedFile$Builder$IndexData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    .line 1177
    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/util/DirectIndexedFile$1;

    .prologue
    .line 1098
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;-><init>()V

    return-void
.end method

.method private build()V
    .locals 13

    .prologue
    .line 1389
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1390
    .local v0, "dataCount":I
    new-instance v1, Lmiui/util/DirectIndexedFile$FileHeader;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lmiui/util/DirectIndexedFile$FileHeader;-><init>(ILmiui/util/DirectIndexedFile$1;)V

    iput-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    .line 1392
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_0
    if-ge v10, v0, :cond_3

    .line 1393
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .line 1394
    .local v8, "idk":Lmiui/util/DirectIndexedFile$Builder$IndexData;
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v12

    new-instance v1, Lmiui/util/DirectIndexedFile$DescriptionPair;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lmiui/util/DirectIndexedFile$DescriptionPair;-><init>(JJLmiui/util/DirectIndexedFile$1;)V

    aput-object v1, v12, v10

    .line 1397
    const/4 v11, 0x0

    .local v11, "length":I
    :goto_1
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2700(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_0

    .line 1398
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2700(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1403
    :cond_0
    new-array v1, v11, [Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    # setter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v8, v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3302(Lmiui/util/DirectIndexedFile$Builder$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    .line 1404
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v1

    array-length v1, v1

    if-ge v7, v1, :cond_2

    .line 1405
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2700(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 1406
    .local v9, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/util/DirectIndexedFile$Builder$Item;>;"
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1408
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$Item;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$3400(Lmiui/util/DirectIndexedFile$Builder$Item;)I

    move-result v2

    .line 1409
    .local v2, "minIndex":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$Item;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$3400(Lmiui/util/DirectIndexedFile$Builder$Item;)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    .line 1410
    .local v3, "maxIndex":I
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v12

    new-instance v1, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJLmiui/util/DirectIndexedFile$1;)V

    aput-object v1, v12, v7

    .line 1404
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1397
    .end local v2    # "minIndex":I
    .end local v3    # "maxIndex":I
    .end local v7    # "i":I
    .end local v9    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/util/DirectIndexedFile$Builder$Item;>;"
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1392
    .restart local v7    # "i":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1415
    .end local v7    # "i":I
    .end local v8    # "idk":Lmiui/util/DirectIndexedFile$Builder$IndexData;
    .end local v11    # "length":I
    :cond_3
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lmiui/util/DirectIndexedFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    :goto_3
    return-void

    .line 1416
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method private checkCurrentIndexingDataKind()V
    .locals 2

    .prologue
    .line 1376
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    if-nez v0, :cond_0

    .line 1377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please add a data kind before adding group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1379
    :cond_0
    return-void
.end method

.method private checkCurrentIndexingGroup()V
    .locals 2

    .prologue
    .line 1382
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->checkCurrentIndexingDataKind()V

    .line 1383
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2700(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please add a data group before adding data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1386
    :cond_0
    return-void
.end method

.method private writeAll(Ljava/io/DataOutput;)I
    .locals 12
    .param p1, "o"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1422
    const/4 v7, 0x0

    .line 1423
    .local v7, "written":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v8

    array-length v8, v8

    if-ge v4, v8, :cond_f

    .line 1424
    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # invokes: Lmiui/util/DirectIndexedFile$FileHeader;->write(Ljava/io/DataOutput;)I
    invoke-static {v8, p1}, Lmiui/util/DirectIndexedFile$FileHeader;->access$3600(Lmiui/util/DirectIndexedFile$FileHeader;Ljava/io/DataOutput;)I

    move-result v8

    add-int/2addr v7, v8

    .line 1425
    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v8

    aget-object v8, v8, v4

    int-to-long v10, v7

    # setter for: Lmiui/util/DirectIndexedFile$DescriptionPair;->mIndexGroupDescriptionOffset:J
    invoke-static {v8, v10, v11}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$502(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J

    .line 1427
    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .line 1428
    .local v1, "idk":Lmiui/util/DirectIndexedFile$Builder$IndexData;
    if-eqz p1, :cond_0

    .line 1429
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v8

    array-length v8, v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1431
    :cond_0
    add-int/lit8 v7, v7, 0x4

    .line 1432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v8

    array-length v8, v8

    if-ge v0, v8, :cond_1

    .line 1433
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v8

    aget-object v8, v8, v0

    # invokes: Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->write(Ljava/io/DataOutput;)I
    invoke-static {v8, p1}, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->access$3700(Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I

    move-result v8

    add-int/2addr v7, v8

    .line 1432
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1436
    :cond_1
    iget-object v8, p0, Lmiui/util/DirectIndexedFile$Builder;->mFileHeader:Lmiui/util/DirectIndexedFile$FileHeader;

    # getter for: Lmiui/util/DirectIndexedFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DirectIndexedFile$DescriptionPair;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$FileHeader;->access$300(Lmiui/util/DirectIndexedFile$FileHeader;)[Lmiui/util/DirectIndexedFile$DescriptionPair;

    move-result-object v8

    aget-object v8, v8, v4

    int-to-long v10, v7

    # setter for: Lmiui/util/DirectIndexedFile$DescriptionPair;->mDataItemDescriptionOffset:J
    invoke-static {v8, v10, v11}, Lmiui/util/DirectIndexedFile$DescriptionPair;->access$802(Lmiui/util/DirectIndexedFile$DescriptionPair;J)J

    .line 1437
    if-eqz p1, :cond_2

    .line 1438
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    array-length v8, v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1440
    :cond_2
    add-int/lit8 v7, v7, 0x4

    .line 1441
    const/4 v0, 0x0

    :goto_2
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    array-length v8, v8

    if-ge v0, v8, :cond_3

    .line 1442
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v0

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->write(Ljava/io/DataOutput;)I
    invoke-static {v8, p1}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$3800(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;)I

    move-result v8

    add-int/2addr v7, v8

    .line 1441
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1445
    :cond_3
    const/4 v0, 0x0

    :goto_3
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    array-length v8, v8

    if-ge v0, v8, :cond_4

    .line 1446
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v0

    int-to-long v10, v7

    # setter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mOffset:J
    invoke-static {v8, v10, v11}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1402(Lmiui/util/DirectIndexedFile$DataItemDescriptor;J)J

    .line 1447
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v9, v8, v0

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->getAll()Ljava/util/ArrayList;
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$3900(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)Ljava/util/ArrayList;

    move-result-object v8

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->writeDataItems(Ljava/io/DataOutput;Ljava/util/List;)I
    invoke-static {v9, p1, v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$4000(Lmiui/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v8

    add-int/2addr v7, v8

    .line 1445
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1450
    :cond_4
    const/4 v0, 0x0

    :goto_4
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v8

    array-length v8, v8

    if-ge v0, v8, :cond_e

    .line 1451
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v8

    aget-object v8, v8, v0

    int-to-long v10, v7

    iput-wide v10, v8, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    .line 1452
    if-nez p1, :cond_7

    .line 1453
    const/4 v6, 0x0

    .line 1454
    .local v6, "sizeOfItem":I
    const/4 v5, 0x0

    .local v5, "m":I
    :goto_5
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    array-length v8, v8

    if-ge v5, v8, :cond_5

    .line 1455
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    add-int/2addr v6, v8

    .line 1454
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1457
    :cond_5
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v8

    aget-object v8, v8, v0

    iget v8, v8, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v9

    aget-object v9, v9, v0

    iget v9, v9, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    sub-int/2addr v8, v9

    mul-int/2addr v8, v6

    add-int/2addr v7, v8

    .line 1450
    .end local v5    # "m":I
    .end local v6    # "sizeOfItem":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1460
    :cond_7
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v8

    aget-object v8, v8, v0

    iget v3, v8, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    .local v3, "j":I
    :goto_6
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v8

    aget-object v8, v8, v0

    iget v8, v8, Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    if-ge v3, v8, :cond_6

    .line 1461
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3000(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$Item;

    .line 1462
    .local v2, "item":Lmiui/util/DirectIndexedFile$Builder$Item;
    if-nez v2, :cond_8

    .line 1463
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDefaultValue:Lmiui/util/DirectIndexedFile$Builder$Item;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2500(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Lmiui/util/DirectIndexedFile$Builder$Item;

    move-result-object v2

    .line 1465
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "m":I
    :goto_7
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    array-length v8, v8

    if-ge v5, v8, :cond_d

    .line 1466
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 1467
    # getter for: Lmiui/util/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$4100(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1475
    :cond_9
    :goto_8
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    add-int/2addr v7, v8

    .line 1465
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1468
    :cond_a
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 1469
    # getter for: Lmiui/util/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$4100(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_8

    .line 1470
    :cond_b
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_c

    .line 1471
    # getter for: Lmiui/util/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$4100(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_8

    .line 1472
    :cond_c
    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v5

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_9

    .line 1473
    # getter for: Lmiui/util/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$Item;->access$4100(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {p1, v8, v9}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_8

    .line 1460
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 1423
    .end local v2    # "item":Lmiui/util/DirectIndexedFile$Builder$Item;
    .end local v3    # "j":I
    .end local v5    # "m":I
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1481
    .end local v0    # "i":I
    .end local v1    # "idk":Lmiui/util/DirectIndexedFile$Builder$IndexData;
    :cond_f
    return v7
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1268
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->checkCurrentIndexingGroup()V

    .line 1270
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    array-length v2, v2

    array-length v3, p2

    if-eq v2, v3, :cond_0

    .line 1271
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Different number of objects inputted, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1275
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_7

    .line 1276
    sget-object v2, Lmiui/util/DirectIndexedFile$1;->$SwitchMap$miui$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v3

    aget-object v3, v3, v0

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1600(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1338
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported type of objects "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    aget-object v4, v4, v0

    # getter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mType:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    invoke-static {v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1600(Lmiui/util/DirectIndexedFile$DataItemDescriptor;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1278
    :pswitch_0
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Byte;

    if-nez v2, :cond_2

    .line 1279
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be byte"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1283
    :pswitch_1
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_2

    .line 1284
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be short"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1288
    :pswitch_2
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    .line 1289
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1293
    :pswitch_3
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Long;

    if-nez v2, :cond_2

    .line 1294
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1298
    :pswitch_4
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1299
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be String"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1301
    :cond_1
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v2, v3}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    .line 1302
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->size()I
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2800(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$2900(I)B

    move-result v2

    # setter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v3, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    .line 1275
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1306
    :pswitch_5
    aget-object v2, p2, v0

    instance-of v2, v2, [B

    if-nez v2, :cond_3

    .line 1307
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be byte[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1309
    :cond_3
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v2, v3}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    .line 1310
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->size()I
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2800(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$2900(I)B

    move-result v2

    # setter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v3, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto :goto_1

    .line 1314
    :pswitch_6
    aget-object v2, p2, v0

    instance-of v2, v2, [S

    if-nez v2, :cond_4

    .line 1315
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be short[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1317
    :cond_4
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v2, v3}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    .line 1318
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->size()I
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2800(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$2900(I)B

    move-result v2

    # setter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v3, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto/16 :goto_1

    .line 1322
    :pswitch_7
    aget-object v2, p2, v0

    instance-of v2, v2, [I

    if-nez v2, :cond_5

    .line 1323
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be int[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1325
    :cond_5
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v2, v3}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    .line 1326
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->size()I
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2800(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$2900(I)B

    move-result v2

    # setter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v3, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto/16 :goto_1

    .line 1330
    :pswitch_8
    aget-object v2, p2, v0

    instance-of v2, v2, [J

    if-nez v2, :cond_6

    .line 1331
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be long[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1333
    :cond_6
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v2, v3}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    .line 1334
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->size()I
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2800(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    # invokes: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->getSizeOf(I)B
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$2900(I)B

    move-result v2

    # setter for: Lmiui/util/DirectIndexedFile$DataItemDescriptor;->mIndexSize:B
    invoke-static {v3, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiui/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto/16 :goto_1

    .line 1343
    :cond_7
    new-instance v1, Lmiui/util/DirectIndexedFile$Builder$Item;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lmiui/util/DirectIndexedFile$Builder$Item;-><init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/util/DirectIndexedFile$1;)V

    .line 1344
    .local v1, "item":Lmiui/util/DirectIndexedFile$Builder$Item;
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$3000(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    iget-object v2, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2700(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v3}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2700(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    return-void

    .line 1276
    nop

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

.method public addGroup([I[[Ljava/lang/Object;)V
    .locals 3
    .param p1, "indexes"    # [I
    .param p2, "objects"    # [[Ljava/lang/Object;

    .prologue
    .line 1250
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->checkCurrentIndexingDataKind()V

    .line 1252
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    .line 1253
    invoke-virtual {p0}, Lmiui/util/DirectIndexedFile$Builder;->newGroup()V

    .line 1254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1255
    aget v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lmiui/util/DirectIndexedFile$Builder;->add(I[Ljava/lang/Object;)V

    .line 1254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1258
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Different number between indexes and objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1260
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public varargs addKind([Ljava/lang/Object;)V
    .locals 10
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1184
    new-instance v1, Lmiui/util/DirectIndexedFile$Builder$IndexData;

    array-length v5, p1

    invoke-direct {v1, v5, v8}, Lmiui/util/DirectIndexedFile$Builder$IndexData;-><init>(ILmiui/util/DirectIndexedFile$1;)V

    iput-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    .line 1185
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    iget-object v5, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_9

    .line 1188
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v5, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-direct {v5, p0, v8}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;-><init>(Lmiui/util/DirectIndexedFile$Builder;Lmiui/util/DirectIndexedFile$1;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    const/4 v3, 0x1

    .line 1192
    .local v3, "indexSize":B
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 1193
    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1194
    .local v2, "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    const/4 v3, 0x1

    .line 1195
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v1, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    .line 1227
    :goto_1
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2300(Lmiui/util/DirectIndexedFile$Builder$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v9

    new-instance v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    const-wide/16 v6, 0x0

    move v5, v4

    invoke-direct/range {v1 .. v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJLmiui/util/DirectIndexedFile$1;)V

    aput-object v1, v9, v0

    .line 1187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1196
    .end local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_0
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Short;

    if-eqz v1, :cond_1

    .line 1197
    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1198
    .restart local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    const/4 v3, 0x2

    .line 1199
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v1, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_1

    .line 1200
    .end local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_1
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1201
    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1202
    .restart local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    const/4 v3, 0x4

    .line 1203
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v1, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_1

    .line 1204
    .end local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_2
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 1205
    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1206
    .restart local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    const/16 v3, 0x8

    .line 1207
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v1, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_1

    .line 1208
    .end local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_3
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1209
    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->STRING:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1210
    .restart local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v1, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    goto/16 :goto_1

    .line 1211
    .end local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_4
    aget-object v1, p1, v0

    instance-of v1, v1, [B

    if-eqz v1, :cond_5

    .line 1212
    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1213
    .restart local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v1, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    goto/16 :goto_1

    .line 1214
    .end local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_5
    aget-object v1, p1, v0

    instance-of v1, v1, [S

    if-eqz v1, :cond_6

    .line 1215
    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1216
    .restart local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v1, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    goto/16 :goto_1

    .line 1217
    .end local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_6
    aget-object v1, p1, v0

    instance-of v1, v1, [I

    if-eqz v1, :cond_7

    .line 1218
    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1219
    .restart local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v1, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    goto/16 :goto_1

    .line 1220
    .end local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_7
    aget-object v1, p1, v0

    instance-of v1, v1, [J

    if-eqz v1, :cond_8

    .line 1221
    sget-object v2, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG_ARRAY:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 1222
    .restart local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2100(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    # invokes: Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;
    invoke-static {v1, v5}, Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;->access$2200(Lmiui/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    goto/16 :goto_1

    .line 1224
    .end local v2    # "type":Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported type of the ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] argument"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1231
    .end local v3    # "indexSize":B
    :cond_9
    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    new-instance v4, Lmiui/util/DirectIndexedFile$Builder$Item;

    const/4 v5, -0x1

    invoke-direct {v4, p0, v5, p1, v8}, Lmiui/util/DirectIndexedFile$Builder$Item;-><init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/util/DirectIndexedFile$1;)V

    # setter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mDefaultValue:Lmiui/util/DirectIndexedFile$Builder$Item;
    invoke-static {v1, v4}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2502(Lmiui/util/DirectIndexedFile$Builder$IndexData;Lmiui/util/DirectIndexedFile$Builder$Item;)Lmiui/util/DirectIndexedFile$Builder$Item;

    .line 1232
    return-void
.end method

.method public newGroup()V
    .locals 2

    .prologue
    .line 1238
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2700(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2700(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2700(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1240
    :cond_0
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiui/util/DirectIndexedFile$Builder$IndexData;

    # getter for: Lmiui/util/DirectIndexedFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/util/DirectIndexedFile$Builder$IndexData;->access$2700(Lmiui/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    :cond_1
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 7
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1354
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Builder;->build()V

    .line 1356
    const/4 v1, 0x0

    .line 1357
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v0, 0x0

    .line 1359
    .local v0, "done":Z
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-direct {p0, v2}, Lmiui/util/DirectIndexedFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1361
    const/4 v0, 0x1

    .line 1363
    if-eqz v2, :cond_0

    .line 1364
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1367
    :cond_0
    if-nez v0, :cond_1

    .line 1368
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1369
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1373
    :cond_1
    return-void

    .line 1363
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v1, :cond_2

    .line 1364
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1367
    :cond_2
    if-nez v0, :cond_3

    .line 1368
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1369
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    throw v3

    .line 1363
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    goto :goto_0
.end method
