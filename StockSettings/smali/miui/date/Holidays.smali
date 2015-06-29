.class public Lmiui/date/Holidays;
.super Ljava/lang/Object;
.source "Holidays.java"


# static fields
.field private static final CALENDAR_POOL:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool",
            "<",
            "Lmiui/date/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHINESE_CALENDAR_HOLIDAYS:[[I

.field private static final EASTER_DAYS:I = -0x1

.field private static final EASTER_DAY_CACHE:Landroid/util/SparseIntArray;

.field private static final EVE_OF_THE_SPRING_FESTVAL:I = -0x1

.field private static final HOLIDAYS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[[I>;>;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lmiui/date/Holidays;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 40
    const/16 v1, 0x10

    new-array v1, v1, [[I

    new-array v2, v8, [I

    const/4 v3, -0x1

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_eve_of_the_spring_festival:I

    aput v3, v2, v6

    aput-object v2, v1, v7

    new-array v2, v8, [I

    const/16 v3, 0x65

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_spring_festival:I

    aput v3, v2, v6

    aput-object v2, v1, v6

    new-array v2, v8, [I

    const/16 v3, 0x66

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_second_day:I

    aput v3, v2, v6

    aput-object v2, v1, v8

    new-array v2, v8, [I

    const/16 v3, 0x67

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_third_day:I

    aput v3, v2, v6

    aput-object v2, v1, v9

    new-array v2, v8, [I

    const/16 v3, 0x68

    aput v3, v2, v7

    sget v3, Lcom/miui/internal/R$string;->the_forth_day:I

    aput v3, v2, v6

    aput-object v2, v1, v10

    const/4 v2, 0x5

    new-array v3, v8, [I

    const/16 v4, 0x69

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_fifth_day:I

    aput v4, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v8, [I

    const/16 v4, 0x6a

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_sixth_day:I

    aput v4, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v8, [I

    const/16 v4, 0x6b

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_seventh_day:I

    aput v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v8, [I

    const/16 v4, 0x73

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_lantern_festival:I

    aput v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v8, [I

    const/16 v4, 0x1f9

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_dragon_boat_festival:I

    aput v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v8, [I

    const/16 v4, 0x2c3

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_night_of_sevens:I

    aput v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v8, [I

    const/16 v4, 0x2cb

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_spirit_festival:I

    aput v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v8, [I

    const/16 v4, 0x32f

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_mid_autumn_festival:I

    aput v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v8, [I

    const/16 v4, 0x38d

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_double_ninth_festival:I

    aput v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v8, [I

    const/16 v4, 0x3f7

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_water_lantern_festival:I

    aput v4, v3, v6

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-array v3, v8, [I

    const/16 v4, 0x4b8

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_laba_festival:I

    aput v4, v3, v6

    aput-object v3, v1, v2

    sput-object v1, Lmiui/date/Holidays;->CHINESE_CALENDAR_HOLIDAYS:[[I

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/date/Holidays;->HOLIDAYS:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[[I>;"
    sget-object v1, Lmiui/date/Holidays;->HOLIDAYS:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, ""

    const/4 v2, 0x7

    new-array v2, v2, [[I

    new-array v3, v8, [I

    const/16 v4, 0x65

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v4, v3, v6

    aput-object v3, v2, v7

    new-array v3, v8, [I

    const/16 v4, 0xd6

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v8, [I

    const/16 v4, 0x134

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_international_womens_day:I

    aput v4, v3, v6

    aput-object v3, v2, v8

    new-array v3, v8, [I

    const/16 v4, 0x138

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_arbor_day:I

    aput v4, v3, v6

    aput-object v3, v2, v9

    new-array v3, v8, [I

    const/16 v4, 0x191

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_fools_day:I

    aput v4, v3, v6

    aput-object v3, v2, v10

    const/4 v3, 0x5

    new-array v4, v8, [I

    const/16 v5, 0x1f5

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v8, [I

    const/16 v5, 0x4c9

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[[I>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[[I>;"
    sget-object v1, Lmiui/date/Holidays;->HOLIDAYS:Ljava/util/HashMap;

    const-string v2, "zh"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "CN"

    const/16 v2, 0xd

    new-array v2, v2, [[I

    new-array v3, v8, [I

    const/16 v4, 0x65

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v4, v3, v6

    aput-object v3, v2, v7

    new-array v3, v8, [I

    const/16 v4, 0xd6

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v8, [I

    const/16 v4, 0x134

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_international_womens_day:I

    aput v4, v3, v6

    aput-object v3, v2, v8

    new-array v3, v8, [I

    const/16 v4, 0x138

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_arbor_day:I

    aput v4, v3, v6

    aput-object v3, v2, v9

    new-array v3, v8, [I

    const/16 v4, 0x191

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_fools_day:I

    aput v4, v3, v6

    aput-object v3, v2, v10

    const/4 v3, 0x5

    new-array v4, v8, [I

    const/16 v5, 0x1f5

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v8, [I

    const/16 v5, 0x1f8

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_chinese_youth_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v8, [I

    const/16 v5, 0x259

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_childrens_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v8, [I

    const/16 v5, 0x2bd

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_partys_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v8, [I

    const/16 v5, 0x321

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_armys_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v8, [I

    const/16 v5, 0x38e

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_teachers_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-array v4, v8, [I

    const/16 v5, 0x3e9

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_national_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-array v4, v8, [I

    const/16 v5, 0x4c9

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "TW"

    const/16 v2, 0x12

    new-array v2, v2, [[I

    new-array v3, v8, [I

    const/16 v4, 0x65

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v4, v3, v6

    aput-object v3, v2, v7

    new-array v3, v8, [I

    const/16 v4, 0xd6

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v8, [I

    const/16 v4, 0xe4

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_peace_day:I

    aput v4, v3, v6

    aput-object v3, v2, v8

    new-array v3, v8, [I

    const/16 v4, 0x134

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_international_womens_day:I

    aput v4, v3, v6

    aput-object v3, v2, v9

    new-array v3, v8, [I

    const/16 v4, 0x138

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_arbor_day:I

    aput v4, v3, v6

    aput-object v3, v2, v10

    const/4 v3, 0x5

    new-array v4, v8, [I

    const/16 v5, 0x13a

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_anti_aggression_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v8, [I

    const/16 v5, 0x149

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_tw_youth_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v8, [I

    const/16 v5, 0x191

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_fools_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v8, [I

    const/16 v5, 0x194

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_tw_childrens_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v8, [I

    const/16 v5, 0x1f5

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v8, [I

    const/16 v5, 0x2cb

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_anniversary_of_lifting_martial_law:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-array v4, v8, [I

    const/16 v5, 0x387

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_armed_forces_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-array v4, v8, [I

    const/16 v5, 0x3a0

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_teachers_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-array v4, v8, [I

    const/16 v5, 0x3f2

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_national_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-array v4, v8, [I

    const/16 v5, 0x400

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_united_nations_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xf

    new-array v4, v8, [I

    const/16 v5, 0x401

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_retrocession_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0x10

    new-array v4, v8, [I

    const/16 v5, 0x458

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_national_father_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0x11

    new-array v4, v8, [I

    const/16 v5, 0x4c9

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "HK"

    const/4 v2, 0x7

    new-array v2, v2, [[I

    new-array v3, v8, [I

    const/4 v4, -0x1

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_easter_day:I

    aput v4, v3, v6

    aput-object v3, v2, v7

    new-array v3, v8, [I

    const/16 v4, 0x65

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_new_years_day:I

    aput v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v8, [I

    const/16 v4, 0xd6

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_valentines_day:I

    aput v4, v3, v6

    aput-object v3, v2, v8

    new-array v3, v8, [I

    const/16 v4, 0x1f5

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_labour_day:I

    aput v4, v3, v6

    aput-object v3, v2, v9

    new-array v3, v8, [I

    const/16 v4, 0x2bd

    aput v4, v3, v7

    sget v4, Lcom/miui/internal/R$string;->the_hksar_establishment_day:I

    aput v4, v3, v6

    aput-object v3, v2, v10

    const/4 v3, 0x5

    new-array v4, v8, [I

    const/16 v5, 0x3e9

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_national_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v8, [I

    const/16 v5, 0x4c9

    aput v5, v4, v7

    sget v5, Lcom/miui/internal/R$string;->the_christmas_day:I

    aput v5, v4, v6

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v1, Lmiui/date/Holidays$1;

    invoke-direct {v1}, Lmiui/date/Holidays$1;-><init>()V

    sput-object v1, Lmiui/date/Holidays;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    .line 130
    new-instance v1, Lmiui/date/Holidays$2;

    invoke-direct {v1}, Lmiui/date/Holidays$2;-><init>()V

    invoke-static {v1, v6}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v1

    sput-object v1, Lmiui/date/Holidays;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    .line 228
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lmiui/date/Holidays;->EASTER_DAY_CACHE:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/date/Holidays;-><init>(Ljava/util/Locale;)V

    .line 143
    return-void
.end method

.method protected constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lmiui/date/Holidays;->mLocale:Ljava/util/Locale;

    .line 151
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lmiui/date/Holidays;->mResources:Landroid/content/res/Resources;

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Lmiui/date/Holidays$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/date/Holidays$1;

    .prologue
    .line 32
    invoke-direct {p0}, Lmiui/date/Holidays;-><init>()V

    return-void
.end method

.method public static getDefault()Lmiui/date/Holidays;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lmiui/date/Holidays;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Holidays;

    return-object v0
.end method


# virtual methods
.method protected final getEasterDayOfYear(I)I
    .locals 14
    .param p1, "year"    # I

    .prologue
    const/4 v13, 0x5

    const/16 v12, 0xa

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/16 v11, 0x9

    .line 237
    sget-object v0, Lmiui/date/Holidays;->EASTER_DAY_CACHE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 238
    .local v10, "easter":I
    if-nez v10, :cond_0

    .line 239
    invoke-static {p1, v2}, Lmiui/date/Calendar;->solarTermDaysOfMonth(II)I

    move-result v0

    and-int/lit16 v3, v0, 0xff

    .line 240
    .local v3, "days":I
    sget-object v0, Lmiui/date/Holidays;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    move v1, p1

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lmiui/date/Calendar;->set(IIIIIII)Lmiui/date/Calendar;

    move-result-object v8

    .line 242
    .local v8, "date":Lmiui/date/Calendar;
    invoke-virtual {v8, v12}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    .line 243
    invoke-virtual {v8, v12}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    rsub-int/lit8 v9, v0, 0xf

    .line 253
    .local v9, "dayToFullMoon":I
    :goto_0
    invoke-virtual {v8, v11, v9}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    .line 255
    const/16 v0, 0xe

    invoke-virtual {v8, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 279
    :goto_1
    invoke-virtual {v8, v13}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {v8, v11}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    add-int v10, v0, v1

    .line 280
    sget-object v0, Lmiui/date/Holidays;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v0, v8}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 281
    sget-object v0, Lmiui/date/Holidays;->EASTER_DAY_CACHE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 284
    .end local v3    # "days":I
    .end local v8    # "date":Lmiui/date/Calendar;
    .end local v9    # "dayToFullMoon":I
    :cond_0
    return v10

    .line 245
    .restart local v3    # "days":I
    .restart local v8    # "date":Lmiui/date/Calendar;
    :cond_1
    invoke-virtual {v8}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-static {p1}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v9

    .line 250
    .restart local v9    # "dayToFullMoon":I
    :goto_2
    invoke-virtual {v8, v12}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    sub-int v0, v9, v0

    add-int/lit8 v9, v0, 0xf

    goto :goto_0

    .line 248
    .end local v9    # "dayToFullMoon":I
    :cond_2
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    invoke-static {p1, v0}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v9

    .restart local v9    # "dayToFullMoon":I
    goto :goto_2

    .line 257
    :pswitch_0
    const/4 v0, 0x7

    invoke-virtual {v8, v11, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 260
    :pswitch_1
    const/4 v0, 0x6

    invoke-virtual {v8, v11, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 263
    :pswitch_2
    invoke-virtual {v8, v11, v13}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 266
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {v8, v11, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 269
    :pswitch_4
    const/4 v0, 0x3

    invoke-virtual {v8, v11, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 272
    :pswitch_5
    invoke-virtual {v8, v11, v2}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 275
    :pswitch_6
    const/4 v0, 0x1

    invoke-virtual {v8, v11, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto :goto_1

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getHolidayName(Lmiui/date/Calendar;)Ljava/lang/String;
    .locals 12
    .param p1, "cal"    # Lmiui/date/Calendar;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 177
    const/4 v3, 0x0

    check-cast v3, [[I

    .line 178
    .local v3, "holidays":[[I
    sget-object v8, Lmiui/date/Holidays;->HOLIDAYS:Ljava/util/HashMap;

    iget-object v9, p0, Lmiui/date/Holidays;->mLocale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 179
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[[I>;"
    if-eqz v7, :cond_0

    .line 180
    iget-object v8, p0, Lmiui/date/Holidays;->mLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "holidays":[[I
    check-cast v3, [[I

    .line 183
    .restart local v3    # "holidays":[[I
    :cond_0
    if-nez v3, :cond_1

    .line 185
    sget-object v8, Lmiui/date/Holidays;->HOLIDAYS:Ljava/util/HashMap;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "holidays":[[I
    check-cast v3, [[I

    .line 188
    .restart local v3    # "holidays":[[I
    :cond_1
    const/4 v8, 0x5

    invoke-virtual {p1, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v8, v8, 0x64

    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    add-int v5, v8, v9

    .line 190
    .local v5, "key":I
    move-object v0, v3

    .local v0, "arr$":[[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v2, v0, v4

    .line 191
    .local v2, "holiday1":[I
    aget v8, v2, v11

    packed-switch v8, :pswitch_data_0

    .line 198
    aget v8, v2, v11

    if-ne v8, v5, :cond_2

    .line 199
    iget-object v8, p0, Lmiui/date/Holidays;->mResources:Landroid/content/res/Resources;

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 225
    .end local v2    # "holiday1":[I
    :goto_1
    return-object v8

    .line 193
    .restart local v2    # "holiday1":[I
    :pswitch_0
    invoke-virtual {p1, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lmiui/date/Holidays;->getEasterDayOfYear(I)I

    move-result v8

    if-ne v5, v8, :cond_2

    .line 194
    iget-object v8, p0, Lmiui/date/Holidays;->mResources:Landroid/content/res/Resources;

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 190
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 205
    .end local v2    # "holiday1":[I
    :cond_3
    invoke-virtual {p1}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "zh"

    iget-object v9, p0, Lmiui/date/Holidays;->mLocale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 206
    const/4 v8, 0x6

    invoke-virtual {p1, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v8, v8, 0x64

    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    add-int v5, v8, v9

    .line 207
    sget-object v3, Lmiui/date/Holidays;->CHINESE_CALENDAR_HOLIDAYS:[[I

    .line 208
    move-object v0, v3

    array-length v6, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_5

    aget-object v1, v0, v4

    .line 209
    .local v1, "holiday":[I
    aget v8, v1, v11

    packed-switch v8, :pswitch_data_1

    .line 216
    invoke-virtual {p1}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v8

    if-nez v8, :cond_4

    .line 217
    aget v8, v1, v11

    if-ne v5, v8, :cond_4

    .line 218
    iget-object v8, p0, Lmiui/date/Holidays;->mResources:Landroid/content/res/Resources;

    aget v9, v1, v10

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 211
    :pswitch_1
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Lmiui/date/Calendar;->daysInChineseYear(I)I

    move-result v8

    const/16 v9, 0xd

    invoke-virtual {p1, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 212
    iget-object v8, p0, Lmiui/date/Holidays;->mResources:Landroid/content/res/Resources;

    aget v9, v1, v10

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 208
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 225
    .end local v1    # "holiday":[I
    :cond_5
    const-string v8, ""

    goto :goto_1

    .line 191
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 209
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
    .end packed-switch
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lmiui/date/Holidays;->mLocale:Ljava/util/Locale;

    return-object v0
.end method
