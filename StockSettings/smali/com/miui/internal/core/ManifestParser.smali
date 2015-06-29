.class public Lcom/miui/internal/core/ManifestParser;
.super Ljava/lang/Object;
.source "ManifestParser.java"


# static fields
.field private static final ELEMENT_DEPENDENCIES:Ljava/lang/String; = "dependencies"

.field private static final ELEMENT_DEPENDENCY:Ljava/lang/String; = "dependency"

.field private static final ELEMENT_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final ELEMENT_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field private static final MANIFEST_FILE_NAME:Ljava/lang/String; = "miui_manifest"

.field private static final META_DATA_KEY:Ljava/lang/String; = "com.miui.sdk.manifest"


# instance fields
.field private mParser:Landroid/content/res/XmlResourceParser;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/miui/internal/core/ManifestParser;->mResources:Landroid/content/res/Resources;

    .line 39
    iput-object p2, p0, Lcom/miui/internal/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 40
    return-void
.end method

.method private buildCompleteManifest(Lcom/miui/internal/core/Manifest;)Lcom/miui/internal/core/Manifest;
    .locals 2
    .param p1, "manifest"    # Lcom/miui/internal/core/Manifest;

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/miui/internal/core/Manifest;->getSdkDependency()Lcom/miui/internal/core/LevelInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    new-instance v0, Lcom/miui/internal/core/LevelInfo;

    invoke-direct {v0}, Lcom/miui/internal/core/LevelInfo;-><init>()V

    .line 166
    .local v0, "level":Lcom/miui/internal/core/LevelInfo;
    invoke-direct {p0, v0}, Lcom/miui/internal/core/ManifestParser;->getDefaultMinLevel(Lcom/miui/internal/core/LevelInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/core/LevelInfo;->setMinLevel(I)V

    .line 167
    invoke-direct {p0, v0}, Lcom/miui/internal/core/ManifestParser;->getDefaultTargetLevel(Lcom/miui/internal/core/LevelInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/core/LevelInfo;->setTargetLevel(I)V

    .line 168
    invoke-direct {p0, v0}, Lcom/miui/internal/core/ManifestParser;->getDefaultMaxLevel(Lcom/miui/internal/core/LevelInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/core/LevelInfo;->setMaxLevel(I)V

    .line 169
    invoke-virtual {p1, v0}, Lcom/miui/internal/core/Manifest;->setSdkDependency(Lcom/miui/internal/core/LevelInfo;)V

    .line 171
    .end local v0    # "level":Lcom/miui/internal/core/LevelInfo;
    :cond_0
    return-object p1
.end method

.method public static create(Landroid/content/Context;)Lcom/miui/internal/core/ManifestParser;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 45
    .local v2, "resId":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 47
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 48
    const-string v3, "com.miui.sdk.manifest"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 50
    :cond_0
    if-nez v2, :cond_1

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "miui_manifest"

    const-string v5, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 56
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    invoke-static {p0, v2}, Lcom/miui/internal/core/ManifestParser;->createFromResId(Landroid/content/Context;I)Lcom/miui/internal/core/ManifestParser;

    move-result-object v3

    return-object v3

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createFromResId(Landroid/content/Context;I)Lcom/miui/internal/core/ManifestParser;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 61
    .local v1, "resources":Landroid/content/res/Resources;
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 62
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    invoke-static {v1, v0}, Lcom/miui/internal/core/ManifestParser;->createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/miui/internal/core/ManifestParser;

    move-result-object v2

    return-object v2

    .line 61
    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/miui/internal/core/ManifestParser;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 66
    new-instance v0, Lcom/miui/internal/core/ManifestParser;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/core/ManifestParser;-><init>(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method private getDefaultMaxLevel(Lcom/miui/internal/core/LevelInfo;)I
    .locals 1
    .param p1, "levelInfo"    # Lcom/miui/internal/core/LevelInfo;

    .prologue
    .line 183
    const v0, 0x7fffffff

    return v0
.end method

.method private getDefaultMinLevel(Lcom/miui/internal/core/LevelInfo;)I
    .locals 1
    .param p1, "levelInfo"    # Lcom/miui/internal/core/LevelInfo;

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method private getDefaultTargetLevel(Lcom/miui/internal/core/LevelInfo;)I
    .locals 1
    .param p1, "levelInfo"    # Lcom/miui/internal/core/LevelInfo;

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/miui/internal/core/LevelInfo;->getMinLevel()I

    move-result v0

    return v0
.end method

.method private parseDependenciesElement(Lcom/miui/internal/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .param p1, "manifest"    # Lcom/miui/internal/core/Manifest;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, "type":I
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 139
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2

    .line 140
    :cond_1
    if-eq v2, v4, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 144
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "dependency"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/core/ManifestParser;->parseDependencyElement(Lcom/miui/internal/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 149
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private parseDependencyElement(Lcom/miui/internal/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .param p1, "manifest"    # Lcom/miui/internal/core/Manifest;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    sget-object v3, Lmiui/R$styleable;->MiuiManifestDependency:[I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 154
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "name":Ljava/lang/String;
    new-instance v0, Lcom/miui/internal/core/LevelInfo;

    invoke-direct {v0}, Lcom/miui/internal/core/LevelInfo;-><init>()V

    .line 156
    .local v0, "level":Lcom/miui/internal/core/LevelInfo;
    const/4 v3, 0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/core/ManifestParser;->getDefaultMinLevel(Lcom/miui/internal/core/LevelInfo;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/internal/core/LevelInfo;->setMinLevel(I)V

    .line 157
    const/4 v3, 0x2

    invoke-direct {p0, v0}, Lcom/miui/internal/core/ManifestParser;->getDefaultTargetLevel(Lcom/miui/internal/core/LevelInfo;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/internal/core/LevelInfo;->setTargetLevel(I)V

    .line 158
    const/4 v3, 0x3

    invoke-direct {p0, v0}, Lcom/miui/internal/core/ManifestParser;->getDefaultMaxLevel(Lcom/miui/internal/core/LevelInfo;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/internal/core/LevelInfo;->setMaxLevel(I)V

    .line 159
    invoke-virtual {p1, v1, v0}, Lcom/miui/internal/core/Manifest;->addDependency(Ljava/lang/String;Lcom/miui/internal/core/LevelInfo;)V

    .line 160
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    return-void
.end method

.method private parseManifestElement(Lcom/miui/internal/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 8
    .param p1, "manifest"    # Lcom/miui/internal/core/Manifest;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 101
    sget-object v4, Lmiui/R$styleable;->MiuiManifest:[I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 102
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/miui/internal/core/Manifest;->setName(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/miui/internal/core/Manifest;->setLevel(I)V

    .line 104
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/miui/internal/core/Manifest;->setResourcesRequired(Z)V

    .line 105
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, "type":I
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 110
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-eq v3, v5, :cond_3

    if-ne v3, v7, :cond_1

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 111
    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 115
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "uses-sdk"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/core/ManifestParser;->parseUsesSdkElement(Lcom/miui/internal/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string v4, "dependencies"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/core/ManifestParser;->parseDependenciesElement(Lcom/miui/internal/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 122
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private parseUsesSdkElement(Lcom/miui/internal/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 4
    .param p1, "manifest"    # Lcom/miui/internal/core/Manifest;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 125
    sget-object v2, Lmiui/R$styleable;->MiuiManifestUsesSdk:[I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 126
    .local v1, "ta":Landroid/content/res/TypedArray;
    new-instance v0, Lcom/miui/internal/core/LevelInfo;

    invoke-direct {v0}, Lcom/miui/internal/core/LevelInfo;-><init>()V

    .line 127
    .local v0, "level":Lcom/miui/internal/core/LevelInfo;
    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/core/ManifestParser;->getDefaultMinLevel(Lcom/miui/internal/core/LevelInfo;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/internal/core/LevelInfo;->setMinLevel(I)V

    .line 128
    const/4 v2, 0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/core/ManifestParser;->getDefaultTargetLevel(Lcom/miui/internal/core/LevelInfo;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/internal/core/LevelInfo;->setTargetLevel(I)V

    .line 129
    const/4 v2, 0x2

    invoke-direct {p0, v0}, Lcom/miui/internal/core/ManifestParser;->getDefaultMaxLevel(Lcom/miui/internal/core/LevelInfo;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/internal/core/LevelInfo;->setMaxLevel(I)V

    .line 130
    invoke-virtual {p1, v0}, Lcom/miui/internal/core/Manifest;->setSdkDependency(Lcom/miui/internal/core/LevelInfo;)V

    .line 131
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    return-void
.end method


# virtual methods
.method public parse(Ljava/util/Map;)Lcom/miui/internal/core/Manifest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/miui/internal/core/Manifest;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 71
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 73
    .restart local p1    # "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v1, Lcom/miui/internal/core/Manifest;

    invoke-direct {v1}, Lcom/miui/internal/core/Manifest;-><init>()V

    .line 74
    .local v1, "manifest":Lcom/miui/internal/core/Manifest;
    iget-object v6, p0, Lcom/miui/internal/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    if-eqz v6, :cond_4

    .line 76
    :try_start_0
    iget-object v3, p0, Lcom/miui/internal/core/ManifestParser;->mResources:Landroid/content/res/Resources;

    .line 77
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/miui/internal/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 79
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x0

    .line 80
    .local v5, "type":I
    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 84
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "manifest"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 86
    invoke-direct {p0, v1, v3, v2}, Lcom/miui/internal/core/ManifestParser;->parseManifestElement(Lcom/miui/internal/core/Manifest;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_3
    iget-object v6, p0, Lcom/miui/internal/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 96
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "tagName":Ljava/lang/String;
    .end local v5    # "type":I
    :cond_4
    :goto_0
    invoke-direct {p0, v1}, Lcom/miui/internal/core/ManifestParser;->buildCompleteManifest(Lcom/miui/internal/core/Manifest;)Lcom/miui/internal/core/Manifest;

    move-result-object v6

    return-object v6

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    iget-object v6, p0, Lcom/miui/internal/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 90
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    iget-object v6, p0, Lcom/miui/internal/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/miui/internal/core/ManifestParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    throw v6
.end method
