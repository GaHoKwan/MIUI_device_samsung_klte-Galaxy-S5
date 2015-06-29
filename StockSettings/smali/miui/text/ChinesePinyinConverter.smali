.class public Lmiui/text/ChinesePinyinConverter;
.super Ljava/lang/Object;
.source "ChinesePinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/text/ChinesePinyinConverter$BopomofoConvertor;,
        Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;,
        Lmiui/text/ChinesePinyinConverter$Token;
    }
.end annotation


# static fields
.field private static final FIRST_BASIC_UNIHAN:C = '\u4e00'

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lmiui/text/ChinesePinyinConverter;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST_BASIC_UNIHAN:C = '\u9fa5'

.field private static final SPECIAL_LING:C = '\u3007'

.field private static final TAG:Ljava/lang/String; = "ChinesePinyinConverter"

.field private static sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastNamePolyPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDictionary:Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x5df7

    const/16 v7, 0x4f20

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/text/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Lmiui/text/ChinesePinyinConverter$1;

    invoke-direct {v0}, Lmiui/text/ChinesePinyinConverter$1;-><init>()V

    sput-object v0, Lmiui/text/ChinesePinyinConverter;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    .line 130
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string v1, "\u5355\u4e8e"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHAN"

    aput-object v3, v2, v4

    const-string v3, "YU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string v1, "\u957f\u5b59"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHANG"

    aput-object v3, v2, v4

    const-string v3, "SUN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string v1, "\u5b50\u8f66"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZI"

    aput-object v3, v2, v4

    const-string v3, "JU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string v1, "\u4e07\u4fdf"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MO"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string v1, "\u6fb9\u53f0"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TAN"

    aput-object v3, v2, v4

    const-string v3, "TAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string v1, "\u5c09\u8fdf"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YU"

    aput-object v3, v2, v4

    const-string v3, "CHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e01

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DING"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4fde

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d3e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6c88

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHEN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x535c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8584

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5b5b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d32

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BEN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "FEI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6cca

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8300

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x756a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x891a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53c2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5355

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x90d7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9561

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x671d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x555c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHUAI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8870

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6668

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e11

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHOU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7633

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHOU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x957f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7fdf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "ZHAI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f43

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5200

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c03

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9046

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x660b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x82a5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GAI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8312

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KUANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x90c7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6496

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89c1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x964d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89d2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7f34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8bb0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x741a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5267

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96bd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9697

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x61a8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9760

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5587

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96d2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LUO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e86

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7f2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "MIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "MI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c2c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "MIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e5c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "NIE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9022

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x84ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PENG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6734

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4ec7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "QIU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8983

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "TAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x79a4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "QIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x77bf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "QU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4ec0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6298

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x772d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89e3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7cfb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9664

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5bf0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5458

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x66fe

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "ZENG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x67e5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "ZHA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x91cd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "chong"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;-><init>(Lmiui/text/ChinesePinyinConverter$1;)V

    iput-object v0, p0, Lmiui/text/ChinesePinyinConverter;->mDictionary:Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/ChinesePinyinConverter$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/text/ChinesePinyinConverter$1;

    .prologue
    .line 48
    invoke-direct {p0}, Lmiui/text/ChinesePinyinConverter;-><init>()V

    return-void
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "tokenType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/text/ChinesePinyinConverter$Token;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/text/ChinesePinyinConverter$Token;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lmiui/text/ChinesePinyinConverter$Token;

    invoke-direct {v1, p3, v0, v0}, Lmiui/text/ChinesePinyinConverter$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 394
    return-void
.end method

.method public static getInstance()Lmiui/text/ChinesePinyinConverter;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/ChinesePinyinConverter;

    return-object v0
.end method

.method private getPolyPhoneLastNameTokens(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/text/ChinesePinyinConverter$Token;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v6, v7

    .line 256
    :cond_0
    :goto_0
    return-object v6

    .line 226
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v6, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/text/ChinesePinyinConverter$Token;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v9, :cond_2

    .line 230
    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "hyphenatedName":Ljava/lang/String;
    sget-object v8, Lmiui/text/ChinesePinyinConverter;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 232
    .local v4, "polyPhones":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_0

    .line 234
    new-instance v5, Lmiui/text/ChinesePinyinConverter$Token;

    invoke-direct {v5}, Lmiui/text/ChinesePinyinConverter$Token;-><init>()V

    .line 235
    .local v5, "token":Lmiui/text/ChinesePinyinConverter$Token;
    iput v9, v5, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lmiui/text/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    .line 237
    aget-object v7, v4, v1

    iput-object v7, v5, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 238
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    .end local v0    # "hyphenatedName":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v4    # "polyPhones":[Ljava/lang/String;
    .end local v5    # "token":Lmiui/text/ChinesePinyinConverter$Token;
    :cond_2
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 246
    .local v2, "lastName":Ljava/lang/Character;
    sget-object v8, Lmiui/text/ChinesePinyinConverter;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 247
    .local v3, "polyPhone":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 248
    new-instance v5, Lmiui/text/ChinesePinyinConverter$Token;

    invoke-direct {v5}, Lmiui/text/ChinesePinyinConverter$Token;-><init>()V

    .line 249
    .restart local v5    # "token":Lmiui/text/ChinesePinyinConverter$Token;
    iput v9, v5, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    .line 250
    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lmiui/text/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    .line 251
    iput-object v3, v5, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 252
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v5    # "token":Lmiui/text/ChinesePinyinConverter$Token;
    :cond_3
    move-object v6, v7

    .line 256
    goto :goto_0
.end method


# virtual methods
.method public convertPinyin2Bopomofo(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pinyin"    # Ljava/lang/String;
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 408
    invoke-static {p1, p2}, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor;->convert(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/text/ChinesePinyinConverter$Token;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0, p1, v0, v0}, Lmiui/text/ChinesePinyinConverter;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 17
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "filterInvalidChar"    # Z
    .param p3, "ignoreLastName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/text/ChinesePinyinConverter$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v14, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/text/ChinesePinyinConverter$Token;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-object v14

    .line 291
    :cond_1
    const/4 v11, 0x0

    .line 292
    .local v11, "startIndex":I
    if-nez p3, :cond_2

    .line 293
    invoke-direct/range {p0 .. p1}, Lmiui/text/ChinesePinyinConverter;->getPolyPhoneLastNameTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 294
    .local v7, "polyPhoneLastNameTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/text/ChinesePinyinConverter$Token;>;"
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 295
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 296
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 300
    .end local v7    # "polyPhoneLastNameTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/text/ChinesePinyinConverter$Token;>;"
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 301
    .local v6, "inputLength":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v9, "sb":Ljava/lang/StringBuilder;
    const/4 v13, 0x1

    .line 307
    .local v13, "tokenType":I
    move v5, v11

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_14

    .line 308
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 309
    .local v2, "character":C
    const/16 v15, 0x20

    if-ne v2, v15, :cond_5

    .line 310
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 311
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/text/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 313
    :cond_3
    if-nez p2, :cond_4

    .line 314
    const/16 v15, 0x20

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 315
    .local v10, "separator":Ljava/lang/String;
    new-instance v15, Lmiui/text/ChinesePinyinConverter$Token;

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-direct {v15, v0, v10, v10}, Lmiui/text/ChinesePinyinConverter$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v10    # "separator":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x3

    .line 307
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 318
    :cond_5
    const/16 v15, 0x100

    if-ge v2, v15, :cond_a

    .line 322
    if-lez v5, :cond_6

    .line 323
    add-int/lit8 v15, v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 324
    .local v1, "c":C
    const/16 v15, 0x30

    if-lt v1, v15, :cond_8

    const/16 v15, 0x39

    if-gt v1, v15, :cond_8

    const/4 v3, 0x1

    .line 325
    .local v3, "digitA":Z
    :goto_3
    const/16 v15, 0x30

    if-lt v2, v15, :cond_9

    const/16 v15, 0x39

    if-gt v2, v15, :cond_9

    const/4 v4, 0x1

    .line 327
    .local v4, "digitB":Z
    :goto_4
    if-eq v3, v4, :cond_6

    .line 328
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_6

    .line 329
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/text/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 334
    .end local v1    # "c":C
    .end local v3    # "digitA":Z
    .end local v4    # "digitB":Z
    :cond_6
    const/4 v15, 0x1

    if-eq v13, v15, :cond_7

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_7

    .line 335
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/text/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 337
    :cond_7
    const/4 v13, 0x1

    .line 338
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 324
    .restart local v1    # "c":C
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 325
    .restart local v3    # "digitA":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 339
    .end local v1    # "c":C
    .end local v3    # "digitA":Z
    :cond_a
    const/16 v15, 0x3007

    if-ne v2, v15, :cond_c

    .line 340
    new-instance v12, Lmiui/text/ChinesePinyinConverter$Token;

    invoke-direct {v12}, Lmiui/text/ChinesePinyinConverter$Token;-><init>()V

    .line 341
    .local v12, "token":Lmiui/text/ChinesePinyinConverter$Token;
    const/4 v15, 0x2

    iput v15, v12, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    .line 342
    const-string v15, "ling"

    iput-object v15, v12, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 343
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_b

    .line 344
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/text/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 346
    :cond_b
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    const/4 v13, 0x2

    .line 348
    goto :goto_2

    .end local v12    # "token":Lmiui/text/ChinesePinyinConverter$Token;
    :cond_c
    const/16 v15, 0x4e00

    if-lt v2, v15, :cond_12

    const v15, 0x9fa5

    if-gt v2, v15, :cond_12

    .line 349
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/text/ChinesePinyinConverter;->mDictionary:Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;

    invoke-virtual {v15, v2}, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->getPinyinString(C)[Ljava/lang/String;

    move-result-object v8

    .line 350
    .local v8, "polyPhones":[Ljava/lang/String;
    new-instance v12, Lmiui/text/ChinesePinyinConverter$Token;

    invoke-direct {v12}, Lmiui/text/ChinesePinyinConverter$Token;-><init>()V

    .line 351
    .restart local v12    # "token":Lmiui/text/ChinesePinyinConverter$Token;
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lmiui/text/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    .line 352
    if-nez v8, :cond_f

    .line 353
    const/4 v15, 0x3

    iput v15, v12, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    .line 354
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 362
    :cond_d
    :goto_5
    iget v15, v12, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 363
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_e

    .line 364
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/text/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 366
    :cond_e
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    const/4 v13, 0x2

    goto/16 :goto_2

    .line 356
    :cond_f
    const/4 v15, 0x2

    iput v15, v12, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    .line 357
    const/4 v15, 0x0

    aget-object v15, v8, v15

    iput-object v15, v12, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 358
    array-length v15, v8

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_d

    .line 359
    iput-object v8, v12, Lmiui/text/ChinesePinyinConverter$Token;->polyPhones:[Ljava/lang/String;

    goto :goto_5

    .line 369
    :cond_10
    iget v15, v12, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    if-eq v13, v15, :cond_11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_11

    .line 370
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/text/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 372
    :cond_11
    iget v13, v12, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    .line 373
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 376
    .end local v8    # "polyPhones":[Ljava/lang/String;
    .end local v12    # "token":Lmiui/text/ChinesePinyinConverter$Token;
    :cond_12
    const/4 v15, 0x3

    if-eq v13, v15, :cond_13

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_13

    .line 377
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/text/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 379
    :cond_13
    const/4 v13, 0x3

    .line 380
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 383
    .end local v2    # "character":C
    :cond_14
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_0

    .line 384
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/text/ChinesePinyinConverter;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto/16 :goto_0
.end method

.method public isChinesePinyinKnown(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 88
    const/16 v0, 0x4e00

    if-lt p1, v0, :cond_0

    const v0, 0x9fa5

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
