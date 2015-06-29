.class Lmiui/security/CipherUtils$CipherStream;
.super Ljava/io/InputStream;
.source "CipherUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/CipherUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CipherStream"
.end annotation


# instance fields
.field final mCipher:Ljavax/crypto/Cipher;

.field mInputBuffer:[B

.field final mInputDataStream:Ljava/io/InputStream;

.field mIsFinal:Z

.field mOutputBuffer:[B

.field mOutputBufferOffset:I


# direct methods
.method constructor <init>(Ljavax/crypto/Cipher;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 244
    iput-object p1, p0, Lmiui/security/CipherUtils$CipherStream;->mCipher:Ljavax/crypto/Cipher;

    .line 245
    iput-object p2, p0, Lmiui/security/CipherUtils$CipherStream;->mInputDataStream:Ljava/io/InputStream;

    .line 246
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mInputBuffer:[B

    .line 247
    invoke-direct {p0}, Lmiui/security/CipherUtils$CipherStream;->update()V

    .line 248
    return-void
.end method

.method private update()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 285
    iget-object v2, p0, Lmiui/security/CipherUtils$CipherStream;->mInputDataStream:Ljava/io/InputStream;

    iget-object v3, p0, Lmiui/security/CipherUtils$CipherStream;->mInputBuffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 286
    .local v1, "readed":I
    if-lez v1, :cond_0

    .line 287
    iget-object v2, p0, Lmiui/security/CipherUtils$CipherStream;->mCipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lmiui/security/CipherUtils$CipherStream;->mInputBuffer:[B

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v2

    iput-object v2, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    .line 288
    iput v4, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I

    .line 300
    :goto_0
    return-void

    .line 290
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/security/CipherUtils$CipherStream;->mIsFinal:Z

    .line 292
    :try_start_0
    iget-object v2, p0, Lmiui/security/CipherUtils$CipherStream;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v2

    iput-object v2, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    .line 293
    const/4 v2, 0x0

    iput v2, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IllegalBlockSizeException"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 296
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v0

    .line 297
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "BadPaddingException"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    array-length v0, v0

    iget v1, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I

    if-le v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    array-length v0, v0

    iget v1, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/security/CipherUtils$CipherStream;->mInputDataStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 266
    iget-object v1, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    if-nez v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    iget v1, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I

    iget-object v2, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 271
    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    iget v1, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I

    aget-byte v0, v0, v1

    goto :goto_0

    .line 274
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    .line 276
    iget-boolean v1, p0, Lmiui/security/CipherUtils$CipherStream;->mIsFinal:Z

    if-nez v1, :cond_0

    .line 280
    invoke-direct {p0}, Lmiui/security/CipherUtils$CipherStream;->update()V

    .line 281
    invoke-virtual {p0}, Lmiui/security/CipherUtils$CipherStream;->read()I

    move-result v0

    goto :goto_0
.end method
