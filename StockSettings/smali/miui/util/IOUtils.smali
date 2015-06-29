.class public Lmiui/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final BYTE_ARRAY_OUTPUT_STREAM_POOL:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool",
            "<",
            "Ljava/io/ByteArrayOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHAR_ARRAY_WRITER_POOL:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool",
            "<",
            "Ljava/io/CharArrayWriter;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final STRING_WRITER_POOL:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool",
            "<",
            "Ljava/io/StringWriter;",
            ">;"
        }
    .end annotation
.end field

.field private static final THREAD_LOCAL_BYTE_BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private static final THREAD_LOCAL_CHAR_BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 34
    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v2, Lmiui/util/IOUtils;->THREAD_LOCAL_BYTE_BUFFER:Ljava/lang/ThreadLocal;

    .line 37
    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v2, Lmiui/util/IOUtils;->THREAD_LOCAL_CHAR_BUFFER:Ljava/lang/ThreadLocal;

    .line 40
    new-instance v2, Lmiui/util/IOUtils$1;

    invoke-direct {v2}, Lmiui/util/IOUtils$1;-><init>()V

    invoke-static {v2, v3}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v2

    sput-object v2, Lmiui/util/IOUtils;->BYTE_ARRAY_OUTPUT_STREAM_POOL:Lmiui/util/Pools$Pool;

    .line 53
    new-instance v2, Lmiui/util/IOUtils$2;

    invoke-direct {v2}, Lmiui/util/IOUtils$2;-><init>()V

    invoke-static {v2, v3}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v2

    sput-object v2, Lmiui/util/IOUtils;->CHAR_ARRAY_WRITER_POOL:Lmiui/util/Pools$Pool;

    .line 66
    new-instance v2, Lmiui/util/IOUtils$3;

    invoke-direct {v2}, Lmiui/util/IOUtils$3;-><init>()V

    invoke-static {v2, v3}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v2

    sput-object v2, Lmiui/util/IOUtils;->STRING_WRITER_POOL:Lmiui/util/Pools$Pool;

    .line 81
    sget-object v2, Lmiui/util/IOUtils;->STRING_WRITER_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/StringWriter;

    .line 82
    .local v0, "buf":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 83
    .local v1, "out":Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 84
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 85
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/util/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 86
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 87
    sget-object v2, Lmiui/util/IOUtils;->STRING_WRITER_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 88
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
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 131
    if-eqz p0, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 145
    if-eqz p0, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    :cond_0
    :goto_1
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0

    .line 153
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;

    .prologue
    .line 103
    if-eqz p0, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;

    .prologue
    .line 117
    if-eqz p0, :cond_0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    const-wide/16 v2, 0x0

    .line 546
    .local v2, "count":J
    invoke-static {}, Lmiui/util/IOUtils;->getByteArrayBuffer()[B

    move-result-object v0

    .line 548
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "n":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 549
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 550
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 552
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 553
    return-wide v2
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 6
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    const-wide/16 v2, 0x0

    .line 618
    .local v2, "count":J
    invoke-static {}, Lmiui/util/IOUtils;->getCharArrayBuffer()[C

    move-result-object v0

    .line 620
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "n":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 621
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/Writer;->write([CII)V

    .line 622
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 625
    return-wide v2
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 565
    .local v0, "in":Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lmiui/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)J

    .line 566
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 579
    .local v0, "in":Ljava/io/InputStreamReader;
    :goto_0
    invoke-static {v0, p1}, Lmiui/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)J

    .line 580
    return-void

    .line 577
    .end local v0    # "in":Ljava/io/InputStreamReader;
    :cond_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 591
    .local v0, "out":Ljava/io/OutputStreamWriter;
    invoke-static {p0, v0}, Lmiui/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)J

    .line 592
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 605
    .local v0, "out":Ljava/io/OutputStreamWriter;
    :goto_0
    invoke-static {p0, v0}, Lmiui/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)J

    .line 606
    return-void

    .line 603
    .end local v0    # "out":Ljava/io/OutputStreamWriter;
    :cond_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getByteArrayBuffer()[B
    .locals 4

    .prologue
    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "buffer":[B
    sget-object v2, Lmiui/util/IOUtils;->THREAD_LOCAL_BYTE_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 634
    .local v1, "sr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[B>;"
    if-eqz v1, :cond_0

    .line 635
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buffer":[B
    check-cast v0, [B

    .line 638
    .restart local v0    # "buffer":[B
    :cond_0
    if-nez v0, :cond_1

    .line 639
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 640
    sget-object v2, Lmiui/util/IOUtils;->THREAD_LOCAL_BYTE_BUFFER:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 642
    :cond_1
    return-object v0
.end method

.method private static getCharArrayBuffer()[C
    .locals 4

    .prologue
    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "buffer":[C
    sget-object v2, Lmiui/util/IOUtils;->THREAD_LOCAL_CHAR_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 651
    .local v1, "sr":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[C>;"
    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buffer":[C
    check-cast v0, [C

    .line 655
    .restart local v0    # "buffer":[C
    :cond_0
    if-nez v0, :cond_1

    .line 656
    const/16 v2, 0x1000

    new-array v0, v2, [C

    .line 657
    sget-object v2, Lmiui/util/IOUtils;->THREAD_LOCAL_CHAR_BUFFER:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 659
    :cond_1
    return-object v0
.end method

.method public static readLines(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 297
    .local v0, "reader":Ljava/io/InputStreamReader;
    invoke-static {v0}, Lmiui/util/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 310
    .local v0, "reader":Ljava/io/InputStreamReader;
    :goto_0
    invoke-static {v0}, Lmiui/util/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 308
    .end local v0    # "reader":Ljava/io/InputStreamReader;
    :cond_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static readLines(Ljava/io/Reader;)Ljava/util/List;
    .locals 4
    .param p0, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    instance-of v3, p0, Ljava/io/BufferedReader;

    if-eqz v3, :cond_0

    check-cast p0, Ljava/io/BufferedReader;

    .end local p0    # "input":Ljava/io/Reader;
    move-object v2, p0

    .line 322
    .local v2, "reader":Ljava/io/BufferedReader;
    .restart local p0    # "input":Ljava/io/Reader;
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .end local p0    # "input":Ljava/io/Reader;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_1

    .line 324
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 320
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "input":Ljava/io/Reader;
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    .line 326
    .end local p0    # "input":Ljava/io/Reader;
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    return-object v1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    sget-object v2, Lmiui/util/IOUtils;->BYTE_ARRAY_OUTPUT_STREAM_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 167
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 168
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 169
    .local v1, "ret":[B
    sget-object v2, Lmiui/util/IOUtils;->BYTE_ARRAY_OUTPUT_STREAM_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 170
    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;)[B
    .locals 3
    .param p0, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    sget-object v2, Lmiui/util/IOUtils;->BYTE_ARRAY_OUTPUT_STREAM_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 181
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lmiui/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 182
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 183
    .local v1, "ret":[B
    sget-object v2, Lmiui/util/IOUtils;->BYTE_ARRAY_OUTPUT_STREAM_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 184
    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
    .locals 3
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    sget-object v2, Lmiui/util/IOUtils;->BYTE_ARRAY_OUTPUT_STREAM_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 197
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0, p1}, Lmiui/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 199
    .local v1, "ret":[B
    sget-object v2, Lmiui/util/IOUtils;->BYTE_ARRAY_OUTPUT_STREAM_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 200
    return-object v1
.end method

.method public static toCharArray(Ljava/io/InputStream;)[C
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    sget-object v2, Lmiui/util/IOUtils;->CHAR_ARRAY_WRITER_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/CharArrayWriter;

    .line 211
    .local v0, "caw":Ljava/io/CharArrayWriter;
    invoke-static {p0, v0}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    .line 213
    .local v1, "ret":[C
    sget-object v2, Lmiui/util/IOUtils;->CHAR_ARRAY_WRITER_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 214
    return-object v1
.end method

.method public static toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    sget-object v2, Lmiui/util/IOUtils;->CHAR_ARRAY_WRITER_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/CharArrayWriter;

    .line 226
    .local v0, "caw":Ljava/io/CharArrayWriter;
    invoke-static {p0, v0, p1}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    .line 228
    .local v1, "ret":[C
    sget-object v2, Lmiui/util/IOUtils;->CHAR_ARRAY_WRITER_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 229
    return-object v1
.end method

.method public static toCharArray(Ljava/io/Reader;)[C
    .locals 3
    .param p0, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    sget-object v2, Lmiui/util/IOUtils;->CHAR_ARRAY_WRITER_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/CharArrayWriter;

    .line 240
    .local v0, "caw":Ljava/io/CharArrayWriter;
    invoke-static {p0, v0}, Lmiui/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)J

    .line 241
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    .line 242
    .local v1, "ret":[C
    sget-object v2, Lmiui/util/IOUtils;->CHAR_ARRAY_WRITER_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 243
    return-object v1
.end method

.method public static toInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 335
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v1, Ljava/io/ByteArrayInputStream;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    sget-object v2, Lmiui/util/IOUtils;->STRING_WRITER_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/StringWriter;

    .line 254
    .local v1, "sw":Ljava/io/StringWriter;
    invoke-static {p0, v1}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 255
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "ret":Ljava/lang/String;
    sget-object v2, Lmiui/util/IOUtils;->STRING_WRITER_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2, v1}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 257
    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    sget-object v2, Lmiui/util/IOUtils;->STRING_WRITER_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/StringWriter;

    .line 269
    .local v1, "sw":Ljava/io/StringWriter;
    invoke-static {p0, v1, p1}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "ret":Ljava/lang/String;
    sget-object v2, Lmiui/util/IOUtils;->STRING_WRITER_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2, v1}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 272
    return-object v0
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    sget-object v2, Lmiui/util/IOUtils;->STRING_WRITER_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/StringWriter;

    .line 283
    .local v1, "sw":Ljava/io/StringWriter;
    invoke-static {p0, v1}, Lmiui/util/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)J

    .line 284
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "ret":Ljava/lang/String;
    sget-object v2, Lmiui/util/IOUtils;->STRING_WRITER_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v2, v1}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 286
    return-object v0
.end method

.method public static write(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    if-eqz p1, :cond_0

    .line 445
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 447
    :cond_0
    return-void
.end method

.method public static write(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    if-eqz p1, :cond_1

    .line 458
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 460
    :cond_1
    return-void

    .line 458
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static write(Ljava/io/OutputStream;[B)V
    .locals 0
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 360
    :cond_0
    return-void
.end method

.method public static write(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    if-eqz p1, :cond_0

    .line 407
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 409
    :cond_0
    return-void
.end method

.method public static write(Ljava/io/OutputStream;[CLjava/lang/String;)V
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # [C
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    if-eqz p1, :cond_1

    .line 420
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 423
    :cond_1
    return-void

    .line 420
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static write(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0
    .param p0, "output"    # Ljava/io/Writer;
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 435
    :cond_0
    return-void
.end method

.method public static write(Ljava/io/Writer;[B)V
    .locals 1
    .param p0, "output"    # Ljava/io/Writer;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    if-eqz p1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 372
    :cond_0
    return-void
.end method

.method public static write(Ljava/io/Writer;[BLjava/lang/String;)V
    .locals 1
    .param p0, "output"    # Ljava/io/Writer;
    .param p1, "data"    # [B
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    if-eqz p1, :cond_1

    .line 383
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 385
    :cond_1
    return-void

    .line 383
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static write(Ljava/io/Writer;[C)V
    .locals 0
    .param p0, "output"    # Ljava/io/Writer;
    .param p1, "data"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write([C)V

    .line 397
    :cond_0
    return-void
.end method

.method public static writeLines(Ljava/io/OutputStream;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p2, "lineEnding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    .local p1, "lines":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 484
    :cond_0
    return-void

    .line 474
    :cond_1
    if-nez p2, :cond_2

    .line 475
    sget-object p2, Lmiui/util/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 478
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 479
    .local v1, "line":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 480
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 482
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static writeLines(Ljava/io/OutputStream;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p2, "lineEnding"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    .local p1, "lines":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 510
    :cond_0
    return-void

    .line 500
    :cond_1
    if-nez p2, :cond_2

    .line 501
    sget-object p2, Lmiui/util/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 504
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 505
    .local v1, "line":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 506
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 508
    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static writeLines(Ljava/io/Writer;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .param p0, "output"    # Ljava/io/Writer;
    .param p2, "lineEnding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "lines":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 534
    :cond_0
    return-void

    .line 524
    :cond_1
    if-nez p2, :cond_2

    .line 525
    sget-object p2, Lmiui/util/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 528
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 529
    .local v1, "line":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 530
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 532
    :cond_3
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
