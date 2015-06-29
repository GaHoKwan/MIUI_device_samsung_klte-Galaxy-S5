.class public Lmiui/security/CipherUtils;
.super Ljava/lang/Object;
.source "CipherUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/CipherUtils$CipherStream;
    }
.end annotation


# static fields
.field public static final ALOGIRHTM_RSA:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field public static final KEY_ALOGIRHTM_RSA:Ljava/lang/String; = "RSA"


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decrypt(Ljava/io/InputStream;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 221
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 222
    new-instance v2, Lmiui/security/CipherUtils$CipherStream;

    invoke-direct {v2, v0, p0}, Lmiui/security/CipherUtils$CipherStream;-><init>(Ljavax/crypto/Cipher;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 223
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchAlgorithmException catched for algorithm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 225
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 226
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchAlgorithmException catched for algorithm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 227
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 228
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InvalidKeyException catched for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 229
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 230
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InvalidAlgorithmParameterException catched for algorithm parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static decrypt([BLjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)[B
    .locals 9
    .param p0, "content"    # [B
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 180
    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_1

    .line 181
    :cond_0
    const/4 v7, 0x0

    .line 199
    :goto_0
    return-object v7

    .line 185
    :cond_1
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v7, p1, p2, p3}, Lmiui/security/CipherUtils;->decrypt(Ljava/io/InputStream;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 186
    .local v2, "is":Ljava/io/InputStream;
    array-length v7, p0

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 187
    .local v6, "result":[B
    const/4 v3, 0x0

    .line 188
    .local v3, "length":I
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 190
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "read":I
    if-eqz v5, :cond_3

    .line 191
    add-int v7, v5, v3

    array-length v8, v6

    if-le v7, v8, :cond_2

    .line 192
    array-length v7, v6

    add-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    .line 193
    .local v4, "newResult":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v4, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    move-object v6, v4

    .line 196
    .end local v4    # "newResult":[B
    :cond_2
    const/4 v7, 0x0

    invoke-static {v0, v7, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    add-int/2addr v3, v5

    goto :goto_1

    .line 199
    :cond_3
    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 200
    .end local v0    # "buffer":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "length":I
    .end local v5    # "read":I
    .end local v6    # "result":[B
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IOException catched when using ByteArrayInputStream"

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static encrypt(Ljava/io/InputStream;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 157
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 158
    new-instance v2, Lmiui/security/CipherUtils$CipherStream;

    invoke-direct {v2, v0, p0}, Lmiui/security/CipherUtils$CipherStream;-><init>(Ljavax/crypto/Cipher;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v2

    .line 159
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchAlgorithmException catched for algorithm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 161
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchAlgorithmException catched for algorithm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 163
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 164
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InvalidKeyException catched for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 165
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 166
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InvalidAlgorithmParameterException catched for algorithm parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static encrypt([BLjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)[B
    .locals 9
    .param p0, "content"    # [B
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 119
    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_1

    .line 120
    :cond_0
    const/4 v7, 0x0

    .line 138
    :goto_0
    return-object v7

    .line 124
    :cond_1
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v7, p1, p2, p3}, Lmiui/security/CipherUtils;->encrypt(Ljava/io/InputStream;Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 125
    .local v2, "is":Ljava/io/InputStream;
    array-length v7, p0

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 126
    .local v6, "result":[B
    const/4 v3, 0x0

    .line 127
    .local v3, "length":I
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 129
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "read":I
    if-eqz v5, :cond_3

    .line 130
    add-int v7, v5, v3

    array-length v8, v6

    if-le v7, v8, :cond_2

    .line 131
    array-length v7, v6

    add-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    .line 132
    .local v4, "newResult":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v4, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    move-object v6, v4

    .line 135
    .end local v4    # "newResult":[B
    :cond_2
    const/4 v7, 0x0

    invoke-static {v0, v7, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    add-int/2addr v3, v5

    goto :goto_1

    .line 138
    :cond_3
    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 139
    .end local v0    # "buffer":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "length":I
    .end local v5    # "read":I
    .end local v6    # "result":[B
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IOException catched when using ByteArrayInputStream"

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static getPrivateKey(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 5
    .param p0, "keySpec"    # Ljava/security/spec/KeySpec;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 88
    .local v1, "kf":Ljava/security/KeyFactory;
    invoke-virtual {v1, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 89
    .end local v1    # "kf":Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchAlgorithmException catched for algorithm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 91
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InvalidKeySpecException catched for keySpec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getPublicKey(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "keySpec"    # Ljava/security/spec/KeySpec;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 58
    .local v1, "kf":Ljava/security/KeyFactory;
    invoke-virtual {v1, p0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 59
    .end local v1    # "kf":Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchAlgorithmException catched for algorithm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 61
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InvalidKeySpecException catched for keySpec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getRsaPrivateKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/security/PrivateKey;
    .locals 4
    .param p0, "modulus"    # Ljava/lang/String;
    .param p1, "exponent"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .prologue
    .line 104
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p0, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 105
    .local v1, "mod":Ljava/math/BigInteger;
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 106
    .local v0, "exp":Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v3, "RSA"

    invoke-static {v2, v3}, Lmiui/security/CipherUtils;->getPrivateKey(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2
.end method

.method public static getRsaPublicKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/security/PublicKey;
    .locals 4
    .param p0, "modulus"    # Ljava/lang/String;
    .param p1, "exponent"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .prologue
    .line 74
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p0, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 75
    .local v1, "mod":Ljava/math/BigInteger;
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 76
    .local v0, "exp":Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v3, "RSA"

    invoke-static {v2, v3}, Lmiui/security/CipherUtils;->getPublicKey(Ljava/security/spec/KeySpec;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2
.end method
