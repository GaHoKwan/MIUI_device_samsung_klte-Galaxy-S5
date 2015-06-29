.class public abstract Lmiui/util/async/tasks/HttpTextTask;
.super Lmiui/util/async/tasks/HttpTask;
.source "HttpTextTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/util/async/tasks/HttpTask",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lmiui/util/async/tasks/HttpTextTask;, "Lmiui/util/async/tasks/HttpTextTask<TT;>;"
    const/4 v1, 0x0

    .line 25
    sget-object v0, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    invoke-direct {p0, v1, v0, p1, v1}, Lmiui/util/async/tasks/HttpTextTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Ljava/lang/String;)V
    .locals 2
    .param p1, "session"    # Lmiui/net/http/HttpSession;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    .local p0, "this":Lmiui/util/async/tasks/HttpTextTask;, "Lmiui/util/async/tasks/HttpTextTask<TT;>;"
    sget-object v0, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lmiui/util/async/tasks/HttpTextTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "session"    # Lmiui/net/http/HttpSession;
    .param p2, "method"    # Lmiui/util/async/tasks/HttpTask$Method;
    .param p3, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/net/http/HttpSession;",
            "Lmiui/util/async/tasks/HttpTask$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lmiui/util/async/tasks/HttpTextTask;, "Lmiui/util/async/tasks/HttpTextTask<TT;>;"
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/util/async/tasks/HttpTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method static guessEncoding([B)Ljava/lang/String;
    .locals 13
    .param p0, "content"    # [B

    .prologue
    const/16 v8, 0x1f4

    const/16 v12, 0xa

    .line 77
    const/4 v3, 0x0

    .line 79
    .local v3, "contentType":Ljava/lang/String;
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    array-length v11, p0

    if-le v11, v8, :cond_5

    :goto_0
    const-string v11, "UTF-8"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v9, p0, v10, v8, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "str":Ljava/lang/String;
    const-string v8, "CONTENT-TYPE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 83
    .local v6, "index":I
    if-ltz v6, :cond_2

    .line 84
    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 85
    .local v0, "begin":I
    if-gez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 88
    :cond_0
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 89
    .local v4, "end":I
    if-gez v4, :cond_1

    .line 90
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 92
    :cond_1
    invoke-virtual {v7, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 95
    .end local v0    # "begin":I
    .end local v4    # "end":I
    :cond_2
    if-eqz v3, :cond_7

    .line 96
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 97
    const-string v8, "CHARSET="

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 98
    .restart local v0    # "begin":I
    if-ltz v0, :cond_7

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v1, "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v5, v0, 0x8

    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 101
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 102
    .local v2, "c":C
    const/16 v8, 0x27

    if-eq v2, v8, :cond_3

    const/16 v8, 0x22

    if-eq v2, v8, :cond_3

    const/16 v8, 0x20

    if-ne v2, v8, :cond_4

    .line 103
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "begin":I
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "c":C
    .end local v5    # "i":I
    .end local v6    # "index":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_5
    array-length v8, p0

    goto :goto_0

    .line 106
    .restart local v0    # "begin":I
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "i":I
    .restart local v6    # "index":I
    .restart local v7    # "str":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 110
    .end local v0    # "begin":I
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "i":I
    :goto_2
    return-object v8

    :cond_7
    const-string v8, "UTF-8"

    goto :goto_2
.end method


# virtual methods
.method protected final requestText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lmiui/util/async/tasks/HttpTextTask;, "Lmiui/util/async/tasks/HttpTextTask<TT;>;"
    invoke-virtual {p0}, Lmiui/util/async/tasks/HttpTextTask;->request()Lmiui/net/http/HttpResponse;

    move-result-object v2

    .line 57
    .local v2, "response":Lmiui/net/http/HttpResponse;
    invoke-interface {v2}, Lmiui/net/http/HttpResponse;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "encoding":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 60
    invoke-interface {v2}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/util/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 62
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lmiui/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 63
    .local v0, "buffer":[B
    invoke-static {v0}, Lmiui/util/async/tasks/HttpTextTask;->guessEncoding([B)Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0
.end method
