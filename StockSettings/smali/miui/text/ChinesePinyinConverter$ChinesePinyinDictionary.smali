.class Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;
.super Ljava/lang/Object;
.source "ChinesePinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/text/ChinesePinyinConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChinesePinyinDictionary"
.end annotation


# static fields
.field private static final UNICODE_2_PINYIN_ASSET_NAME:Ljava/lang/String; = "pinyinindex.idf"


# instance fields
.field private mReader:Lmiui/util/DirectIndexedFile$Reader;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    :try_start_0
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "pinyinindex.idf"

    invoke-static {v4, v5}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "dataPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    invoke-static {v0}, Lmiui/util/DirectIndexedFile;->open(Ljava/lang/String;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v4

    iput-object v4, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;

    .line 432
    .end local v0    # "dataPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 425
    .restart local v0    # "dataPath":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 426
    .local v3, "mAssets":Landroid/content/res/AssetManager;
    const-string v4, "pinyinindex.idf"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lmiui/util/DirectIndexedFile;->open(Ljava/io/InputStream;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v4

    iput-object v4, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    .end local v0    # "dataPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "mAssets":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ChinesePinyinConverter"

    const-string v5, "Init resource IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lmiui/text/ChinesePinyinConverter$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/text/ChinesePinyinConverter$1;

    .prologue
    .line 411
    invoke-direct {p0}, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    .line 453
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 454
    return-void
.end method

.method public getPinyinString(C)[Ljava/lang/String;
    .locals 5
    .param p1, "ch"    # C

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 435
    iget-object v3, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v3, :cond_0

    .line 444
    :goto_0
    return-object v2

    .line 438
    :cond_0
    add-int/lit16 v0, p1, -0x4e00

    .line 439
    .local v0, "offset":I
    iget-object v3, p0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->mReader:Lmiui/util/DirectIndexedFile$Reader;

    invoke-virtual {v3, v4, v0, v4}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 440
    .local v1, "pyString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    const-string v3, "ChinesePinyinConverter"

    const-string v4, "The ChinesePinyinConverter dictionary is not correct, need rebuild or reset the ROM."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :cond_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
