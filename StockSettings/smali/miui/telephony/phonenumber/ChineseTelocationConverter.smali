.class public Lmiui/telephony/phonenumber/ChineseTelocationConverter;
.super Ljava/lang/Object;
.source "ChineseTelocationConverter.java"


# static fields
.field public static final AREACODE_INDEX:I = 0x1

.field private static final DATA_ASSET_NAME:Ljava/lang/String; = "telocation.idf"

.field private static final EMPTY:Ljava/lang/String; = ""

.field public static final LOCATION_INDEX:I = 0x0

.field public static final LOCATION_KIND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ChineseTelocation"

.field public static final UNIQUE_ID_NONE:I

.field private static sInstance:Lmiui/telephony/phonenumber/ChineseTelocationConverter;


# instance fields
.field private mAreaCodeTelocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    invoke-direct {v0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;-><init>()V

    sput-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->sInstance:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mAreaCodeTelocations:Ljava/util/HashMap;

    .line 37
    :try_start_0
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "telocation.idf"

    invoke-static {v4, v5}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "dataPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    invoke-static {v0}, Lmiui/util/DirectIndexedFile;->open(Ljava/lang/String;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v4

    iput-object v4, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    .line 43
    const-string v4, "ChineseTelocation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read Telocation from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v0    # "dataPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 45
    .restart local v0    # "dataPath":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 46
    .local v3, "mAssets":Landroid/content/res/AssetManager;
    const-string v4, "telocation.idf"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lmiui/util/DirectIndexedFile;->open(Ljava/io/InputStream;)Lmiui/util/DirectIndexedFile$Reader;

    move-result-object v4

    iput-object v4, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    .line 48
    const-string v4, "ChineseTelocation"

    const-string v5, "Read Telocation from assets"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "dataPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "mAssets":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "ChineseTelocation"

    const-string v5, "Can\'t read telocation.idf, NO mobile telocation supported!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->sInstance:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    return-object v0
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
    .line 57
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    invoke-virtual {v0}, Lmiui/util/DirectIndexedFile$Reader;->close()V

    .line 61
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 62
    return-void
.end method

.method public getAreaCode(Landroid/location/Address;)Ljava/lang/String;
    .locals 11
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    iget-object v7, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v7, :cond_1

    .line 156
    :cond_0
    const-string v7, ""

    .line 187
    :goto_0
    return-object v7

    .line 159
    :cond_1
    iget-object v8, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mAreaCodeTelocations:Ljava/util/HashMap;

    monitor-enter v8

    .line 160
    :try_start_0
    iget-object v7, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mAreaCodeTelocations:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 161
    const/4 v3, 0x0

    .local v3, "id":I
    :goto_1
    const/16 v7, 0x3e8

    if-ge v3, v7, :cond_3

    .line 162
    iget-object v7, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v3, v10}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 163
    .local v5, "location":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 164
    iget-object v7, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mAreaCodeTelocations:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 168
    .end local v3    # "id":I
    .end local v5    # "location":Ljava/lang/String;
    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "adminArea":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "locality":Ljava/lang/String;
    const-string v7, "ChineseTelocation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adminArea:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " locality:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 175
    const-string v7, "\u7701"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v7, "\u5e02"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v7, "\u5e02"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 178
    const-string v7, "\u533a"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 179
    const-string v7, "\u53bf"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 180
    iget-object v7, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mAreaCodeTelocations:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 181
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 182
    .local v6, "normalizedAddress":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 183
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_0

    .line 168
    .end local v0    # "adminArea":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "locality":Ljava/lang/String;
    .end local v6    # "normalizedAddress":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 187
    .restart local v0    # "adminArea":Ljava/lang/String;
    .restart local v4    # "locality":Ljava/lang/String;
    :cond_5
    const-string v7, ""

    goto/16 :goto_0
.end method

.method public getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v3, 0x1

    .line 133
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v1, :cond_0

    .line 134
    const-string v1, ""

    .line 137
    :goto_0
    return-object v1

    .line 136
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v3}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    .line 137
    .local v0, "id":I
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocation(Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .locals 3
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "withAreaCode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v1, :cond_0

    .line 114
    const-string v1, ""

    .line 128
    :goto_0
    return-object v1

    .line 118
    :cond_0
    if-nez p4, :cond_1

    .line 119
    const-string v1, ""

    goto :goto_0

    .line 122
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    .line 124
    .local v0, "id":I
    if-gtz v0, :cond_2

    .line 125
    const-string v1, ""

    goto :goto_0

    .line 128
    :cond_2
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    invoke-virtual {v1, v2, v0, v2}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUniqId(Ljava/lang/CharSequence;IIZ)I
    .locals 7
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "enableMobile"    # Z

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    const/16 v6, 0x30

    .line 69
    if-lez p3, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 70
    add-int/lit8 p2, p2, 0x1

    .line 71
    add-int/lit8 p3, p3, -0x1

    .line 73
    :cond_0
    const/4 v3, 0x1

    if-gt p3, v3, :cond_2

    move v0, v1

    .line 108
    :cond_1
    :goto_0
    return v0

    .line 78
    :cond_2
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 102
    const/4 v2, 0x2

    if-le p3, v2, :cond_4

    .line 103
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p2, 0x2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 105
    .local v0, "index":I
    goto :goto_0

    .line 82
    .end local v0    # "index":I
    :pswitch_0
    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_3

    move v0, v2

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    if-eqz p4, :cond_4

    const/4 v3, 0x6

    if-le p3, v3, :cond_4

    .line 85
    const v3, 0xf4240

    add-int/lit8 v4, p2, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    const v5, 0x186a0

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit16 v4, v4, 0x2710

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x4

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x5

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x6

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int v0, v3, v4

    .line 89
    .restart local v0    # "index":I
    const v3, 0x150ead

    if-ne v0, v3, :cond_1

    if-le p3, v2, :cond_1

    add-int/lit8 v2, p2, 0x7

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p2, 0x8

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1

    add-int/lit8 v2, p2, 0x9

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1

    add-int/lit8 v2, p2, 0xa

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1

    move v0, v1

    .line 93
    goto/16 :goto_0

    .line 99
    .end local v0    # "index":I
    :pswitch_1
    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/lit8 v0, v1, 0x14

    .line 100
    .restart local v0    # "index":I
    goto/16 :goto_0

    .end local v0    # "index":I
    :cond_4
    :pswitch_2
    move v0, v1

    .line 108
    goto/16 :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    if-nez v1, :cond_0

    .line 143
    const-string v1, ""

    .line 146
    :goto_0
    return-object v1

    .line 145
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v3}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    .line 146
    .local v0, "id":I
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->mDensityIndexFileReader:Lmiui/util/DirectIndexedFile$Reader;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v0, v2}, Lmiui/util/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method
