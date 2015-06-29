.class public Lmiui/util/ErrorReport;
.super Ljava/lang/Object;
.source "ErrorReport.java"


# static fields
.field private static final ANR_MAX_LINE_NUMBER:I = 0x12c

.field public static final DROPBOX_TAG:Ljava/lang/String; = "fc_anr"

.field private static final ERROR_TYPE_ANR:Ljava/lang/String; = "anr"

.field private static final ERROR_TYPE_FC:Ljava/lang/String; = "fc"

.field public static final FLAG_SEND_DIRECTLY:I = 0x2

.field public static final FLAG_UNMETERED_NETWORK_ONLY:I = 0x1

.field private static final JSON_ANR_ACTIVITY:Ljava/lang/String; = "anr_activity"

.field private static final JSON_ANR_CAUSE:Ljava/lang/String; = "anr_cause"

.field private static final JSON_APP_VESION:Ljava/lang/String; = "app_version"

.field private static final JSON_BUILD_VERSION:Ljava/lang/String; = "build_version"

.field private static final JSON_DEVICE:Ljava/lang/String; = "device"

.field private static final JSON_ERROR_TYPE:Ljava/lang/String; = "error_type"

.field private static final JSON_EXCEPTION_CLASS:Ljava/lang/String; = "exception_class"

.field private static final JSON_EXCEPTION_SOURCE_METHOD:Ljava/lang/String; = "exception_source_method"

.field private static final JSON_IMEI:Ljava/lang/String; = "imei"

.field private static final JSON_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final JSON_MODEL:Ljava/lang/String; = "model"

.field private static final JSON_NETWORK:Ljava/lang/String; = "network"

.field private static final JSON_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final JSON_PLATFORM:Ljava/lang/String; = "platform"

.field private static final JSON_STACK_TRACK:Ljava/lang/String; = "stack_track"

.field private static final JSON_USER_ALLOWED:Ljava/lang/String; = "user_allowed"

.field private static final JSON_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field private static final SALT_P1:Ljava/lang/String; = "8007236f-"

.field private static final SALT_P2:Ljava/lang/String; = "a2d6-4847-ac83-"

.field private static final SALT_P3:Ljava/lang/String; = "c49395ad6d65"

.field private static final TAG:Ljava/lang/String; = "ErrorReport"


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getAnrStackTrack()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v5, "traceBuilder":Ljava/lang/StringBuilder;
    const-string v8, "dalvik.vm.stack-trace-file"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "tracesPath":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 225
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v6, "tracesFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 228
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 231
    .local v4, "start":Z
    const/4 v0, 0x0

    .line 232
    .local v0, "count":I
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 233
    const-string v8, "DALVIK THREADS:"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 234
    const/4 v4, 0x1

    .line 238
    :cond_1
    if-eqz v4, :cond_2

    .line 239
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    add-int/lit8 v0, v0, 0x1

    .line 242
    :cond_2
    const/16 v8, 0x12c

    if-le v0, v8, :cond_0

    .line 250
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 251
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 258
    .end local v0    # "count":I
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "start":Z
    .end local v6    # "tracesFile":Ljava/io/File;
    :cond_4
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 235
    .restart local v0    # "count":I
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "start":Z
    .restart local v6    # "tracesFile":Ljava/io/File;
    :cond_5
    if-eqz v4, :cond_1

    :try_start_3
    const-string v8, "-----"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 246
    .end local v0    # "count":I
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "start":Z
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v8

    .line 250
    :goto_2
    if-eqz v2, :cond_4

    .line 251
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 253
    :catch_1
    move-exception v8

    goto :goto_1

    .line 249
    :catchall_0
    move-exception v8

    .line 250
    :goto_3
    if-eqz v2, :cond_6

    .line 251
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 255
    :cond_6
    :goto_4
    throw v8

    .line 253
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "start":Z
    :catch_2
    move-exception v8

    goto :goto_1

    .end local v0    # "count":I
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "start":Z
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v9

    goto :goto_4

    .line 249
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "start":Z
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 246
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v8

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static getDeviceString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 267
    const-string v1, "ro.product.mod_device"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "modDevice":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .end local v0    # "modDevice":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getIMEIMd5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 285
    invoke-static {}, Lmiui/telephony/TelephonyHelper;->getInstance()Lmiui/telephony/TelephonyHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "imei":Ljava/lang/String;
    const-string v1, ""

    .line 287
    .local v1, "imeiMd5":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    const-string v2, "MD5"

    invoke-static {v0, v2}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v1

    .line 290
    :cond_0
    return-object v1
.end method

.method private static getKeyFromParams(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lmiui/util/ErrorReport$2;

    invoke-direct {v6}, Lmiui/util/ErrorReport$2;-><init>()V

    invoke-static {p0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .local v3, "keyBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 377
    .local v2, "isFirst":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/NameValuePair;

    .line 378
    .local v5, "nvp":Lorg/apache/http/NameValuePair;
    if-nez v2, :cond_0

    .line 379
    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_0
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const/4 v2, 0x0

    goto :goto_0

    .line 386
    .end local v5    # "nvp":Lorg/apache/http/NameValuePair;
    :cond_1
    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "8007236f-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v6, "a2d6-4847-ac83-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v6, "c49395ad6d65"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 391
    .local v4, "keyBytes":[B
    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 392
    .local v0, "encodedBytes":[B
    const-string v6, "MD5"

    invoke-static {v0, v6}, Lmiui/security/DigestUtils;->get([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getMacAddressMd5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 276
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "macAddress":Ljava/lang/String;
    const-string v1, ""

    .line 278
    .local v1, "macAddressMd5":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    const-string v2, "MD5"

    invoke-static {v0, v2}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v1

    .line 281
    :cond_0
    return-object v1
.end method

.method private static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private static getNetworkName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 263
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 297
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 303
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 306
    :cond_0
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 308
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ErrorReport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to find package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    const-string v3, ""

    goto :goto_0

    .line 308
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static isNetworkAvailable(I)Z
    .locals 3
    .param p0, "flag"    # I

    .prologue
    .line 408
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    .line 409
    .local v0, "helper":Lmiui/net/ConnectivityHelper;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 410
    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isUnmeteredNetworkConnected()Z

    move-result v1

    .line 412
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isNetworkConnected()Z

    move-result v1

    goto :goto_0
.end method

.method public static isUserAllowed(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 401
    sget-boolean v4, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v4, :cond_0

    move v1, v2

    .line 402
    .local v1, "default_value":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "upload_log_pref"

    invoke-static {v4, v5, v1}, Lmiui/provider/ExtraSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 404
    .local v0, "allow":I
    if-eqz v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "allow":I
    .end local v1    # "default_value":I
    :cond_0
    move v1, v3

    .line 401
    goto :goto_0

    .restart local v0    # "allow":I
    .restart local v1    # "default_value":I
    :cond_1
    move v2, v3

    .line 404
    goto :goto_1
.end method

.method private static populateAnrData(Lorg/json/JSONObject;Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .locals 2
    .param p0, "jsPost"    # Lorg/json/JSONObject;
    .param p1, "state"    # Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 215
    const-string v0, "error_type"

    const-string v1, "anr"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v0, "anr_cause"

    iget-object v1, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v1, "anr_activity"

    iget-object v0, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v0, "stack_track"

    invoke-static {}, Lmiui/util/ErrorReport;->getAnrStackTrack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    return-void

    .line 217
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method private static populateCommonData(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "jsPost"    # Lorg/json/JSONObject;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    const-string v0, "network"

    invoke-static {p1}, Lmiui/util/ErrorReport;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v0, "device"

    invoke-static {}, Lmiui/util/ErrorReport;->getDeviceString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v0, "model"

    invoke-static {}, Lmiui/util/ErrorReport;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v0, "mac_address"

    invoke-static {}, Lmiui/util/ErrorReport;->getMacAddressMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v0, "imei"

    invoke-static {}, Lmiui/util/ErrorReport;->getIMEIMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v0, "platform"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v0, "build_version"

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v0, "package_name"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v0, "app_version"

    invoke-static {p1, p2}, Lmiui/util/ErrorReport;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v3, "wifi_state"

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string v0, "user_allowed"

    invoke-static {p1}, Lmiui/util/ErrorReport;->isUserAllowed(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    return-void

    :cond_0
    move v0, v2

    .line 196
    goto :goto_0

    :cond_1
    move v1, v2

    .line 197
    goto :goto_1
.end method

.method private static populateExceptionData(Lorg/json/JSONObject;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 3
    .param p0, "jsPost"    # Lorg/json/JSONObject;
    .param p1, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 206
    :cond_0
    const-string v0, "error_type"

    const-string v1, "fc"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v0, "exception_class"

    iget-object v1, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v0, "exception_source_method"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v0, "stack_track"

    iget-object v1, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static sendAnrReport(Landroid/content/Context;Landroid/app/ActivityManager$ProcessErrorStateInfo;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .param p2, "flag"    # I

    .prologue
    .line 172
    invoke-static {p0}, Lmiui/util/ErrorReport;->isUserAllowed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    :goto_0
    return-void

    .line 176
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 177
    .local v1, "js":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lmiui/util/ErrorReport;->populateCommonData(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    invoke-static {v1, p1}, Lmiui/util/ErrorReport;->populateAnrData(Lorg/json/JSONObject;Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 179
    invoke-static {p0, v1, p2}, Lmiui/util/ErrorReport;->sendReportRequestAsync(Landroid/content/Context;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v1    # "js":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ErrorReport"

    const-string v3, "Fail to sendAnrReport"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static sendDropboxRequest(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 396
    invoke-static {}, Lmiui/os/DropBoxManager;->getInstance()Lmiui/os/DropBoxManager;

    move-result-object v0

    .line 397
    .local v0, "dropbox":Lmiui/os/DropBoxManager;
    const-string v1, "fc_anr"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public static sendExceptionReport(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "flag"    # I

    .prologue
    const/4 v5, 0x2

    .line 134
    invoke-static {p0}, Lmiui/util/ErrorReport;->isUserAllowed(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    :goto_0
    return-void

    .line 138
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 140
    .local v2, "js":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {v2, p0, p1}, Lmiui/util/ErrorReport;->populateCommonData(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    invoke-static {v2, p2}, Lmiui/util/ErrorReport;->populateExceptionData(Lorg/json/JSONObject;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 142
    if-ne p3, v5, :cond_1

    .line 143
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.miui.bugreport"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v3, "com.miui.bugreport"

    const-string v4, "com.miui.bugreport.ui.MiuiFcPreviewActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v3, "extra_fc_report"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 153
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "ErrorReport"

    const-string v4, "MiuiFcPreviewActivity not found, sendExceptionReport directly"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p0, v2, v5}, Lmiui/util/ErrorReport;->sendReportRequestAsync(Landroid/content/Context;Lorg/json/JSONObject;I)V

    goto :goto_0

    .line 151
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    :try_start_1
    invoke-static {p0, v2}, Lmiui/util/ErrorReport;->sendDropboxRequest(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ErrorReport"

    const-string v4, "Fail to sendExceptionReport"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sendExceptionReport(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lmiui/util/ErrorReport;->sendExceptionReport(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;I)V

    .line 120
    return-void
.end method

.method private static sendHttpRequest(Lorg/json/JSONObject;)Z
    .locals 11
    .param p0, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v8, "http://tracking.miui.com/fcanr/tracking"

    invoke-direct {v3, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 342
    .local v3, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const-string v8, "Content-Type"

    const-string v9, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 345
    .local v4, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/http/NameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "error"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-static {v4}, Lmiui/util/ErrorReport;->getKeyFromParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, "md5":Ljava/lang/String;
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "s"

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v8, "UTF-8"

    invoke-direct {v1, v4, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 349
    .local v1, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 352
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 353
    .local v2, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v8, 0xbb8

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 354
    const/16 v8, 0x1388

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 355
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 356
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 357
    .local v7, "response":Lorg/apache/http/HttpResponse;
    new-instance v6, Lorg/json/JSONObject;

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 358
    .local v6, "requestResult":Lorg/json/JSONObject;
    const-string v8, "S"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Ok"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 359
    const-string v8, "ErrorReport"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to report errors to miui, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "R"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v8, 0x0

    .line 363
    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static sendReportRequest(Landroid/content/Context;Lorg/json/JSONObject;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "flag"    # I

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "sent":Z
    invoke-static {p2}, Lmiui/util/ErrorReport;->isNetworkAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    :try_start_0
    invoke-static {p1}, Lmiui/util/ErrorReport;->sendHttpRequest(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 322
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_1

    .line 323
    invoke-static {p0, p1}, Lmiui/util/ErrorReport;->sendDropboxRequest(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 325
    :cond_1
    return v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ErrorReport"

    const-string v3, "Fail to sendHttpRequest"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static sendReportRequestAsync(Landroid/content/Context;Lorg/json/JSONObject;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "flag"    # I

    .prologue
    .line 330
    new-instance v0, Lmiui/util/ErrorReport$1;

    invoke-direct {v0, p0, p1, p2}, Lmiui/util/ErrorReport$1;-><init>(Landroid/content/Context;Lorg/json/JSONObject;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/util/ErrorReport$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 337
    return-void
.end method
