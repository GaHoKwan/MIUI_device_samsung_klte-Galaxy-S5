.class Lmiui/net/http/DefaultHttpResponse;
.super Ljava/lang/Object;
.source "DefaultHttpResponse.java"

# interfaces
.implements Lmiui/net/http/HttpResponse;


# instance fields
.field private mContent:Ljava/io/InputStream;

.field private mContentEncoding:Ljava/lang/String;

.field private mContentLength:J

.field private mContentType:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p3, "content"    # Ljava/io/InputStream;
    .param p4, "contentLength"    # J
    .param p6, "contentType"    # Ljava/lang/String;
    .param p7, "contentEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lmiui/net/http/DefaultHttpResponse;->mStatusCode:I

    .line 41
    iput-object p3, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    .line 42
    iput-wide p4, p0, Lmiui/net/http/DefaultHttpResponse;->mContentLength:J

    .line 43
    iput-object p6, p0, Lmiui/net/http/DefaultHttpResponse;->mContentType:Ljava/lang/String;

    .line 44
    iput-object p7, p0, Lmiui/net/http/DefaultHttpResponse;->mContentEncoding:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lmiui/net/http/DefaultHttpResponse;->mHeaders:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lmiui/net/http/DefaultHttpResponse;->mStatusCode:I

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    .line 99
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setContent(Ljava/io/InputStream;J)V
    .locals 0
    .param p1, "content"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # J

    .prologue
    .line 55
    iput-object p1, p0, Lmiui/net/http/DefaultHttpResponse;->mContent:Ljava/io/InputStream;

    .line 56
    iput-wide p2, p0, Lmiui/net/http/DefaultHttpResponse;->mContentLength:J

    .line 57
    return-void
.end method
