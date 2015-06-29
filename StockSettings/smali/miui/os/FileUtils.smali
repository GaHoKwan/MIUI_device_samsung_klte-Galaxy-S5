.class public Lmiui/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addNoMedia(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 414
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 422
    :goto_0
    return v1

    .line 418
    :catch_0
    move-exception v1

    .line 422
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checksumCrc32(Ljava/io/File;)J
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 305
    .local v1, "checkSummer":Ljava/util/zip/CRC32;
    const/4 v2, 0x0

    .line 308
    .local v2, "cis":Ljava/util/zip/CheckedInputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/CheckedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .local v3, "cis":Ljava/util/zip/CheckedInputStream;
    const/16 v4, 0x80

    :try_start_1
    new-array v0, v4, [B

    .line 310
    .local v0, "buf":[B
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v4

    if-gez v4, :cond_0

    .line 313
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    .line 315
    if-eqz v3, :cond_1

    .line 317
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 320
    :cond_1
    :goto_0
    return-wide v4

    .line 315
    .end local v0    # "buf":[B
    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v2, :cond_2

    .line 317
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 320
    :cond_2
    :goto_2
    throw v4

    .line 318
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    :catch_0
    move-exception v6

    goto :goto_0

    .end local v0    # "buf":[B
    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 315
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    goto :goto_1
.end method

.method public static chmod(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 83
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 91
    :cond_1
    :goto_0
    return v0

    .line 87
    :cond_2
    if-ltz p1, :cond_1

    .line 91
    invoke-static {p0, p1, v0}, Lcom/miui/internal/os/Native;->chmod(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method public static chown(Ljava/lang/String;II)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "gid"    # I

    .prologue
    const/4 v0, 0x1

    .line 103
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 117
    :cond_1
    :goto_0
    return v0

    .line 107
    :cond_2
    if-gez p1, :cond_3

    if-ltz p2, :cond_1

    .line 111
    :cond_3
    if-gez p1, :cond_5

    .line 112
    const/4 p1, -0x1

    .line 117
    :cond_4
    :goto_1
    invoke-static {p0, p1, p2, v0}, Lcom/miui/internal/os/Native;->chown(Ljava/lang/String;III)Z

    move-result v0

    goto :goto_0

    .line 113
    :cond_5
    if-gez p2, :cond_4

    .line 114
    const/4 p2, -0x1

    goto :goto_1
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 151
    const/4 v2, 0x0

    .line 153
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1, p1}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 157
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 162
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return v2

    .line 157
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 159
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 172
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 195
    :goto_0
    return v4

    .line 177
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 v5, 0x1000

    :try_start_1
    new-array v0, v5, [B

    .line 181
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_1

    .line 182
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 185
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 191
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v5

    .line 194
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 185
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 187
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 191
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 193
    const/4 v4, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_1
    move-exception v6

    goto :goto_2

    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    :catch_2
    move-exception v5

    goto :goto_3
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 365
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 366
    :cond_0
    const-string v1, ""

    .line 372
    :goto_0
    return-object v1

    .line 368
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 369
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 370
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 372
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 399
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 400
    :cond_0
    const-string p0, ""

    .line 406
    .end local p0    # "path":Ljava/lang/String;
    .local v0, "index":I
    :cond_1
    :goto_0
    return-object p0

    .line 402
    .end local v0    # "index":I
    .restart local p0    # "path":Ljava/lang/String;
    :cond_2
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 403
    .restart local v0    # "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 404
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 10
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 440
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 441
    const-wide/16 v6, 0x0

    .line 454
    :cond_0
    :goto_0
    return-wide v6

    .line 444
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 445
    const-wide/16 v6, 0x0

    .line 446
    .local v6, "size":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 447
    .local v2, "fileList":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 448
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 449
    .local v1, "children":Ljava/io/File;
    invoke-static {v1}, Lmiui/os/FileUtils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 448
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 454
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "children":Ljava/io/File;
    .end local v2    # "fileList":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "size":J
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    goto :goto_0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 381
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 382
    :cond_0
    const-string v2, ""

    .line 389
    :goto_0
    return-object v2

    .line 384
    :cond_1
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 385
    .local v0, "index1":I
    if-gez v0, :cond_2

    .line 386
    const/4 v0, -0x1

    .line 388
    :cond_2
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 389
    .local v1, "index2":I
    if-gez v1, :cond_3

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 209
    sget-object v0, Lmiui/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/io/File;III)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 347
    :cond_0
    :goto_0
    return v1

    .line 341
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 342
    .local v0, "parent":Ljava/io/File;
    invoke-static {v0, p1, p2, p3}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lmiui/os/FileUtils;->chmod(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lmiui/os/FileUtils;->chown(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static normalizeDirectoryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 431
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v0, v1, :cond_0

    .end local p0    # "path":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "path":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static readFileAsBytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    const/4 v2, 0x0

    .line 468
    .local v2, "f":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 469
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    .local v3, "f":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 470
    .local v4, "stream":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x2000

    new-array v0, v5, [B

    .line 472
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    .line 473
    .local v1, "byteCount":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 474
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 480
    if-eqz v3, :cond_0

    .line 481
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 485
    :cond_0
    :goto_1
    return-object v5

    .line 476
    :cond_1
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 479
    .end local v0    # "buffer":[B
    .end local v1    # "byteCount":I
    .end local v4    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v5

    move-object v2, v3

    .line 480
    .end local v3    # "f":Ljava/io/RandomAccessFile;
    .restart local v2    # "f":Ljava/io/RandomAccessFile;
    :goto_2
    if-eqz v2, :cond_2

    .line 481
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 485
    :cond_2
    :goto_3
    throw v5

    .line 483
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteCount":I
    .restart local v3    # "f":Ljava/io/RandomAccessFile;
    .restart local v4    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v6

    goto :goto_1

    .end local v0    # "buffer":[B
    .end local v1    # "byteCount":I
    .end local v3    # "f":Ljava/io/RandomAccessFile;
    .end local v4    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "f":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    goto :goto_3

    .line 479
    :catchall_1
    move-exception v5

    goto :goto_2
.end method

.method public static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lmiui/os/FileUtils;->readFileAsBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "file"    # Ljava/io/File;
    .param p1, "max"    # I
    .param p2, "ellipsis"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 224
    .local v2, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 225
    .local v8, "size":J
    if-gtz p1, :cond_0

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_6

    if-nez p1, :cond_6

    .line 226
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_2

    if-eqz p1, :cond_1

    int-to-long v10, p1

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    .line 227
    :cond_1
    long-to-int p1, v8

    .line 228
    :cond_2
    add-int/lit8 v10, p1, 0x1

    new-array v1, v10, [B

    .line 229
    .local v1, "data":[B
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 230
    .local v5, "length":I
    if-gtz v5, :cond_3

    .line 231
    const-string v10, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .end local v5    # "length":I
    :goto_0
    return-object v10

    .line 232
    .restart local v5    # "length":I
    :cond_3
    if-gt v5, p1, :cond_4

    .line 233
    :try_start_1
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 234
    :cond_4
    if-nez p2, :cond_5

    .line 235
    :try_start_2
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 236
    :cond_5
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v1, v12, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 276
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 237
    .end local v1    # "data":[B
    .end local v5    # "length":I
    :cond_6
    if-gez p1, :cond_f

    .line 239
    const/4 v6, 0x0

    .line 240
    .local v6, "rolled":Z
    const/4 v3, 0x0

    .local v3, "last":[B
    const/4 v1, 0x0

    .line 242
    .restart local v1    # "data":[B
    :cond_7
    if-eqz v3, :cond_8

    .line 243
    const/4 v6, 0x1

    .line 244
    :cond_8
    move-object v7, v3

    .line 245
    .local v7, "tmp":[B
    move-object v3, v1

    .line 246
    move-object v1, v7

    .line 247
    if-nez v1, :cond_9

    .line 248
    neg-int v10, p1

    :try_start_4
    new-array v1, v10, [B

    .line 249
    :cond_9
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 250
    .local v4, "len":I
    array-length v10, v1

    if-eq v4, v10, :cond_7

    .line 252
    if-nez v3, :cond_a

    if-gtz v4, :cond_a

    .line 253
    const-string v10, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 254
    :cond_a
    if-nez v3, :cond_b

    .line 255
    :try_start_5
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 276
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 256
    :cond_b
    if-lez v4, :cond_c

    .line 257
    const/4 v6, 0x1

    .line 258
    const/4 v10, 0x0

    :try_start_6
    array-length v11, v3

    sub-int/2addr v11, v4

    invoke-static {v3, v4, v3, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    const/4 v10, 0x0

    array-length v11, v3

    sub-int/2addr v11, v4

    invoke-static {v1, v10, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    :cond_c
    if-eqz p2, :cond_d

    if-nez v6, :cond_e

    .line 262
    :cond_d
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 276
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 263
    :cond_e
    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v10

    .line 276
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 265
    .end local v1    # "data":[B
    .end local v3    # "last":[B
    .end local v4    # "len":I
    .end local v6    # "rolled":Z
    .end local v7    # "tmp":[B
    :cond_f
    :try_start_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 267
    .local v0, "contents":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 269
    .restart local v1    # "data":[B
    :cond_10
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 270
    .restart local v4    # "len":I
    if-lez v4, :cond_11

    .line 271
    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 272
    :cond_11
    array-length v10, v1

    if-eq v4, v10, :cond_10

    .line 273
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v10

    .line 276
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .end local v0    # "contents":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    .end local v4    # "len":I
    .end local v8    # "size":J
    :catchall_0
    move-exception v10

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v10
.end method

.method public static rm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 356
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/internal/os/Native;->rm(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "out":Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 294
    return-void

    .line 292
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .locals 1
    .param p0, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    .line 135
    if-eqz p0, :cond_0

    .line 136
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    .line 139
    :catch_0
    move-exception v0

    .line 142
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static umask(I)I
    .locals 1
    .param p0, "mask"    # I

    .prologue
    .line 126
    invoke-static {p0}, Lcom/miui/internal/os/Native;->umask(I)I

    move-result v0

    return v0
.end method
