.class Lmiui/external/SdkLoader;
.super Ljava/lang/Object;
.source "SdkLoader.java"


# static fields
.field private static final DEX_PATH_LIST_CLASS_NAME:Ljava/lang/String; = "dalvik.system.DexPathList"

.field private static final DEX_PATH_LIST_ELEMENT_CLASS_NAME:Ljava/lang/String; = "dalvik.system.DexPathList$Element"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDexElementsField(Ljava/lang/Object;)Ljava/lang/reflect/Field;
    .locals 7
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 92
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 93
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "dalvik.system.DexPathList$Element"

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 95
    return-object v1

    .line 91
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v5, Ljava/lang/NoSuchFieldException;

    const-string v6, "dexElements field not found."

    invoke-direct {v5, v6}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static getDexPathListVariable(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 52
    instance-of v4, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v4, :cond_1

    .line 53
    const-class v4, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 54
    .local v1, "field":Ljava/lang/reflect/Field;
    const-string v4, "dalvik.system.DexPathList"

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 58
    :catch_0
    move-exception v4

    .line 53
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    new-instance v4, Ljava/lang/NoSuchFieldException;

    const-string v5, "dexPathList field not found."

    invoke-direct {v4, v5}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private static getNativeLibraryDirectoriesField(Ljava/lang/Object;)Ljava/lang/reflect/Field;
    .locals 7
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 103
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 104
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/io/File;

    if-ne v5, v6, :cond_0

    .line 105
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 106
    return-object v1

    .line 102
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v5, Ljava/lang/NoSuchFieldException;

    const-string v6, "nativeLibraryDirectories field not found."

    invoke-direct {v5, v6}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 7
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "optimizedDirectoryPath"    # Ljava/lang/String;
    .param p2, "libraryPath"    # Ljava/lang/String;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 22
    :try_start_0
    invoke-static {p3}, Lmiui/external/SdkLoader;->getDexPathListVariable(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    .local v1, "dexPathList":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 25
    .local v5, "oneShotLoader":Ljava/lang/ClassLoader;
    if-nez p1, :cond_1

    .line 26
    new-instance v5, Ldalvik/system/PathClassLoader;

    .end local v5    # "oneShotLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v5, p0, p2, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 31
    .restart local v5    # "oneShotLoader":Ljava/lang/ClassLoader;
    :goto_0
    invoke-static {v5}, Lmiui/external/SdkLoader;->getDexPathListVariable(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    .line 32
    .local v3, "oneShotDexPathList":Ljava/lang/Object;
    invoke-static {v3}, Lmiui/external/SdkLoader;->getDexElementsField(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 33
    .local v2, "oneShotDexElementsField":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 35
    .local v4, "oneShotElements":[Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v1, v6}, Lmiui/external/SdkLoader;->loadDex(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    if-eqz p2, :cond_0

    .line 37
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v6}, Lmiui/external/SdkLoader;->loadLibrary(Ljava/lang/Object;Ljava/io/File;)V

    .line 48
    .end local v1    # "dexPathList":Ljava/lang/Object;
    .end local v2    # "oneShotDexElementsField":Ljava/lang/reflect/Field;
    .end local v3    # "oneShotDexPathList":Ljava/lang/Object;
    .end local v4    # "oneShotElements":[Ljava/lang/Object;
    .end local v5    # "oneShotLoader":Ljava/lang/ClassLoader;
    :cond_0
    :goto_1
    const/4 v6, 0x1

    return v6

    .line 28
    .restart local v1    # "dexPathList":Ljava/lang/Object;
    .restart local v5    # "oneShotLoader":Ljava/lang/ClassLoader;
    :cond_1
    new-instance v5, Ldalvik/system/DexClassLoader;

    .end local v5    # "oneShotLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v5, p0, p1, p2, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v5    # "oneShotLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 45
    .end local v1    # "dexPathList":Ljava/lang/Object;
    .end local v5    # "oneShotLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 43
    :catch_1
    move-exception v6

    goto :goto_1

    .line 41
    :catch_2
    move-exception v6

    goto :goto_1

    .line 39
    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method private static loadDex(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .param p1, "newElement"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 71
    invoke-static {p0}, Lmiui/external/SdkLoader;->getDexElementsField(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 72
    .local v0, "dexElementsField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    .line 73
    .local v1, "elements":[Ljava/lang/Object;
    const-string v3, "dalvik.system.DexPathList$Element"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 75
    .local v2, "newElements":[Ljava/lang/Object;
    aput-object p1, v2, v5

    .line 76
    const/4 v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method private static loadLibrary(Ljava/lang/Object;Ljava/io/File;)V
    .locals 6
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .param p1, "newFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 82
    invoke-static {p0}, Lmiui/external/SdkLoader;->getNativeLibraryDirectoriesField(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 83
    .local v1, "nativeLibraryDirField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/io/File;

    move-object v0, v3

    check-cast v0, [Ljava/io/File;

    .line 84
    .local v0, "files":[Ljava/io/File;
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Ljava/io/File;

    .line 85
    .local v2, "newFiles":[Ljava/io/File;
    aput-object p1, v2, v5

    .line 86
    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    return-void
.end method
