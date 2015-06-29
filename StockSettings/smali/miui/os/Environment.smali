.class public Lmiui/os/Environment;
.super Landroid/os/Environment;
.source "Environment.java"


# static fields
.field private static final EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

.field private static final GB:J = 0x40000000L

.field private static final MIUI_APP_DIRECTORY:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_DIRECTORY:Ljava/io/File;

.field private static final MIUI_DATA_DIRECTORY:Ljava/io/File;

.field private static final MIUI_DIRECTORY_NAME:Ljava/lang/String; = "MIUI"

.field private static final MIUI_PRESET_APP_DIRECTORY:Ljava/io/File;

.field private static final ProcessClass:Lcom/miui/internal/variable/Android_Os_Process_class;

.field private static sCpuCount:I

.field private static sDevice2Memory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sTotalMemory:J

.field private static sTotalPhysicalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide v6, 0x80000000L

    const-wide/32 v4, 0x40000000

    .line 26
    invoke-static {}, Lcom/miui/internal/variable/Android_Os_Process_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Os_Process_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Os_Process_class$Factory;->get()Lcom/miui/internal/variable/Android_Os_Process_class;

    move-result-object v0

    sput-object v0, Lmiui/os/Environment;->ProcessClass:Lcom/miui/internal/variable/Android_Os_Process_class;

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "MIUI"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    .line 34
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->MIUI_DATA_DIRECTORY:Ljava/io/File;

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->MIUI_APP_DIRECTORY:Ljava/io/File;

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "preset_apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->MIUI_PRESET_APP_DIRECTORY:Ljava/io/File;

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "current"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/os/Environment;->MIUI_CUSTOMIZED_DIRECTORY:Ljava/io/File;

    .line 78
    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/os/Environment;->sTotalMemory:J

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    .line 84
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "hwu9200"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "hwu9500"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "maguro"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "ville"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "LT26i"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "ventana"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "stuttgart"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "t03g"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    const-string v1, "pisces"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v0, 0x0

    sput v0, Lmiui/os/Environment;->sCpuCount:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCpuCount()I
    .locals 8

    .prologue
    .line 138
    sget v6, Lmiui/os/Environment;->sCpuCount:I

    if-nez v6, :cond_2

    .line 139
    const-string v6, "cpu[0-9]*"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 140
    .local v5, "pattern":Ljava/util/regex/Pattern;
    const/4 v1, 0x0

    .line 141
    .local v1, "count":I
    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/devices/system/cpu/"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 142
    .local v2, "file":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    add-int/lit8 v1, v1, 0x1

    .line 141
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "file":Ljava/lang/String;
    :cond_1
    sput v1, Lmiui/os/Environment;->sCpuCount:I

    .line 148
    :cond_2
    sget v6, Lmiui/os/Environment;->sCpuCount:I

    return v6
.end method

.method public static getExternalStorageMiuiDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 49
    :cond_0
    sget-object v0, Lmiui/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getFreeMemory()J
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lmiui/os/Environment;->ProcessClass:Lcom/miui/internal/variable/Android_Os_Process_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Os_Process_class;->getFreeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLowMemoryLimitation()J
    .locals 6

    .prologue
    .line 125
    :try_start_0
    const-string v3, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-static {v3}, Lmiui/os/FileUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 127
    .local v2, "value":I
    mul-int/lit8 v3, v2, 0x4

    mul-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    .line 131
    .end local v2    # "value":I
    :goto_0
    return-wide v4

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static getMiuiAppDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lmiui/os/Environment;->MIUI_APP_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustomizedDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lmiui/os/Environment;->MIUI_CUSTOMIZED_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lmiui/os/Environment;->MIUI_DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiPresetAppDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lmiui/os/Environment;->MIUI_PRESET_APP_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getTotalMemory()J
    .locals 4

    .prologue
    .line 97
    sget-wide v0, Lmiui/os/Environment;->sTotalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lmiui/os/Environment;->ProcessClass:Lcom/miui/internal/variable/Android_Os_Process_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Os_Process_class;->getTotalMemory()J

    move-result-wide v0

    sput-wide v0, Lmiui/os/Environment;->sTotalMemory:J

    .line 100
    :cond_0
    sget-wide v0, Lmiui/os/Environment;->sTotalMemory:J

    return-wide v0
.end method

.method public static getTotalPhysicalMemory()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 105
    sget-wide v0, Lmiui/os/Environment;->sTotalPhysicalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 106
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lmiui/os/Environment;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lmiui/os/Environment;->sTotalPhysicalMemory:J

    .line 114
    :cond_0
    :goto_0
    sget-wide v0, Lmiui/os/Environment;->sTotalPhysicalMemory:J

    return-wide v0

    .line 111
    :cond_1
    invoke-static {}, Lmiui/os/Environment;->getTotalMemory()J

    move-result-wide v0

    div-long/2addr v0, v4

    const-wide/32 v2, 0x19000

    add-long/2addr v0, v2

    const-wide/32 v2, 0x40000

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x100

    mul-long/2addr v0, v2

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    sput-wide v0, Lmiui/os/Environment;->sTotalPhysicalMemory:J

    goto :goto_0
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 74
    const-string v0, "mounted"

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
