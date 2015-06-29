.class public final Lcom/miui/internal/server/DropBoxManagerService;
.super Lcom/miui/internal/server/IDropBoxManagerService$Stub;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/DropBoxManagerService$EntryFile;,
        Lcom/miui/internal/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final DROPBOX_TAG_PREFIX:Ljava/lang/String; = "dropbox:"

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lcom/miui/internal/server/DropBoxManagerService;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_SEND_BROADCAST:I = 0x1

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field public static final SERVICE_NAME:Ljava/lang/String; = "DropBoxManagerService"

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private mContext:Landroid/content/Context;

.field private mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mStatFs:Landroid/os/StatFs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$1;

    invoke-direct {v0}, Lcom/miui/internal/server/DropBoxManagerService$1;-><init>()V

    sput-object v0, Lcom/miui/internal/server/DropBoxManagerService;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Lcom/miui/internal/server/IDropBoxManagerService$Stub;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .line 96
    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 100
    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 101
    iput v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    .line 102
    iput v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 109
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 112
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/server/DropBoxManagerService$2;-><init>(Lcom/miui/internal/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    .line 122
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->initAndTrimAsync()V

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/internal/server/DropBoxManagerService$1;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/server/DropBoxManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/server/DropBoxManagerService;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/server/DropBoxManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/server/DropBoxManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/internal/server/DropBoxManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/internal/server/DropBoxManagerService;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .locals 19
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 625
    .local v6, "t":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v3, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    const-wide/16 v4, 0x2710

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v18

    .line 626
    .local v18, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/miui/internal/server/DropBoxManagerService$EntryFile;>;"
    const/4 v11, 0x0

    .line 627
    .local v11, "future":[Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    invoke-interface/range {v18 .. v18}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 628
    invoke-interface/range {v18 .. v18}, Ljava/util/SortedSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "future":[Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    check-cast v11, [Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    .line 629
    .restart local v11    # "future":[Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    invoke-interface/range {v18 .. v18}, Ljava/util/SortedSet;->clear()V

    .line 632
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-wide v2, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 636
    :cond_1
    if-eqz v11, :cond_4

    .line 637
    move-object v10, v11

    .local v10, "arr$":[Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    array-length v14, v10

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v14, :cond_4

    aget-object v13, v10, v12

    .line 638
    .local v13, "late":Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v3, v2, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v4, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v3, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .line 640
    .local v15, "tagFiles":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    if-eqz v15, :cond_2

    iget-object v2, v15, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 641
    iget v2, v15, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v2, v3

    iput v2, v15, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    .line 643
    :cond_2
    iget v2, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    .line 644
    new-instance v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget-object v3, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v5, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long v16, v6, v8

    .end local v6    # "t":J
    .local v16, "t":J
    iget v8, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct/range {v2 .. v9}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v6, v16

    .line 637
    .end local v16    # "t":J
    .restart local v6    # "t":J
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 647
    :cond_3
    new-instance v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v4, v13, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long v16, v6, v8

    .end local v6    # "t":J
    .restart local v16    # "t":J
    invoke-direct {v2, v3, v4, v6, v7}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v6, v16

    .end local v16    # "t":J
    .restart local v6    # "t":J
    goto :goto_1

    .line 652
    .end local v10    # "arr$":[Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    .end local v12    # "i$":I
    .end local v13    # "late":Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    .end local v14    # "len$":I
    .end local v15    # "tagFiles":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    :cond_4
    if-nez p1, :cond_5

    .line 653
    new-instance v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v3, v0, v6, v7}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :goto_2
    monitor-exit p0

    return-wide v6

    .line 655
    :cond_5
    :try_start_1
    new-instance v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 619
    .end local v6    # "t":J
    .end local v11    # "future":[Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    .end local v18    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/miui/internal/server/DropBoxManagerService$EntryFile;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V
    .locals 4
    .param p1, "entry"    # Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget v2, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    .line 606
    iget-object v1, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .line 608
    .local v0, "tagFiles":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_0

    .line 609
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .end local v0    # "tagFiles":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/internal/server/DropBoxManagerService$FileList;-><init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V

    .line 610
    .restart local v0    # "tagFiles":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    iget-object v1, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_0
    iget-object v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 613
    iget v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    .end local v0    # "tagFiles":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    :cond_1
    monitor-exit p0

    return-void

    .line 600
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getInstance()Lcom/miui/internal/server/DropBoxManagerService;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/miui/internal/server/DropBoxManagerService;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService;

    return-object v0
.end method

.method private declared-synchronized init()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v7, :cond_1

    .line 557
    iget-object v7, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_0

    .line 558
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t mkdir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 561
    :cond_0
    :try_start_1
    new-instance v7, Landroid/os/StatFs;

    iget-object v8, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 562
    iget-object v7, p0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    iput v7, p0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    if-nez v7, :cond_6

    .line 569
    iget-object v7, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 570
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_2

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t list files: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 563
    .end local v4    # "files":[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t statfs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 572
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "files":[Ljava/io/File;
    :cond_2
    new-instance v7, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/miui/internal/server/DropBoxManagerService$FileList;-><init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V

    iput-object v7, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .line 573
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 576
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_6

    aget-object v3, v0, v5

    .line 577
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 578
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cleaning temp file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 576
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 583
    :cond_3
    new-instance v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    iget v7, p0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v2, v3, v7}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 584
    .local v2, "entry":Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    iget-object v7, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 585
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 587
    :cond_4
    iget-wide v8, v2, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    .line 588
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 593
    :cond_5
    invoke-direct {p0, v2}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 596
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "entry":Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_6
    monitor-exit p0

    return-void
.end method

.method private initAndTrimAsync()V
    .locals 2

    .prologue
    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 135
    new-instance v0, Lcom/miui/internal/server/DropBoxManagerService$3;

    invoke-direct {v0, p0}, Lcom/miui/internal/server/DropBoxManagerService$3;-><init>(Lcom/miui/internal/server/DropBoxManagerService;)V

    invoke-virtual {v0}, Lcom/miui/internal/server/DropBoxManagerService$3;->start()V

    .line 145
    return-void
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-static {p1, v0}, Lcom/miui/internal/server/Receiver;->isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/miui/internal/server/DropBoxManagerService;->getInstance()Lcom/miui/internal/server/DropBoxManagerService;

    move-result-object v0

    invoke-direct {v0}, Lcom/miui/internal/server/DropBoxManagerService;->initAndTrimAsync()V

    .line 65
    :cond_0
    return-void
.end method

.method private declared-synchronized trimToFit()J
    .locals 32

    .prologue
    .line 667
    monitor-enter p0

    const v6, 0x3f480

    .line 668
    .local v6, "ageSeconds":I
    const/16 v13, 0x3e8

    .line 669
    .local v13, "maxFiles":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const v28, 0xf731400

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    sub-long v8, v26, v28

    .line 670
    .local v8, "cutoffMillis":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_1

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    .line 672
    .local v11, "entry":Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    iget-wide v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v26, v0

    cmp-long v26, v26, v8

    if-lez v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v0, v13, :cond_6

    .line 685
    .end local v11    # "entry":Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 686
    .local v24, "uptimeMillis":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1388

    add-long v26, v26, v28

    cmp-long v26, v24, v26

    if-lez v26, :cond_2

    .line 687
    const/16 v17, 0xa

    .line 688
    .local v17, "quotaPercent":I
    const/16 v18, 0xa

    .line 689
    .local v18, "reservePercent":I
    const/16 v16, 0x1400

    .line 691
    .local v16, "quotaKb":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    .line 693
    .local v7, "available":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getBlockCount()I

    move-result v26

    mul-int v26, v26, v18

    div-int/lit8 v26, v26, 0x64

    sub-int v15, v7, v26

    .line 694
    .local v15, "nonreserved":I
    const/high16 v26, 0x500000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v27, v0

    div-int v14, v26, v27

    .line 695
    .local v14, "maximum":I
    const/16 v26, 0x0

    mul-int v27, v15, v17

    div-int/lit8 v27, v27, 0x64

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v0, v26

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 696
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 713
    .end local v7    # "available":I
    .end local v14    # "maximum":I
    .end local v15    # "nonreserved":I
    .end local v16    # "quotaKb":I
    .end local v17    # "quotaPercent":I
    .end local v18    # "reservePercent":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_5

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    .local v23, "unsqueezed":I
    const/16 v19, 0x0

    .line 716
    .local v19, "squeezed":I
    new-instance v22, Ljava/util/TreeSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 717
    .local v22, "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/miui/internal/server/DropBoxManagerService$FileList;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .line 718
    .local v20, "tag":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    if-lez v19, :cond_9

    move-object/from16 v0, v20

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v27, v0

    sub-int v27, v27, v23

    div-int v27, v27, v19

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_9

    .line 724
    .end local v20    # "tag":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v26, v0

    sub-int v26, v26, v23

    div-int v21, v26, v19

    .line 727
    .local v21, "tagQuota":I
    invoke-virtual/range {v22 .. v22}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .line 728
    .restart local v20    # "tag":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 744
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v19    # "squeezed":I
    .end local v20    # "tag":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    .end local v21    # "tagQuota":I
    .end local v22    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/miui/internal/server/DropBoxManagerService$FileList;>;"
    .end local v23    # "unsqueezed":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v27, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v26, v26, v27

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    monitor-exit p0

    return-wide v26

    .line 674
    .end local v24    # "uptimeMillis":J
    .restart local v11    # "entry":Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    .line 675
    .restart local v20    # "tag":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    if-eqz v20, :cond_7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    move-object/from16 v0, v20

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    iget v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    .line 676
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v27, v0

    iget v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    .line 677
    :cond_8
    iget-object v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    iget-object v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 667
    .end local v8    # "cutoffMillis":J
    .end local v11    # "entry":Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    .end local v20    # "tag":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    :catchall_0
    move-exception v26

    monitor-exit p0

    throw v26

    .line 721
    .restart local v8    # "cutoffMillis":J
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v19    # "squeezed":I
    .restart local v20    # "tag":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    .restart local v22    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/miui/internal/server/DropBoxManagerService$FileList;>;"
    .restart local v23    # "unsqueezed":I
    .restart local v24    # "uptimeMillis":J
    :cond_9
    :try_start_2
    move-object/from16 v0, v20

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    sub-int v23, v23, v26

    .line 722
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 729
    .restart local v21    # "tagQuota":I
    :cond_a
    :goto_2
    move-object/from16 v0, v20

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_4

    .line 730
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    .line 731
    .restart local v11    # "entry":Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    move-object/from16 v0, v20

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    iget v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    .line 732
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v27, v0

    iget v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 735
    :cond_c
    :try_start_3
    iget-object v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    iget-object v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 736
    :cond_d
    new-instance v26, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v27, v0

    iget-object v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v28, v0

    iget-wide v0, v11, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/miui/internal/server/DropBoxManagerService;->enrollEntry(Lcom/miui/internal/server/DropBoxManagerService$EntryFile;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 737
    :catch_0
    move-exception v10

    .line 738
    .local v10, "e":Ljava/io/IOException;
    :try_start_4
    const-string v26, "DropBoxManagerService"

    const-string v27, "Can\'t write tombstone file"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method public add(Lmiui/os/DropBoxManager$Entry;)V
    .locals 32
    .param p1, "entry"    # Lmiui/os/DropBoxManager$Entry;

    .prologue
    .line 149
    const/16 v24, 0x0

    .line 150
    .local v24, "temp":Ljava/io/File;
    const/16 v20, 0x0

    .line 151
    .local v20, "output":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v23

    .line 153
    .local v23, "tag":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getFlags()I

    move-result v8

    .line 154
    .local v8, "flags":I
    and-int/lit8 v28, v8, 0x1

    if-eqz v28, :cond_2

    new-instance v28, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v28 .. v28}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v28
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v8    # "flags":I
    :catch_0
    move-exception v7

    .line 227
    .local v7, "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    const-string v28, "DropBoxManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Can\'t write: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    if-eqz v20, :cond_0

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 230
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 231
    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 233
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .line 156
    .restart local v8    # "flags":I
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/miui/internal/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v28

    if-nez v28, :cond_4

    .line 229
    if-eqz v20, :cond_3

    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 230
    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 231
    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 158
    :cond_4
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v16

    .line 159
    .local v16, "max":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 161
    .local v12, "lastTrim":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v4, v0, [B

    .line 162
    .local v4, "buffer":[B
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 167
    .local v10, "input":Ljava/io/InputStream;
    const/16 v22, 0x0

    .line 168
    .local v22, "read":I
    :goto_4
    array-length v0, v4

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    .line 169
    array-length v0, v4

    move/from16 v28, v0

    sub-int v28, v28, v22

    move/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v10, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 170
    .local v11, "n":I
    if-gtz v11, :cond_b

    .line 177
    .end local v11    # "n":I
    :cond_5
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "drop"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Thread;->getId()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".tmp"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    .end local v24    # "temp":Ljava/io/File;
    .local v25, "temp":Ljava/io/File;
    :try_start_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/miui/internal/server/DropBoxManagerService;->mBlockSize:I

    .line 179
    .local v5, "bufferSize":I
    const/16 v28, 0x1000

    move/from16 v0, v28

    if-le v5, v0, :cond_6

    const/16 v5, 0x1000

    .line 180
    :cond_6
    const/16 v28, 0x200

    move/from16 v0, v28

    if-ge v5, v0, :cond_7

    const/16 v5, 0x200

    .line 181
    :cond_7
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 182
    .local v9, "foutput":Ljava/io/FileOutputStream;
    new-instance v21, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v9, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 183
    .end local v20    # "output":Ljava/io/OutputStream;
    .local v21, "output":Ljava/io/OutputStream;
    :try_start_7
    array-length v0, v4

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    and-int/lit8 v28, v8, 0x4

    if-nez v28, :cond_10

    .line 184
    new-instance v20, Ljava/util/zip/GZIPOutputStream;

    invoke-direct/range {v20 .. v21}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 185
    .end local v21    # "output":Ljava/io/OutputStream;
    .restart local v20    # "output":Ljava/io/OutputStream;
    or-int/lit8 v8, v8, 0x4

    .line 189
    :cond_8
    :goto_5
    const/16 v28, 0x0

    :try_start_8
    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 192
    .local v18, "now":J
    sub-long v28, v18, v12

    const-wide/16 v30, 0x7530

    cmp-long v28, v28, v30

    if-lez v28, :cond_9

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v16

    .line 194
    move-wide/from16 v12, v18

    .line 197
    :cond_9
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v22

    .line 198
    if-gtz v22, :cond_c

    .line 199
    invoke-static {v9}, Lmiui/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 200
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 201
    const/16 v20, 0x0

    .line 206
    :goto_6
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 207
    .local v14, "len":J
    cmp-long v28, v14, v16

    if-lez v28, :cond_d

    .line 208
    const-string v28, "DropBoxManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Dropping: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " > "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " bytes)"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 210
    const/16 v24, 0x0

    .line 215
    .end local v25    # "temp":Ljava/io/File;
    .restart local v24    # "temp":Ljava/io/File;
    :goto_7
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v8}, Lcom/miui/internal/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v26

    .line 216
    .local v26, "time":J
    const/16 v24, 0x0

    .line 218
    new-instance v6, Landroid/content/Intent;

    const-string v28, "miui.intent.action.DROPBOX_ENTRY_ADDED"

    move-object/from16 v0, v28

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v6, "dropboxIntent":Landroid/content/Intent;
    const-string v28, "tag"

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v28, "time"

    move-object/from16 v0, v28

    move-wide/from16 v1, v26

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 229
    if-eqz v20, :cond_a

    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 230
    :cond_a
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 231
    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    .line 171
    .end local v5    # "bufferSize":I
    .end local v6    # "dropboxIntent":Landroid/content/Intent;
    .end local v9    # "foutput":Ljava/io/FileOutputStream;
    .end local v14    # "len":J
    .end local v18    # "now":J
    .end local v26    # "time":J
    .restart local v11    # "n":I
    :cond_b
    add-int v22, v22, v11

    .line 172
    goto/16 :goto_4

    .line 203
    .end local v11    # "n":I
    .end local v24    # "temp":Ljava/io/File;
    .restart local v5    # "bufferSize":I
    .restart local v9    # "foutput":Ljava/io/FileOutputStream;
    .restart local v18    # "now":J
    .restart local v25    # "temp":Ljava/io/File;
    :cond_c
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_6

    .line 226
    .end local v5    # "bufferSize":I
    .end local v9    # "foutput":Ljava/io/FileOutputStream;
    .end local v18    # "now":J
    :catch_1
    move-exception v7

    move-object/from16 v24, v25

    .end local v25    # "temp":Ljava/io/File;
    .restart local v24    # "temp":Ljava/io/File;
    goto/16 :goto_0

    .line 213
    .end local v24    # "temp":Ljava/io/File;
    .restart local v5    # "bufferSize":I
    .restart local v9    # "foutput":Ljava/io/FileOutputStream;
    .restart local v14    # "len":J
    .restart local v18    # "now":J
    .restart local v25    # "temp":Ljava/io/File;
    :cond_d
    if-gtz v22, :cond_8

    move-object/from16 v24, v25

    .end local v25    # "temp":Ljava/io/File;
    .restart local v24    # "temp":Ljava/io/File;
    goto :goto_7

    .line 229
    .end local v4    # "buffer":[B
    .end local v5    # "bufferSize":I
    .end local v8    # "flags":I
    .end local v9    # "foutput":Ljava/io/FileOutputStream;
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v12    # "lastTrim":J
    .end local v14    # "len":J
    .end local v16    # "max":J
    .end local v18    # "now":J
    .end local v22    # "read":I
    :catchall_0
    move-exception v28

    :goto_9
    if-eqz v20, :cond_e

    :try_start_c
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 230
    :cond_e
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lmiui/os/DropBoxManager$Entry;->close()V

    .line 231
    if-eqz v24, :cond_f

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    :cond_f
    throw v28

    .line 229
    .restart local v8    # "flags":I
    :catch_2
    move-exception v28

    goto/16 :goto_3

    .restart local v4    # "buffer":[B
    .restart local v5    # "bufferSize":I
    .restart local v6    # "dropboxIntent":Landroid/content/Intent;
    .restart local v9    # "foutput":Ljava/io/FileOutputStream;
    .restart local v10    # "input":Ljava/io/InputStream;
    .restart local v12    # "lastTrim":J
    .restart local v14    # "len":J
    .restart local v16    # "max":J
    .restart local v18    # "now":J
    .restart local v22    # "read":I
    .restart local v26    # "time":J
    :catch_3
    move-exception v28

    goto :goto_8

    .end local v4    # "buffer":[B
    .end local v5    # "bufferSize":I
    .end local v6    # "dropboxIntent":Landroid/content/Intent;
    .end local v8    # "flags":I
    .end local v9    # "foutput":Ljava/io/FileOutputStream;
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v12    # "lastTrim":J
    .end local v14    # "len":J
    .end local v16    # "max":J
    .end local v18    # "now":J
    .end local v22    # "read":I
    .end local v26    # "time":J
    .restart local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v28

    goto/16 :goto_1

    .end local v7    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v29

    goto :goto_a

    .end local v24    # "temp":Ljava/io/File;
    .restart local v4    # "buffer":[B
    .restart local v8    # "flags":I
    .restart local v10    # "input":Ljava/io/InputStream;
    .restart local v12    # "lastTrim":J
    .restart local v16    # "max":J
    .restart local v22    # "read":I
    .restart local v25    # "temp":Ljava/io/File;
    :catchall_1
    move-exception v28

    move-object/from16 v24, v25

    .end local v25    # "temp":Ljava/io/File;
    .restart local v24    # "temp":Ljava/io/File;
    goto :goto_9

    .end local v20    # "output":Ljava/io/OutputStream;
    .end local v24    # "temp":Ljava/io/File;
    .restart local v5    # "bufferSize":I
    .restart local v9    # "foutput":Ljava/io/FileOutputStream;
    .restart local v21    # "output":Ljava/io/OutputStream;
    .restart local v25    # "temp":Ljava/io/File;
    :catchall_2
    move-exception v28

    move-object/from16 v20, v21

    .end local v21    # "output":Ljava/io/OutputStream;
    .restart local v20    # "output":Ljava/io/OutputStream;
    move-object/from16 v24, v25

    .end local v25    # "temp":Ljava/io/File;
    .restart local v24    # "temp":Ljava/io/File;
    goto :goto_9

    .line 226
    .end local v20    # "output":Ljava/io/OutputStream;
    .end local v24    # "temp":Ljava/io/File;
    .restart local v21    # "output":Ljava/io/OutputStream;
    .restart local v25    # "temp":Ljava/io/File;
    :catch_6
    move-exception v7

    move-object/from16 v20, v21

    .end local v21    # "output":Ljava/io/OutputStream;
    .restart local v20    # "output":Ljava/io/OutputStream;
    move-object/from16 v24, v25

    .end local v25    # "temp":Ljava/io/File;
    .restart local v24    # "temp":Ljava/io/File;
    goto/16 :goto_0

    .end local v20    # "output":Ljava/io/OutputStream;
    .end local v24    # "temp":Ljava/io/File;
    .restart local v21    # "output":Ljava/io/OutputStream;
    .restart local v25    # "temp":Ljava/io/File;
    :cond_10
    move-object/from16 v20, v21

    .end local v21    # "output":Ljava/io/OutputStream;
    .restart local v20    # "output":Ljava/io/OutputStream;
    goto/16 :goto_5
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 31
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    const-string v3, "Permission Denial: Can\'t dump DropBoxManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :goto_0
    monitor-exit p0

    return-void

    .line 289
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :try_start_2
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v26, "out":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, "doPrint":Z
    const/4 v13, 0x0

    .line 300
    .local v13, "doFile":Z
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v27, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_6

    .line 302
    aget-object v3, p3, v17

    const-string v4, "-p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, p3, v17

    const-string v4, "--print"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    :cond_1
    const/4 v14, 0x1

    .line 301
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 290
    .end local v13    # "doFile":Z
    .end local v14    # "doPrint":Z
    .end local v17    # "i":I
    .end local v26    # "out":Ljava/lang/StringBuilder;
    .end local v27    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v15

    .line 291
    .local v15, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t initialize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    const-string v3, "DropBoxManagerService"

    const-string v4, "Can\'t init"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 281
    .end local v15    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 304
    .restart local v13    # "doFile":Z
    .restart local v14    # "doPrint":Z
    .restart local v17    # "i":I
    .restart local v26    # "out":Ljava/lang/StringBuilder;
    .restart local v27    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    aget-object v3, p3, v17

    const-string v4, "-f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, p3, v17

    const-string v4, "--file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 305
    :cond_3
    const/4 v13, 0x1

    goto :goto_2

    .line 306
    :cond_4
    aget-object v3, p3, v17

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 307
    const-string v3, "Unknown argument: "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 309
    :cond_5
    aget-object v3, p3, v17

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 313
    :cond_6
    const-string v3, "Drop box contents: "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 316
    const-string v3, "Searching for:"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "a":Ljava/lang/String;
    const-string v3, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 318
    .end local v8    # "a":Ljava/lang/String;
    :cond_7
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_8
    const/16 v25, 0x0

    .local v25, "numFound":I
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 322
    .local v24, "numArgs":I
    new-instance v29, Landroid/text/format/Time;

    invoke-direct/range {v29 .. v29}, Landroid/text/format/Time;-><init>()V

    .line 323
    .local v29, "time":Landroid/text/format/Time;
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    .line 325
    .local v16, "entry":Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 326
    const-string v3, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 327
    .local v11, "date":Ljava/lang/String;
    const/16 v21, 0x1

    .line 328
    .local v21, "match":Z
    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    if-eqz v21, :cond_c

    .line 329
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 330
    .local v9, "arg":Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    const/16 v21, 0x1

    .line 328
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 330
    :cond_b
    const/16 v21, 0x0

    goto :goto_6

    .line 332
    .end local v9    # "arg":Ljava/lang/String;
    :cond_c
    if-eqz v21, :cond_9

    .line 334
    add-int/lit8 v25, v25, 0x1

    .line 335
    if-eqz v14, :cond_d

    const-string v3, "========================================\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_d
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v3, :cond_e

    const-string v3, "(no tag)"

    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-nez v3, :cond_f

    .line 338
    const-string v3, " (no file)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 336
    :cond_e
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    goto :goto_7

    .line 340
    :cond_f
    move-object/from16 v0, v16

    iget v3, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_10

    .line 341
    const-string v3, " (contents lost)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 344
    :cond_10
    const-string v3, " ("

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    move-object/from16 v0, v16

    iget v3, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_11

    const-string v3, "compressed "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_11
    move-object/from16 v0, v16

    iget v3, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1a

    const-string v3, "text"

    :goto_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v3, ", "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes)\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    if-nez v13, :cond_12

    if-eqz v14, :cond_14

    move-object/from16 v0, v16

    iget v3, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_14

    .line 351
    :cond_12
    if-nez v14, :cond_13

    const-string v3, "    "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_13
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_14
    move-object/from16 v0, v16

    iget v3, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_19

    if-nez v14, :cond_15

    if-nez v13, :cond_19

    .line 356
    :cond_15
    const/4 v12, 0x0

    .line 357
    .local v12, "dbe":Lmiui/os/DropBoxManager$Entry;
    const/16 v19, 0x0

    .line 359
    .local v19, "isr":Ljava/io/InputStreamReader;
    :try_start_4
    new-instance v2, Lmiui/os/DropBoxManager$Entry;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v0, v16

    iget v7, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v2 .. v7}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 362
    .end local v12    # "dbe":Lmiui/os/DropBoxManager$Entry;
    .local v2, "dbe":Lmiui/os/DropBoxManager$Entry;
    if-eqz v14, :cond_1e

    .line 363
    :try_start_5
    new-instance v20, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Lmiui/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 364
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .local v20, "isr":Ljava/io/InputStreamReader;
    const/16 v3, 0x1000

    :try_start_6
    new-array v10, v3, [C

    .line 365
    .local v10, "buf":[C
    const/16 v23, 0x0

    .line 367
    .local v23, "newline":Z
    :cond_16
    :goto_9
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/io/InputStreamReader;->read([C)I

    move-result v22

    .line 368
    .local v22, "n":I
    if-gtz v22, :cond_1b

    .line 378
    if-nez v23, :cond_17

    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_17
    move-object/from16 v19, v20

    .line 390
    .end local v10    # "buf":[C
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .end local v22    # "n":I
    .end local v23    # "newline":Z
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    :goto_a
    if-eqz v2, :cond_18

    :try_start_7
    invoke-virtual {v2}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 391
    :cond_18
    if-eqz v19, :cond_19

    .line 393
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 400
    .end local v2    # "dbe":Lmiui/os/DropBoxManager$Entry;
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    :cond_19
    :goto_b
    if-eqz v14, :cond_9

    :try_start_9
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 346
    :cond_1a
    const-string v3, "data"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_8

    .line 369
    .restart local v2    # "dbe":Lmiui/os/DropBoxManager$Entry;
    .restart local v10    # "buf":[C
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v22    # "n":I
    .restart local v23    # "newline":Z
    :cond_1b
    const/4 v3, 0x0

    :try_start_a
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v10, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 370
    add-int/lit8 v3, v22, -0x1

    aget-char v3, v10, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1d

    const/16 v23, 0x1

    .line 373
    :goto_c
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/high16 v4, 0x10000

    if-le v3, v4, :cond_16

    .line 374
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 375
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_9

    .line 386
    .end local v10    # "buf":[C
    .end local v22    # "n":I
    .end local v23    # "newline":Z
    :catch_1
    move-exception v15

    move-object/from16 v19, v20

    .line 387
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "e":Ljava/io/IOException;
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    :goto_d
    :try_start_b
    const-string v3, "*** "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v3, "DropBoxManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 390
    if-eqz v2, :cond_1c

    :try_start_c
    invoke-virtual {v2}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 391
    :cond_1c
    if-eqz v19, :cond_19

    .line 393
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_b

    .line 394
    :catch_2
    move-exception v3

    goto :goto_b

    .line 370
    .end local v15    # "e":Ljava/io/IOException;
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "buf":[C
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v22    # "n":I
    .restart local v23    # "newline":Z
    :cond_1d
    const/16 v23, 0x0

    goto :goto_c

    .line 380
    .end local v10    # "buf":[C
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .end local v22    # "n":I
    .end local v23    # "newline":Z
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    :cond_1e
    const/16 v3, 0x46

    :try_start_e
    invoke-virtual {v2, v3}, Lmiui/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v28

    .line 381
    .local v28, "text":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_20

    const/16 v30, 0x1

    .line 382
    .local v30, "truncated":Z
    :goto_e
    const-string v3, "    "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    if-eqz v30, :cond_1f

    const-string v3, " ..."

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_1f
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_a

    .line 386
    .end local v28    # "text":Ljava/lang/String;
    .end local v30    # "truncated":Z
    :catch_3
    move-exception v15

    goto :goto_d

    .line 381
    .restart local v28    # "text":Ljava/lang/String;
    :cond_20
    const/16 v30, 0x0

    goto :goto_e

    .line 390
    .end local v2    # "dbe":Lmiui/os/DropBoxManager$Entry;
    .end local v28    # "text":Ljava/lang/String;
    .restart local v12    # "dbe":Lmiui/os/DropBoxManager$Entry;
    :catchall_1
    move-exception v3

    move-object v2, v12

    .end local v12    # "dbe":Lmiui/os/DropBoxManager$Entry;
    .restart local v2    # "dbe":Lmiui/os/DropBoxManager$Entry;
    :goto_f
    if-eqz v2, :cond_21

    :try_start_f
    invoke-virtual {v2}, Lmiui/os/DropBoxManager$Entry;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 391
    :cond_21
    if-eqz v19, :cond_22

    .line 393
    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 395
    :cond_22
    :goto_10
    :try_start_11
    throw v3

    .line 403
    .end local v2    # "dbe":Lmiui/os/DropBoxManager$Entry;
    .end local v11    # "date":Ljava/lang/String;
    .end local v16    # "entry":Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .end local v21    # "match":Z
    :cond_23
    if-nez v25, :cond_24

    const-string v3, "(No entries found.)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_24
    if-eqz p3, :cond_25

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_27

    .line 406
    :cond_25
    if-nez v14, :cond_26

    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_26
    const-string v3, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_27
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 394
    .restart local v2    # "dbe":Lmiui/os/DropBoxManager$Entry;
    .restart local v11    # "date":Ljava/lang/String;
    .restart local v16    # "entry":Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    .restart local v21    # "match":Z
    :catch_4
    move-exception v3

    goto/16 :goto_b

    :catch_5
    move-exception v4

    goto :goto_10

    .line 390
    :catchall_2
    move-exception v3

    goto :goto_f

    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v3

    move-object/from16 v19, v20

    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    goto :goto_f

    .line 386
    .end local v2    # "dbe":Lmiui/os/DropBoxManager$Entry;
    .restart local v12    # "dbe":Lmiui/os/DropBoxManager$Entry;
    :catch_6
    move-exception v15

    move-object v2, v12

    .end local v12    # "dbe":Lmiui/os/DropBoxManager$Entry;
    .restart local v2    # "dbe":Lmiui/os/DropBoxManager$Entry;
    goto/16 :goto_d
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Lmiui/os/DropBoxManager$Entry;
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    .prologue
    const/4 v10, 0x0

    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v1, "miui.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "READ_LOGS permission required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 254
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    if-nez p1, :cond_1

    :try_start_2
    iget-object v9, p0, Lcom/miui/internal/server/DropBoxManagerService;->mAllFiles:Lcom/miui/internal/server/DropBoxManagerService$FileList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    .local v9, "list":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    :goto_0
    if-nez v9, :cond_2

    move-object v0, v10

    .line 277
    .end local v9    # "list":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    :goto_1
    monitor-exit p0

    return-object v0

    .line 255
    :catch_0
    move-exception v6

    .line 256
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string v0, "DropBoxManagerService"

    const-string v1, "Can\'t init"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v10

    .line 257
    goto :goto_1

    .line 260
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    move-object v9, v0

    goto :goto_0

    .line 263
    .restart local v9    # "list":Lcom/miui/internal/server/DropBoxManagerService$FileList;
    :cond_2
    iget-object v0, v9, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v1, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-direct {v1, v2, v3}, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;

    .line 264
    .local v7, "entry":Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    iget-object v0, v7, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 265
    iget v0, v7, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 266
    new-instance v0, Lmiui/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v1, v2, v3}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 269
    :cond_4
    :try_start_4
    new-instance v0, Lmiui/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-object v4, v7, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget v5, v7, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v0 .. v5}, Lmiui/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 271
    :catch_1
    move-exception v6

    .line 272
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v0, "DropBoxManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/miui/internal/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "entry":Lcom/miui/internal/server/DropBoxManagerService$EntryFile;
    :cond_5
    move-object v0, v10

    .line 277
    goto :goto_1
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 239
    .local v0, "token":J
    :try_start_0
    const-string v2, "disabled"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dropbox:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 241
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 239
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
