.class public Lmiui/graphics/FileIconUtils;
.super Ljava/lang/Object;
.source "FileIconUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileIconHelper"

.field private static final TYPE_APK:Ljava/lang/String; = "apk"

.field private static sFileExtToIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/graphics/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    .line 23
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mp3"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_mp3:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 26
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wma"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_wma:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 29
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wav"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_wav:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 32
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mid"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_mid:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 35
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mp4"

    aput-object v1, v0, v3

    const-string v1, "wmv"

    aput-object v1, v0, v4

    const-string v1, "mpeg"

    aput-object v1, v0, v5

    const-string v1, "m4v"

    aput-object v1, v0, v6

    const-string v1, "3gp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "3g2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "3gpp2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "asf"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mkv"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "vob"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ts"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "f4v"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "rm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mov"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rmvb"

    aput-object v2, v0, v1

    sget v1, Lmiui/R$drawable;->file_icon_video:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "jpg"

    aput-object v1, v0, v3

    const-string v1, "jpeg"

    aput-object v1, v0, v4

    const-string v1, "gif"

    aput-object v1, v0, v5

    const-string v1, "png"

    aput-object v1, v0, v6

    const-string v1, "bmp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "wbmp"

    aput-object v2, v0, v1

    sget v1, Lmiui/R$drawable;->file_icon_picture:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 42
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "txt"

    aput-object v1, v0, v3

    const-string v1, "log"

    aput-object v1, v0, v4

    const-string v1, "ini"

    aput-object v1, v0, v5

    const-string v1, "lrc"

    aput-object v1, v0, v6

    sget v1, Lmiui/R$drawable;->file_icon_txt:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 45
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "doc"

    aput-object v1, v0, v3

    const-string v1, "docx"

    aput-object v1, v0, v4

    sget v1, Lmiui/R$drawable;->file_icon_doc:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 48
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ppt"

    aput-object v1, v0, v3

    const-string v1, "pptx"

    aput-object v1, v0, v4

    sget v1, Lmiui/R$drawable;->file_icon_ppt:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 51
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "xls"

    aput-object v1, v0, v3

    const-string v1, "xlsx"

    aput-object v1, v0, v4

    sget v1, Lmiui/R$drawable;->file_icon_xls:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wps"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_wps:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 57
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pps"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_pps:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "et"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_et:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 63
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wpt"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_wpt:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 66
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ett"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_ett:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 69
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "dps"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_dps:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 72
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "dpt"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_dpt:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 75
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "pdf"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_pdf:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "zip"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_zip:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 81
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mtz"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_theme:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 84
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "rar"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_rar:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 87
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "apk"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_apk:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 90
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "amr"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_amr:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 93
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vcf"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_vcf:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 96
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "flac"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_flac:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 99
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "aac"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_aac:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 102
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ape"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_ape:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 105
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "m4a"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_m4a:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 108
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ogg"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_ogg:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 111
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "audio"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_audio:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "html"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_html:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 117
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "xml"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_xml:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 120
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "3gpp"

    aput-object v1, v0, v3

    sget v1, Lmiui/R$drawable;->file_icon_3gpp:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    .line 123
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
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addItem([Ljava/lang/String;I)V
    .locals 7
    .param p0, "exts"    # [Ljava/lang/String;
    .param p1, "resId"    # I

    .prologue
    .line 134
    if-eqz p0, :cond_0

    .line 135
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 136
    .local v1, "ext":Ljava/lang/String;
    sget-object v4, Lmiui/graphics/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method private static getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 152
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 153
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 154
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 155
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 158
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 165
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v4

    .line 159
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "FileIconHelper"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiui/R$drawable;->file_icon_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0
.end method

.method private static getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 142
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 143
    .local v0, "dotPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 144
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getFileIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileFullPath"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {p1}, Lmiui/graphics/FileIconUtils;->getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "ext":Ljava/lang/String;
    const-string v1, "apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lmiui/graphics/FileIconUtils;->getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Lmiui/graphics/FileIconUtils;->getFileIconId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileIconId(Ljava/lang/String;)I
    .locals 3
    .param p0, "ext"    # Ljava/lang/String;

    .prologue
    .line 174
    sget-object v1, Lmiui/graphics/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 175
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    sget v1, Lmiui/R$drawable;->file_icon_default:I

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method