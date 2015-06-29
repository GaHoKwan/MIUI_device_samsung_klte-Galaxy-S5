.class public Lmiui/text/ExtraTextUtils;
.super Ljava/lang/Object;
.source "ExtraTextUtils.java"


# static fields
.field public static final GB:J = 0x3b9aca00L

.field private static final HEX_DIGITS:[C

.field public static final KB:J = 0x3e8L

.field public static final MB:J = 0xf4240L

.field private static final UNIT:J = 0x3e8L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/text/ExtraTextUtils;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J
    .param p3, "shorter"    # Z

    .prologue
    const/16 v9, 0x30

    const/high16 v6, 0x447a0000    # 1000.0f

    const/high16 v5, 0x44610000    # 900.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 145
    if-nez p0, :cond_0

    .line 146
    const-string v4, ""

    .line 199
    :goto_0
    return-object v4

    .line 149
    :cond_0
    long-to-float v1, p1

    .line 150
    .local v1, "result":F
    sget v2, Lcom/miui/internal/R$string;->size_byte:I

    .line 151
    .local v2, "suffix":I
    cmpl-float v4, v1, v5

    if-lez v4, :cond_1

    .line 152
    sget v2, Lcom/miui/internal/R$string;->size_kilo_byte:I

    .line 153
    div-float/2addr v1, v6

    .line 155
    :cond_1
    cmpl-float v4, v1, v5

    if-lez v4, :cond_2

    .line 156
    sget v2, Lcom/miui/internal/R$string;->size_mega_byte:I

    .line 157
    div-float/2addr v1, v6

    .line 159
    :cond_2
    cmpl-float v4, v1, v5

    if-lez v4, :cond_3

    .line 160
    sget v2, Lcom/miui/internal/R$string;->size_giga_byte:I

    .line 161
    div-float/2addr v1, v6

    .line 163
    :cond_3
    cmpl-float v4, v1, v5

    if-lez v4, :cond_4

    .line 164
    sget v2, Lcom/miui/internal/R$string;->size_tera_byte:I

    .line 165
    div-float/2addr v1, v6

    .line 167
    :cond_4
    cmpl-float v4, v1, v5

    if-lez v4, :cond_5

    .line 168
    sget v2, Lcom/miui/internal/R$string;->size_peta_byte:I

    .line 169
    div-float/2addr v1, v6

    .line 173
    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_7

    .line 174
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 192
    .local v0, "length":I
    const/4 v4, 0x3

    if-le v0, v4, :cond_c

    add-int/lit8 v4, v0, -0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_c

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_c

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_c

    .line 194
    add-int/lit8 v4, v0, -0x3

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 199
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/internal/R$string;->size_suffix:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 175
    .end local v0    # "length":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_7
    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_9

    .line 176
    if-eqz p3, :cond_8

    .line 177
    const-string v4, "%.1f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_1

    .line 179
    .end local v3    # "value":Ljava/lang/String;
    :cond_8
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_1

    .line 181
    .end local v3    # "value":Ljava/lang/String;
    :cond_9
    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_b

    .line 182
    if-eqz p3, :cond_a

    .line 183
    const-string v4, "%.0f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_1

    .line 185
    .end local v3    # "value":Ljava/lang/String;
    :cond_a
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto/16 :goto_1

    .line 188
    .end local v3    # "value":Ljava/lang/String;
    :cond_b
    const-string v4, "%.0f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto/16 :goto_1

    .line 195
    .restart local v0    # "length":I
    :cond_c
    const/4 v4, 0x2

    if-le v0, v4, :cond_6

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_6

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_6

    .line 197
    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromHexReadable(Ljava/lang/String;)[B
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x61

    const/16 v10, 0x46

    const/16 v9, 0x41

    const/16 v8, 0x39

    const/16 v7, 0x30

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 90
    .local v4, "len":I
    rem-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_0

    .line 91
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s is not a readable string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 94
    :cond_0
    shr-int/lit8 v5, v4, 0x1

    new-array v2, v5, [B

    .line 95
    .local v2, "data":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_7

    .line 96
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 98
    .local v1, "c":C
    if-lt v1, v7, :cond_1

    if-gt v1, v8, :cond_1

    .line 99
    add-int/lit8 v0, v1, -0x30

    .line 107
    .local v0, "b":I
    :goto_1
    shl-int/lit8 v0, v0, 0x4

    .line 109
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 110
    if-lt v1, v7, :cond_4

    if-gt v1, v8, :cond_4

    .line 111
    add-int/lit8 v5, v1, -0x30

    add-int/2addr v0, v5

    .line 120
    :goto_2
    shr-int/lit8 v5, v3, 0x1

    int-to-byte v6, v0

    aput-byte v6, v2, v5

    .line 95
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 100
    .end local v0    # "b":I
    :cond_1
    if-lt v1, v11, :cond_2

    const/16 v5, 0x66

    if-gt v1, v5, :cond_2

    .line 101
    add-int/lit8 v5, v1, -0x61

    add-int/lit8 v0, v5, 0xa

    .restart local v0    # "b":I
    goto :goto_1

    .line 102
    .end local v0    # "b":I
    :cond_2
    if-lt v1, v9, :cond_3

    if-gt v1, v10, :cond_3

    .line 103
    add-int/lit8 v5, v1, -0x41

    add-int/lit8 v0, v5, 0xa

    .restart local v0    # "b":I
    goto :goto_1

    .line 105
    .end local v0    # "b":I
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s is not a readable string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 112
    .restart local v0    # "b":I
    :cond_4
    if-lt v1, v11, :cond_5

    const/16 v5, 0x66

    if-gt v1, v5, :cond_5

    .line 113
    add-int/lit8 v5, v1, -0x61

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v0, v5

    goto :goto_2

    .line 114
    :cond_5
    if-lt v1, v9, :cond_6

    if-gt v1, v10, :cond_6

    .line 115
    add-int/lit8 v5, v1, -0x41

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v0, v5

    goto :goto_2

    .line 117
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s is not a readable string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 122
    .end local v0    # "b":I
    .end local v1    # "c":C
    :cond_7
    return-object v2
.end method

.method public static toHexReadable([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 74
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 75
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lmiui/text/ExtraTextUtils;->toHexReadable([BLjava/lang/Appendable;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 78
    return-object v1
.end method

.method public static toHexReadable([BLjava/lang/Appendable;)V
    .locals 10
    .param p0, "bytes"    # [B
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .prologue
    .line 46
    if-nez p0, :cond_1

    .line 64
    :cond_0
    return-void

    .line 51
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[B
    :try_start_0
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-byte v1, v0, v3

    .line 52
    .local v1, "b":B
    move v7, v1

    .line 53
    .local v7, "n":I
    if-gez v7, :cond_2

    .line 54
    add-int/lit16 v7, v7, 0x100

    .line 57
    :cond_2
    shr-int/lit8 v4, v7, 0x4

    .line 58
    .local v4, "index1":I
    and-int/lit8 v5, v7, 0xf

    .line 59
    .local v5, "index2":I
    sget-object v8, Lmiui/text/ExtraTextUtils;->HEX_DIGITS:[C

    aget-char v8, v8, v4

    invoke-interface {p1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v8

    sget-object v9, Lmiui/text/ExtraTextUtils;->HEX_DIGITS:[C

    aget-char v9, v9, v5

    invoke-interface {v8, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "b":B
    .end local v3    # "i$":I
    .end local v4    # "index1":I
    .end local v5    # "index2":I
    .end local v6    # "len$":I
    .end local v7    # "n":I
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Exception throw during when append"

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method
