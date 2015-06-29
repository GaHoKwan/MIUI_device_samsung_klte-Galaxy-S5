.class final enum Lmiui/text/SortKeyGenerator$NameStyle;
.super Ljava/lang/Enum;
.source "SortKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/text/SortKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NameStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/text/SortKeyGenerator$NameStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/text/SortKeyGenerator$NameStyle;

.field public static final enum CHINESE:Lmiui/text/SortKeyGenerator$NameStyle;

.field public static final enum CJK:Lmiui/text/SortKeyGenerator$NameStyle;

.field public static final enum JAPANESE:Lmiui/text/SortKeyGenerator$NameStyle;

.field public static final enum KOREAN:Lmiui/text/SortKeyGenerator$NameStyle;

.field public static final enum UNDEFINED:Lmiui/text/SortKeyGenerator$NameStyle;

.field public static final enum WESTERN:Lmiui/text/SortKeyGenerator$NameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    new-instance v0, Lmiui/text/SortKeyGenerator$NameStyle;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v3}, Lmiui/text/SortKeyGenerator$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->UNDEFINED:Lmiui/text/SortKeyGenerator$NameStyle;

    .line 71
    new-instance v0, Lmiui/text/SortKeyGenerator$NameStyle;

    const-string v1, "WESTERN"

    invoke-direct {v0, v1, v4}, Lmiui/text/SortKeyGenerator$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->WESTERN:Lmiui/text/SortKeyGenerator$NameStyle;

    .line 72
    new-instance v0, Lmiui/text/SortKeyGenerator$NameStyle;

    const-string v1, "CJK"

    invoke-direct {v0, v1, v5}, Lmiui/text/SortKeyGenerator$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->CJK:Lmiui/text/SortKeyGenerator$NameStyle;

    .line 73
    new-instance v0, Lmiui/text/SortKeyGenerator$NameStyle;

    const-string v1, "CHINESE"

    invoke-direct {v0, v1, v6}, Lmiui/text/SortKeyGenerator$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->CHINESE:Lmiui/text/SortKeyGenerator$NameStyle;

    .line 74
    new-instance v0, Lmiui/text/SortKeyGenerator$NameStyle;

    const-string v1, "JAPANESE"

    invoke-direct {v0, v1, v7}, Lmiui/text/SortKeyGenerator$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->JAPANESE:Lmiui/text/SortKeyGenerator$NameStyle;

    .line 75
    new-instance v0, Lmiui/text/SortKeyGenerator$NameStyle;

    const-string v1, "KOREAN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmiui/text/SortKeyGenerator$NameStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->KOREAN:Lmiui/text/SortKeyGenerator$NameStyle;

    .line 69
    const/4 v0, 0x6

    new-array v0, v0, [Lmiui/text/SortKeyGenerator$NameStyle;

    sget-object v1, Lmiui/text/SortKeyGenerator$NameStyle;->UNDEFINED:Lmiui/text/SortKeyGenerator$NameStyle;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/text/SortKeyGenerator$NameStyle;->WESTERN:Lmiui/text/SortKeyGenerator$NameStyle;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/text/SortKeyGenerator$NameStyle;->CJK:Lmiui/text/SortKeyGenerator$NameStyle;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/text/SortKeyGenerator$NameStyle;->CHINESE:Lmiui/text/SortKeyGenerator$NameStyle;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/text/SortKeyGenerator$NameStyle;->JAPANESE:Lmiui/text/SortKeyGenerator$NameStyle;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmiui/text/SortKeyGenerator$NameStyle;->KOREAN:Lmiui/text/SortKeyGenerator$NameStyle;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->$VALUES:[Lmiui/text/SortKeyGenerator$NameStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static guessCJKNameStyle(Ljava/lang/String;I)Lmiui/text/SortKeyGenerator$NameStyle;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 115
    .local v2, "length":I
    :goto_0
    if-ge p1, v2, :cond_3

    .line 116
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 117
    .local v1, "codePoint":I
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    invoke-static {v1}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    .line 119
    .local v3, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    invoke-static {v3}, Lmiui/text/SortKeyGenerator$NameStyle;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    sget-object v4, Lmiui/text/SortKeyGenerator$NameStyle;->JAPANESE:Lmiui/text/SortKeyGenerator$NameStyle;

    .line 133
    .end local v1    # "codePoint":I
    .end local v3    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :goto_1
    return-object v4

    .line 122
    .restart local v1    # "codePoint":I
    .restart local v3    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_0
    invoke-static {v3}, Lmiui/text/SortKeyGenerator$NameStyle;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    sget-object v4, Lmiui/text/SortKeyGenerator$NameStyle;->KOREAN:Lmiui/text/SortKeyGenerator$NameStyle;

    goto :goto_1

    .line 125
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 126
    .local v0, "codeChars":[C
    invoke-static {v0}, Lmiui/text/SortKeyGenerator$NameStyle;->isChineseUnicode([C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    sget-object v4, Lmiui/text/SortKeyGenerator$NameStyle;->CHINESE:Lmiui/text/SortKeyGenerator$NameStyle;

    goto :goto_1

    .line 130
    .end local v0    # "codeChars":[C
    .end local v3    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr p1, v4

    .line 131
    goto :goto_0

    .line 133
    .end local v1    # "codePoint":I
    :cond_3
    sget-object v4, Lmiui/text/SortKeyGenerator$NameStyle;->CJK:Lmiui/text/SortKeyGenerator$NameStyle;

    goto :goto_1
.end method

.method public static guessFullNameStyle(Ljava/lang/String;)Lmiui/text/SortKeyGenerator$NameStyle;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    if-nez p0, :cond_1

    .line 79
    sget-object v2, Lmiui/text/SortKeyGenerator$NameStyle;->UNDEFINED:Lmiui/text/SortKeyGenerator$NameStyle;

    .line 110
    :cond_0
    :goto_0
    return-object v2

    .line 82
    :cond_1
    sget-object v2, Lmiui/text/SortKeyGenerator$NameStyle;->UNDEFINED:Lmiui/text/SortKeyGenerator$NameStyle;

    .line 83
    .local v2, "nameStyle":Lmiui/text/SortKeyGenerator$NameStyle;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 84
    .local v1, "length":I
    const/4 v3, 0x0

    .line 85
    .local v3, "offset":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 86
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 87
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 88
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    .line 90
    .local v4, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    invoke-static {v4}, Lmiui/text/SortKeyGenerator$NameStyle;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 92
    invoke-static {v4}, Lmiui/text/SortKeyGenerator$NameStyle;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    invoke-static {p0, v3}, Lmiui/text/SortKeyGenerator$NameStyle;->guessCJKNameStyle(Ljava/lang/String;I)Lmiui/text/SortKeyGenerator$NameStyle;

    move-result-object v2

    goto :goto_0

    .line 98
    :cond_2
    invoke-static {v4}, Lmiui/text/SortKeyGenerator$NameStyle;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    sget-object v2, Lmiui/text/SortKeyGenerator$NameStyle;->JAPANESE:Lmiui/text/SortKeyGenerator$NameStyle;

    goto :goto_0

    .line 102
    :cond_3
    invoke-static {v4}, Lmiui/text/SortKeyGenerator$NameStyle;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 103
    sget-object v2, Lmiui/text/SortKeyGenerator$NameStyle;->KOREAN:Lmiui/text/SortKeyGenerator$NameStyle;

    goto :goto_0

    .line 106
    :cond_4
    sget-object v2, Lmiui/text/SortKeyGenerator$NameStyle;->WESTERN:Lmiui/text/SortKeyGenerator$NameStyle;

    .line 108
    .end local v4    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_5
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 109
    goto :goto_1
.end method

.method private static isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p0, "block"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 145
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isChineseUnicode([C)Z
    .locals 5
    .param p0, "chars"    # [C

    .prologue
    .line 170
    move-object v1, p0

    .local v1, "arr$":[C
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v0, v1, v2

    .line 171
    .local v0, "aChar":C
    invoke-static {}, Lmiui/text/ChinesePinyinConverter;->getInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lmiui/text/ChinesePinyinConverter;->isChinesePinyinKnown(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    const/4 v4, 0x1

    .line 175
    .end local v0    # "aChar":C
    :goto_1
    return v4

    .line 170
    .restart local v0    # "aChar":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "aChar":C
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p0, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 163
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p0, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 157
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p0, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 137
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/text/SortKeyGenerator$NameStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lmiui/text/SortKeyGenerator$NameStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/text/SortKeyGenerator$NameStyle;

    return-object v0
.end method

.method public static values()[Lmiui/text/SortKeyGenerator$NameStyle;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->$VALUES:[Lmiui/text/SortKeyGenerator$NameStyle;

    invoke-virtual {v0}, [Lmiui/text/SortKeyGenerator$NameStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/text/SortKeyGenerator$NameStyle;

    return-object v0
.end method
