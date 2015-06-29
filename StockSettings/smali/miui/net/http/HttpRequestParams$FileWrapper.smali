.class Lmiui/net/http/HttpRequestParams$FileWrapper;
.super Ljava/lang/Object;
.source "HttpRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/HttpRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileWrapper"
.end annotation


# instance fields
.field public contentLength:J

.field public contentType:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # J
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "contentType"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->inputStream:Ljava/io/InputStream;

    .line 302
    iput-wide p2, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->contentLength:J

    .line 303
    if-nez p4, :cond_0

    const-string p4, "nofilename"

    .end local p4    # "fileName":Ljava/lang/String;
    :cond_0
    iput-object p4, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->fileName:Ljava/lang/String;

    .line 304
    iput-object p5, p0, Lmiui/net/http/HttpRequestParams$FileWrapper;->contentType:Ljava/lang/String;

    .line 305
    return-void
.end method
