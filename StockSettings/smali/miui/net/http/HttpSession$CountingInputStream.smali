.class Lmiui/net/http/HttpSession$CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "HttpSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/HttpSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountingInputStream"
.end annotation


# instance fields
.field private mContentLength:J

.field private mHttpEntity:Lorg/apache/http/HttpEntity;

.field private mPercentage:J

.field private mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

.field private mRead:J


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;Lmiui/net/http/HttpSession$ProgressListener;)V
    .locals 8
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "listener"    # Lmiui/net/http/HttpSession$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x3

    .line 677
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 678
    iput-object p1, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mHttpEntity:Lorg/apache/http/HttpEntity;

    .line 679
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mContentLength:J

    .line 680
    iput-object p3, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    .line 681
    iput-wide v6, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    .line 682
    iput-wide v6, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mPercentage:J

    .line 684
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 685
    const-string v2, "bytes\\s+(\\d+)-(\\d+)/(\\d+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 686
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 687
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 688
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    .line 689
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mContentLength:J

    .line 692
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    :cond_0
    return-void
.end method

.method private reportProgress(I)V
    .locals 8
    .param p1, "read"    # I

    .prologue
    .line 726
    iget-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mContentLength:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    if-eqz v2, :cond_1

    .line 727
    iget-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mContentLength:J

    div-long v0, v2, v4

    .line 728
    .local v0, "cur":J
    iget-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mPercentage:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    const/16 v2, 0x400

    if-le p1, v2, :cond_1

    .line 729
    :cond_0
    iput-wide v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mPercentage:J

    .line 730
    iget-object v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mProgressListener:Lmiui/net/http/HttpSession$ProgressListener;

    iget-wide v4, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mContentLength:J

    iget-wide v6, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    invoke-interface {v2, v4, v5, v6, v7}, Lmiui/net/http/HttpSession$ProgressListener;->onProgress(JJ)V

    .line 733
    .end local v0    # "cur":J
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    iget-object v0, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mHttpEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 722
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 723
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 712
    .local v0, "r":I
    if-lez v0, :cond_0

    .line 713
    iget-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    .line 714
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/net/http/HttpSession$CountingInputStream;->reportProgress(I)V

    .line 716
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmiui/net/http/HttpSession$CountingInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 702
    .local v0, "r":I
    if-lez v0, :cond_0

    .line 703
    iget-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/net/http/HttpSession$CountingInputStream;->mRead:J

    .line 704
    invoke-direct {p0, v0}, Lmiui/net/http/HttpSession$CountingInputStream;->reportProgress(I)V

    .line 706
    :cond_0
    return v0
.end method
