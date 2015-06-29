.class public Lmiui/telephony/dtmf/DTMFAudioInputStream;
.super Ljava/io/InputStream;
.source "DTMFAudioInputStream.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DTMFAudioInputStream"


# instance fields
.field private mByteBuff:[B

.field private mReadedCnt:I


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    const-string v1, "DTMFAudioInputStream"

    const-string v2, "parameter error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_0
    return-void

    .line 25
    :cond_0
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 27
    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    goto :goto_0
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget v0, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 52
    const/4 v0, -0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    iget v1, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public read([BI)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v2, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    if-eqz v2, :cond_0

    if-gtz p2, :cond_2

    .line 34
    :cond_0
    const-string v2, "DTMFAudioInputStream"

    const-string v3, "paramenter error:fail to get subdatalist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 p2, -0x1

    .line 46
    .end local p2    # "len":I
    :cond_1
    return p2

    .line 39
    .restart local p2    # "len":I
    :cond_2
    move v0, p2

    .line 40
    .local v0, "_len":I
    iget-object v2, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    array-length v2, v2

    iget v3, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    sub-int/2addr v2, v3

    if-ge v2, p2, :cond_3

    .line 41
    iget-object v2, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    array-length v2, v2

    iget v3, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    sub-int v0, v2, v3

    .line 43
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFAudioInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
