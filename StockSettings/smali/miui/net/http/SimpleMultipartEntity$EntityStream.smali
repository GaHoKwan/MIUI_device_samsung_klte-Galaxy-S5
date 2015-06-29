.class Lmiui/net/http/SimpleMultipartEntity$EntityStream;
.super Ljava/io/InputStream;
.source "SimpleMultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/SimpleMultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityStream"
.end annotation


# instance fields
.field mInsideIndex:I

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mListIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 192
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 193
    iput-object p1, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mList:Ljava/util/List;

    .line 194
    iput v0, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    .line 195
    iput v0, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    .line 196
    return-void
.end method


# virtual methods
.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 248
    const/4 v3, -0x1

    .line 250
    .local v3, "ret":I
    :goto_0
    iget v4, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    iget-object v5, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 251
    iget-object v4, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mList:Ljava/util/List;

    iget v5, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 252
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, [B

    if-eqz v4, :cond_2

    .line 253
    check-cast v2, [B

    .end local v2    # "o":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [B

    .line 254
    .local v0, "bytes":[B
    iget v4, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    .line 255
    iget v4, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 256
    iget v4, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    aget-byte v3, v0, v4

    .line 274
    .end local v0    # "bytes":[B
    :cond_0
    return v3

    .line 259
    .restart local v0    # "bytes":[B
    :cond_1
    iget v4, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    .line 260
    iput v6, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    goto :goto_0

    .line 262
    .end local v0    # "bytes":[B
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v4, v2, Ljava/io/InputStream;

    if-eqz v4, :cond_3

    move-object v1, v2

    .line 263
    check-cast v1, Ljava/io/InputStream;

    .line 264
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gez v3, :cond_0

    .line 267
    iget v4, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    .line 268
    iput v6, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    goto :goto_0

    .line 270
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected value"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
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
    .line 200
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x0

    .line 205
    const/4 v4, 0x0

    .line 206
    .local v4, "ret":I
    :cond_0
    :goto_0
    iget v6, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    iget-object v7, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_1

    if-nez p3, :cond_4

    .line 207
    :cond_1
    iget-object v6, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mList:Ljava/util/List;

    iget v7, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 208
    .local v2, "o":Ljava/lang/Object;
    instance-of v6, v2, [B

    if-eqz v6, :cond_3

    .line 209
    check-cast v2, [B

    .end local v2    # "o":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [B

    .line 210
    .local v0, "bytes":[B
    array-length v6, v0

    iget v7, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    if-ne v6, v7, :cond_2

    .line 211
    iget v6, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    .line 212
    iput v8, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    goto :goto_0

    .line 214
    :cond_2
    array-length v6, v0

    iget v7, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    sub-int/2addr v6, v7

    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 215
    .local v3, "read":I
    iget v6, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    invoke-static {v0, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget v6, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    add-int/2addr v6, v3

    iput v6, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    .line 217
    add-int/2addr p2, v3

    .line 218
    sub-int/2addr p3, v3

    .line 219
    add-int/2addr v4, v3

    .line 220
    array-length v6, v0

    iget v7, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    if-ne v6, v7, :cond_0

    .line 221
    iget v6, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    .line 222
    iput v8, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    goto :goto_0

    .line 225
    .end local v0    # "bytes":[B
    .end local v3    # "read":I
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v6, v2, Ljava/io/InputStream;

    if-eqz v6, :cond_8

    move-object v1, v2

    .line 226
    check-cast v1, Ljava/io/InputStream;

    .line 227
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 228
    .restart local v3    # "read":I
    if-nez v3, :cond_6

    .line 243
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "read":I
    :cond_4
    if-nez v4, :cond_5

    iget v6, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    iget-object v7, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_5

    move v4, v5

    .end local v4    # "ret":I
    :cond_5
    return v4

    .line 230
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "o":Ljava/lang/Object;
    .restart local v3    # "read":I
    .restart local v4    # "ret":I
    :cond_6
    if-ne v3, v5, :cond_7

    .line 231
    iget v6, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mListIndex:I

    .line 232
    iput v8, p0, Lmiui/net/http/SimpleMultipartEntity$EntityStream;->mInsideIndex:I

    goto :goto_0

    .line 234
    :cond_7
    add-int/2addr p2, v3

    .line 235
    sub-int/2addr p3, v3

    .line 236
    add-int/2addr v4, v3

    goto :goto_0

    .line 239
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v3    # "read":I
    :cond_8
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unexpected value"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
