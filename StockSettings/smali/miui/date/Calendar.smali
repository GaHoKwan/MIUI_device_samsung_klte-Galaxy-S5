.class public Lmiui/date/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lmiui/date/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final AD:I = 0x1

.field public static final AFTERNOON:I = 0x4

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x11

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field public static final AUTUMN_BEGINS:I = 0xf

.field public static final AUTUMN_EQUINOX:I = 0x12

.field public static final BC:I = 0x0

.field public static final CHICKEN:I = 0x9

.field public static final CHINESE_ERA_DAY:I = 0xb

.field public static final CHINESE_ERA_HOUR:I = 0x13

.field public static final CHINESE_ERA_MONTH:I = 0x7

.field public static final CHINESE_ERA_YEAR:I = 0x4

.field public static final CHINESE_MONTH:I = 0x6

.field public static final CHINESE_MONTH_IS_LEAP:I = 0x8

.field public static final CHINESE_YEAR:I = 0x2

.field private static final CHINESE_YEAR_INFO:[I

.field public static final CHINESE_YEAR_SYMBOL_ANIMAL:I = 0x3

.field public static final CLEAR_AND_BRIGHT:I = 0x7

.field public static final COLD_DEWS:I = 0x13

.field public static final COW:I = 0x1

.field private static final DAYS_19000131_TO_19700101:I = -0x63c1

.field private static final DAYS_IN_MONTH:[B

.field private static final DAYS_IN_YEAR:[I

.field private static final DAY_CHINESE_YEAR_FROM_19000101:[I

.field public static final DAY_OF_CHINESE_MONTH:I = 0xa

.field public static final DAY_OF_CHINESE_YEAR:I = 0xd

.field public static final DAY_OF_MONTH:I = 0x9

.field public static final DAY_OF_WEEK:I = 0xe

.field public static final DAY_OF_YEAR:I = 0xc

.field public static final DECEMBER:I = 0xb

.field public static final DETAIL_AM_PM:I = 0x10

.field public static final DOG:I = 0xa

.field public static final DRAGON:I = 0x4

.field public static final DST_OFFSET:I = 0x18

.field public static final EARLY_MORNING:I = 0x1

.field public static final ERA:I = 0x0

.field public static final EVENING:I = 0x5

.field public static final FEBRUARY:I = 0x1

.field public static final FIELD_COUNT:I = 0x19

.field private static final FIELD_NAMES:[Ljava/lang/String;

.field private static final FORMAT_CHARACTERS:[I

.field public static final FRIDAY:I = 0x6

.field public static final GRAIN_BUDS:I = 0xa

.field public static final GRAIN_IN_EAR:I = 0xb

.field public static final GRAIN_RAIN:I = 0x8

.field public static final GREAT_COLD:I = 0x2

.field public static final GREAT_HEAT:I = 0xe

.field public static final HEAVY_SNOW:I = 0x17

.field public static final HOAR_FROST_FALLS:I = 0x14

.field public static final HORSE:I = 0x6

.field public static final HOUR:I = 0x12

.field public static final INSECTS_AWAKEN:I = 0x5

.field public static final IS_CHINESE_LEAP_MONTH:I = 0x1

.field public static final JANUARY:I = 0x0

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field public static final LIGHT_SNOW:I = 0x16

.field public static final MARCH:I = 0x2

.field private static final MAX_CHINESE_CALENDAR_MILLISECOND:J = 0x3c314a71400L

.field private static final MAX_CHINESE_YEAR:I = 0x834

.field public static final MAY:I = 0x4

.field public static final MIDNIGHT:I = 0x0

.field public static final MILLISECOND:I = 0x16

.field public static final MILLISECOND_OF_DAY:I = 0x5265c00

.field public static final MILLISECOND_OF_HOUR:I = 0x36ee80

.field public static final MILLISECOND_OF_MINUTE:I = 0xea60

.field public static final MILLISECOND_OF_SECOND:I = 0x3e8

.field public static final MINUTE:I = 0x14

.field private static final MIN_CHINESE_CALENDAR_MILLISECOND:J = -0x201b77f5c00L

.field private static final MIN_CHINESE_YEAR:I = 0x76c

.field public static final MONDAY:I = 0x2

.field public static final MONKEY:I = 0x8

.field public static final MONTH:I = 0x5

.field public static final MORNING:I = 0x2

.field public static final MOUSE:I = 0x0

.field public static final NIGHT:I = 0x6

.field public static final NOON:I = 0x3

.field public static final NOT_CHINESE_LEAP_MONTH:I = 0x0

.field public static final NOVEMBER:I = 0xa

.field public static final NO_SOLAR_TERM:I = 0x0

.field public static final OCTOBER:I = 0x9

.field public static final PIG:I = 0xb

.field public static final PM:I = 0x1

.field public static final RABBIT:I = 0x3

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0x15

.field public static final SEPTEMBER:I = 0x8

.field public static final SHEEP:I = 0x7

.field public static final SLIGHT_COLD:I = 0x1

.field public static final SLIGHT_HEAT:I = 0xd

.field public static final SNAKE:I = 0x5

.field public static final SOLAR_TERM:I = 0xf

.field private static final SOLAR_TERM_BASE:[I

.field private static final SOLAR_TERM_INDEX:[B

.field private static final SOLAR_TERM_OS:[B

.field public static final SPRING_BEGINS:I = 0x3

.field public static final STOPPING_THE_HEAT:I = 0x10

.field public static final SUMMER_BEGINS:I = 0x9

.field public static final SUMMER_SOLSTICE:I = 0xc

.field public static final SUNDAY:I = 0x1

.field public static final THE_RAINS:I = 0x4

.field public static final THURSDAY:I = 0x5

.field public static final TIGER:I = 0x2

.field public static final TUESDAY:I = 0x3

.field public static final VERNAL_EQUINOX:I = 0x6

.field public static final WEDNESDAY:I = 0x4

.field public static final WHITE_DEWS:I = 0x11

.field public static final WINTER_BEGINS:I = 0x15

.field public static final WINTER_SOLSTICE:I = 0x18

.field public static final YEAR:I = 0x1

.field public static final ZONE_OFFSET:I = 0x17

.field private static final defaultGregorianCutover:J = -0xb1d069b5400L

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient changeYear:I

.field private transient currentYearSkew:I

.field private transient gregorianCutover:J

.field private transient julianError:I

.field private transient julianSkew:I

.field private transient lastYearSkew:I

.field private mFields:[I

.field private mMillisecond:J

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x18

    const/16 v4, 0xd

    const/16 v3, 0xc

    .line 94
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/date/Calendar;->DAYS_IN_MONTH:[B

    .line 98
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmiui/date/Calendar;->DAYS_IN_YEAR:[I

    .line 322
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ERA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "YEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CHINESE_YEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CHINESE_YEAR_SYMBOL_ANIMAL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CHINESE_ERA_YEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MONTH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CHINESE_MONTH"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CHINESE_ERA_MONTH"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CHINESE_MONTH_IS_LEAP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DAY_OF_MONTH"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DAY_OF_CHINESE_MONTH"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CHINESE_ERA_DAY"

    aput-object v2, v0, v1

    const-string v1, "DAY_OF_YEAR"

    aput-object v1, v0, v3

    const-string v1, "DAY_OF_CHINESE_YEAR"

    aput-object v1, v0, v4

    const/16 v1, 0xe

    const-string v2, "DAY_OF_WEEK"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SOLAR_TERM"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DETAIL_AM_PM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "AM_PM"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "HOUR"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "CHINESE_ERA_HOUR"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "MINUTE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "SECOND"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "MILLISECOND"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ZONE_OFFSET"

    aput-object v2, v0, v1

    const-string v1, "DST_OFFSET"

    aput-object v1, v0, v5

    sput-object v0, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    .line 677
    const/16 v0, 0x3a

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lmiui/date/Calendar;->FORMAT_CHARACTERS:[I

    .line 686
    const/16 v0, 0xca

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lmiui/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    .line 710
    const/16 v0, 0xc9

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lmiui/date/Calendar;->CHINESE_YEAR_INFO:[I

    .line 734
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lmiui/date/Calendar;->SOLAR_TERM_BASE:[I

    .line 738
    const-string v0, "0123415341536789:;<9:=<>:=1>?012@015@015@015AB78CDE8CD=1FD01GH01GH01IH01IJ0KLMN;LMBEOPDQRST0RUH0RVH0RWH0RWM0XYMNZ[MB\\]PT^_ST`_WH`_WH`_WM`_WM`aYMbc[Mde]Sfe]gfh_gih_Wih_WjhaWjka[jkl[jmn]ope]qph_qrh_sth_W"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmiui/date/Calendar;->SOLAR_TERM_INDEX:[B

    .line 744
    const-string v0, "211122112122112121222211221122122222212222222221222122222232222222222222222233223232223232222222322222112122112121222211222122222222222222222222322222112122112121222111211122122222212221222221221122122222222222222222222223222232222232222222222222112122112121122111211122122122212221222221221122122222222222222221211122112122212221222211222122222232222232222222222222112122112121111111222222112121112121111111222222111121112121111111211122112122112121122111222212111121111121111111111122112122112121122111211122112122212221222221222211111121111121111111222111111121111111111111111122112121112121111111222111111111111111111111111122111121112121111111221122122222212221222221222111011111111111111111111122111121111121111111211122112122112121122211221111011111101111111111111112111121111121111111211122112122112221222211221111011111101111111110111111111121111111111111111122112121112121122111111011111121111111111111111011111111112111111111111011111111111111111111221111011111101110111110111011011111111111111111221111011011101110111110111011011111101111111111211111001011101110111110110011011111101111111111211111001011001010111110110011011111101111111110211111001011001010111100110011011011101110111110211111001011001010011100110011001011101110111110211111001010001010011000100011001011001010111110111111001010001010011000111111111111111111111111100011001011001010111100111111001010001010000000111111000010000010000000100011001011001010011100110011001011001110111110100011001010001010011000110011001011001010111110111100000010000000000000000011001010001010011000111100000000000000000000000011001010001010000000111000000000000000000000000011001010000010000000"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmiui/date/Calendar;->SOLAR_TERM_OS:[B

    return-void

    .line 94
    nop

    :array_0
    .array-data 1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    .line 98
    :array_1
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x16d
    .end array-data

    .line 677
    :array_2
    .array-data 4
        0x3
        -0x1
        -0x1
        0xc
        0xe
        0x1a
        0x0
        0x12
        0x13
        -0x1
        0x12
        0x5
        0x5
        0x7
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        -0x1
        0x1a
        -0x1
        0x4
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x10
        -0x1
        0xe
        0x9
        0x7
        -0x1
        -0x1
        0x12
        -0x1
        -0x1
        0x12
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x15
        0xf
        -0x1
        -0x1
        0x1a
        -0x1
        0x1
        0x19
    .end array-data

    .line 686
    :array_3
    .array-data 4
        0x0
        0x180
        0x2e2
        0x445
        0x5c4
        0x726
        0x889
        0xa09
        0xb6b
        0xcce
        0xe4e
        0xfb0
        0x1130
        0x1292
        0x13f4
        0x1574
        0x16d6
        0x1839
        0x19b9
        0x1b1c
        0x1c9c
        0x1dfe
        0x1f60
        0x20e0
        0x2242
        0x23a4
        0x2525
        0x2687
        0x27ea
        0x296a
        0x2acc
        0x2c4b
        0x2dad
        0x2f10
        0x3090
        0x31f3
        0x3355
        0x34d5
        0x3637
        0x37b7
        0x3919
        0x3a7b
        0x3bfb
        0x3d5e
        0x3ec0
        0x4041
        0x41a3
        0x4305
        0x4485
        0x45e7
        0x4767
        0x48c9
        0x4a2c
        0x4bac
        0x4d0e
        0x4e71
        0x4ff1
        0x5153
        0x52d2
        0x5435
        0x5597
        0x5717
        0x587a
        0x59dc
        0x5b5c
        0x5cbf
        0x5e20
        0x5fa0
        0x6103
        0x6283
        0x63e5
        0x6548
        0x66c8
        0x682a
        0x698c
        0x6b0c
        0x6c6e
        0x6dee
        0x6f50
        0x70b3
        0x7233
        0x7396
        0x74f8
        0x7678
        0x77da
        0x795a
        0x7abc
        0x7c1e
        0x7d9e
        0x7f01
        0x8064
        0x81e4
        0x8346
        0x84a8
        0x8627
        0x878a
        0x890a
        0x8a6c
        0x8bcf
        0x8d4f
        0x8eb1
        0x9013
        0x9193
        0x92f5
        0x9458
        0x95d8
        0x973a
        0x98bb
        0x9a1d
        0x9b7f
        0x9cff
        0x9e61
        0x9fc3
        0xa143
        0xa2a6
        0xa426
        0xa588
        0xa6eb
        0xa86b
        0xa9cd
        0xab2f
        0xacaf
        0xae11
        0xaf74
        0xb0f4
        0xb256
        0xb3d6
        0xb538
        0xb69a
        0xb81a
        0xb97d
        0xbadf
        0xbc5f
        0xbdc2
        0xbf42
        0xc0a4
        0xc206
        0xc386
        0xc4e8
        0xc64a
        0xc7ca
        0xc92d
        0xca90
        0xcc10
        0xcd72
        0xcef2
        0xd054
        0xd1b6
        0xd336
        0xd498
        0xd5fb
        0xd77b
        0xd8de
        0xda5e
        0xdbc0
        0xdd22
        0xdea1
        0xe004
        0xe166
        0xe2e6
        0xe449
        0xe5ab
        0xe72b
        0xe88d
        0xea0d
        0xeb6f
        0xecd2
        0xee52
        0xefb4
        0xf117
        0xf297
        0xf3f9
        0xf579
        0xf6db
        0xf83d
        0xf9bd
        0xfb20
        0xfc82
        0xfe02
        0xff65
        0x100c7
        0x10247
        0x103a9
        0x10529
        0x1068b
        0x107ee
        0x1096e
        0x10ad0
        0x10c33
        0x10db2
        0x10f14
        0x11094
        0x111f6
        0x11359
        0x114d9
        0x1163c
        0x1179e
        0x1191e
        0x11a80
        0x11be2
        0x11d62
        0x11ec4
    .end array-data

    .line 710
    :array_4
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x5554
        0x56af
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0xd295
        0xb54f
        0xd6a0
        0xada2
        0x95b0
        0x4977
        0x497f
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0xab54
        0x2b6f
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6a95
        0x5adf
        0x2b60
        0x86e3
        0x92ef
        0xc8d7
        0xc95f
        0xd4a0
        0xd8a6
        0xb55f
        0x56a0
        0xa5b4
        0x25df
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x5355
        0x4daf
        0xa5b0
        0x4573
        0x52bf
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x95a6
        0x95bf
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x5176
        0x52bf
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0xd0b6
        0xd25f
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0xb255
        0x6d2f
        0xada0
        0x4b63
        0x937f
        0x49f8
        0x4970
        0x64b0
        0x68a6
        0xea5f
        0x6b20
        0xa6c4
        0xaaef
        0x92e0
        0xd2e3
        0xc960
        0xd557
        0xd4a0
        0xda50
        0x5d55
        0x56a0
        0xa6d0
        0x55d4
        0x52d0
        0xa9b8
        0xa950
        0xb4a0
        0xb6a6
        0xad50
        0x55a0
        0xaba4
        0xa5b0
        0x52b0
        0xb273
        0x6930
        0x7337
        0x6aa0
        0xad50
        0x4b55
        0x4b6f
        0xa570
        0x54e4
        0xd260
        0xe968
        0xd520
        0xdaa0
        0x6aa6
        0x56df
        0x4ae0
        0xa9d4
        0xa4d0
        0xd150
        0xf252
        0xd520
    .end array-data

    .line 734
    :array_5
    .array-data 4
        0x4
        0x13
        0x3
        0x12
        0x4
        0x13
        0x4
        0x13
        0x4
        0x14
        0x4
        0x14
        0x6
        0x16
        0x6
        0x16
        0x6
        0x16
        0x7
        0x16
        0x6
        0x15
        0x6
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 782
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/16 v0, 0x19

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    .line 1403
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Lmiui/date/Calendar;->gregorianCutover:J

    .line 1405
    const/16 v0, 0x62e

    iput v0, p0, Lmiui/date/Calendar;->changeYear:I

    .line 1407
    iget v0, p0, Lmiui/date/Calendar;->changeYear:I

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lmiui/date/Calendar;->changeYear:I

    div-int/lit16 v1, v1, 0x190

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lmiui/date/Calendar;->julianError:I

    .line 1409
    iget v0, p0, Lmiui/date/Calendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    iget v1, p0, Lmiui/date/Calendar;->julianError:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/date/Calendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/date/Calendar;->julianSkew:I

    .line 1412
    const/16 v0, 0xa

    iput v0, p0, Lmiui/date/Calendar;->currentYearSkew:I

    .line 1414
    const/4 v0, 0x0

    iput v0, p0, Lmiui/date/Calendar;->lastYearSkew:I

    .line 789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 790
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    .line 791
    return-void
.end method

.method private appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V
    .locals 6
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "addGMT"    # Z
    .param p3, "generalTimeZone"    # Z

    .prologue
    const v5, 0x36ee80

    const/4 v4, 0x2

    .line 2260
    const/16 v2, 0x17

    invoke-virtual {p0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x18

    invoke-virtual {p0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    add-int v0, v2, v3

    .line 2261
    .local v0, "offset":I
    const/16 v1, 0x2b

    .line 2262
    .local v1, "sign":C
    if-gez v0, :cond_0

    .line 2263
    const/16 v1, 0x2d

    .line 2264
    neg-int v0, v0

    .line 2266
    :cond_0
    if-eqz p2, :cond_1

    .line 2267
    const-string v2, "GMT"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2269
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2270
    div-int v2, v0, v5

    invoke-static {p1, v4, v2}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    .line 2271
    if-eqz p3, :cond_2

    .line 2272
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2274
    :cond_2
    rem-int v2, v0, v5

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-static {p1, v4, v2}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    .line 2275
    return-void
.end method

.method private static appendNumericValue(Ljava/lang/StringBuilder;II)V
    .locals 5
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p1, "width"    # I
    .param p2, "value"    # I

    .prologue
    const/16 v4, 0x30

    .line 2219
    const/16 v3, 0x2710

    if-lt p2, v3, :cond_1

    .line 2220
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2221
    .local v2, "v":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 2222
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2224
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    .end local v2    # "v":Ljava/lang/String;
    :goto_1
    return-void

    .line 2227
    .end local v0    # "i":I
    :cond_1
    const/16 v3, 0x3e8

    if-lt p2, v3, :cond_2

    .line 2228
    const/4 v1, 0x4

    .line 2237
    .local v1, "length":I
    :goto_2
    move v0, v1

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, p1, :cond_5

    .line 2238
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2237
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2229
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_2
    const/16 v3, 0x64

    if-lt p2, v3, :cond_3

    .line 2230
    const/4 v1, 0x3

    .restart local v1    # "length":I
    goto :goto_2

    .line 2231
    .end local v1    # "length":I
    :cond_3
    const/16 v3, 0xa

    if-lt p2, v3, :cond_4

    .line 2232
    const/4 v1, 0x2

    .restart local v1    # "length":I
    goto :goto_2

    .line 2234
    .end local v1    # "length":I
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "length":I
    goto :goto_2

    .line 2240
    .restart local v0    # "i":I
    :cond_5
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private appendTimeZone(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;I)V
    .locals 6
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "cfs"    # Lmiui/date/CalendarFormatSymbols;
    .param p3, "width"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2245
    iget-object v4, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v5, 0x18

    aget v3, v3, v5

    if-eqz v3, :cond_1

    move v3, v1

    :goto_0
    const/4 v5, 0x4

    if-eq p3, v5, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v3, v1, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2248
    .local v0, "tz":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2249
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    :goto_1
    return-void

    .end local v0    # "tz":Ljava/lang/String;
    :cond_1
    move v3, v2

    .line 2245
    goto :goto_0

    .line 2251
    .restart local v0    # "tz":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, v2, v2}, Lmiui/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto :goto_1
.end method

.method private appendValue(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;CII)V
    .locals 8
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "cfs"    # Lmiui/date/CalendarFormatSymbols;
    .param p3, "format"    # C
    .param p4, "width"    # I
    .param p5, "index"    # I

    .prologue
    .line 2095
    packed-switch p3, :pswitch_data_0

    .line 2216
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2097
    :pswitch_1
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseSymbolAnimals()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2105
    :pswitch_2
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    aget v5, v5, p5

    invoke-static {p1, p4, v5}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 2109
    :pswitch_3
    const/4 v5, 0x4

    if-ne p4, v5, :cond_1

    .line 2110
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getWeekDays()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2111
    :cond_1
    const/4 v5, 0x5

    if-ne p4, v5, :cond_2

    .line 2112
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortestWeekDays()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2114
    :cond_2
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortWeekDays()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2123
    :pswitch_4
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2126
    :pswitch_5
    const/4 v5, 0x2

    if-ne p4, v5, :cond_3

    .line 2127
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x13

    aget v6, v6, v7

    rem-int/lit8 v6, v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2129
    :cond_3
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x13

    aget v6, v6, v7

    rem-int/lit8 v6, v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2132
    :pswitch_6
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x12

    aget v5, v5, v6

    rem-int/lit8 v5, v5, 0xc

    invoke-static {p1, p4, v5}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_0

    .line 2136
    :pswitch_7
    const/4 v5, 0x3

    if-ge p4, v5, :cond_4

    .line 2137
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {p1, p4, v5}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_0

    .line 2138
    :cond_4
    const/4 v5, 0x4

    if-ne p4, v5, :cond_5

    .line 2139
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2140
    :cond_5
    const/4 v5, 0x5

    if-ne p4, v5, :cond_6

    .line 2141
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortestMonths()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2143
    :cond_6
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2147
    :pswitch_8
    const/4 v5, 0x2

    if-eq p4, v5, :cond_7

    .line 2148
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseLeapMonths()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x8

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2149
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseMonths()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2151
    :cond_7
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    rem-int/lit8 v6, v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2152
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x7

    aget v6, v6, v7

    rem-int/lit8 v6, v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2156
    :pswitch_9
    const/4 v5, 0x2

    if-eq p4, v5, :cond_8

    .line 2157
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseDigits()[Ljava/lang/String;

    move-result-object v2

    .line 2158
    .local v2, "s":[Ljava/lang/String;
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x2

    aget v4, v5, v6

    .line 2159
    .local v4, "year":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2160
    .local v1, "pos":I
    :goto_1
    if-lez v4, :cond_0

    .line 2161
    rem-int/lit8 v0, v4, 0xa

    .line 2162
    .local v0, "p":I
    div-int/lit8 v4, v4, 0xa

    .line 2163
    aget-object v5, v2, v0

    invoke-virtual {p1, v1, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2166
    .end local v0    # "p":I
    .end local v1    # "pos":I
    .end local v2    # "s":[Ljava/lang/String;
    .end local v4    # "year":I
    :cond_8
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    rem-int/lit8 v6, v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x4

    aget v6, v6, v7

    rem-int/lit8 v6, v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2171
    :pswitch_a
    const/4 v5, 0x4

    if-ne p4, v5, :cond_9

    .line 2172
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {p0, p1, v5, v6}, Lmiui/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_0

    .line 2173
    :cond_9
    const/4 v5, 0x5

    if-ne p4, v5, :cond_a

    .line 2174
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1, v5, v6}, Lmiui/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_0

    .line 2176
    :cond_a
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, v5, v6}, Lmiui/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_0

    .line 2180
    :pswitch_b
    const/4 v5, 0x2

    if-eq p4, v5, :cond_b

    .line 2181
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x11

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2183
    :cond_b
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getDetailedAmPms()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x10

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2187
    :pswitch_c
    const/4 v5, 0x2

    if-eq p4, v5, :cond_c

    .line 2188
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseDays()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0xa

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2190
    :cond_c
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    rem-int/lit8 v6, v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2191
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0xb

    aget v6, v6, v7

    rem-int/lit8 v6, v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2195
    :pswitch_d
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x12

    aget v5, v5, v6

    rem-int/lit8 v3, v5, 0xc

    .line 2196
    .local v3, "value":I
    if-nez v3, :cond_d

    const/16 v3, 0xc

    .end local v3    # "value":I
    :cond_d
    invoke-static {p1, p4, v3}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_0

    .line 2200
    :pswitch_e
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x12

    aget v5, v5, v6

    if-nez v5, :cond_e

    const/16 v5, 0x18

    :goto_2
    invoke-static {p1, p4, v5}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_0

    :cond_e
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x12

    aget v5, v5, v6

    goto :goto_2

    .line 2203
    :pswitch_f
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getSolarTerms()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2206
    :pswitch_10
    const/4 v5, 0x2

    if-ne p4, v5, :cond_f

    .line 2207
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    rem-int/lit8 v5, v5, 0x64

    invoke-static {p1, p4, v5}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_0

    .line 2209
    :cond_f
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {p1, p4, v5}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_0

    .line 2213
    :pswitch_11
    invoke-direct {p0, p1, p2, p4}, Lmiui/date/Calendar;->appendTimeZone(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;I)V

    goto/16 :goto_0

    .line 2095
    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private compute()V
    .locals 3

    .prologue
    .line 1291
    invoke-direct {p0}, Lmiui/date/Calendar;->computeDateTime()J

    move-result-wide v0

    .line 1292
    .local v0, "days":J
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1293
    invoke-direct {p0, v0, v1}, Lmiui/date/Calendar;->computeChineseDate(J)V

    .line 1294
    invoke-direct {p0}, Lmiui/date/Calendar;->computeSolarTerm()V

    .line 1295
    invoke-direct {p0, v0, v1}, Lmiui/date/Calendar;->computeChineseEraNames(J)V

    .line 1297
    :cond_0
    return-void
.end method

.method private computeChineseDate(J)V
    .locals 11
    .param p1, "ldays"    # J

    .prologue
    const/16 v5, 0x834

    const/4 v6, 0x1

    .line 1346
    const-wide/16 v8, -0x63c1

    sub-long v8, p1, v8

    long-to-int v1, v8

    .line 1348
    .local v1, "days":I
    iget-object v7, p0, Lmiui/date/Calendar;->mFields:[I

    aget v7, v7, v6

    if-lt v7, v5, :cond_3

    .line 1349
    .local v5, "year":I
    :goto_0
    sget-object v7, Lmiui/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    add-int/lit16 v8, v5, -0x76c

    aget v7, v7, v8

    sub-int/2addr v1, v7

    .line 1350
    if-gez v1, :cond_0

    .line 1351
    add-int/lit8 v5, v5, -0x1

    .line 1352
    invoke-static {v5}, Lmiui/date/Calendar;->daysInChineseYear(I)I

    move-result v7

    add-int/2addr v1, v7

    .line 1354
    :cond_0
    if-gez v1, :cond_1

    .line 1355
    add-int/lit8 v5, v5, -0x1

    .line 1356
    invoke-static {v5}, Lmiui/date/Calendar;->daysInChineseYear(I)I

    move-result v7

    add-int/2addr v1, v7

    .line 1359
    :cond_1
    iget-object v7, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v8, 0x2

    aput v5, v7, v8

    .line 1360
    iget-object v7, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v8, 0xd

    add-int/lit8 v9, v1, 0x1

    aput v9, v7, v8

    .line 1363
    invoke-static {v5}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v3

    .line 1364
    .local v3, "leapMonth":I
    const/4 v2, 0x0

    .line 1366
    .local v2, "isLeapMonth":Z
    const/4 v0, 0x0

    .line 1367
    .local v0, "dayOfMonth":I
    const/4 v4, 0x0

    .local v4, "month":I
    :goto_1
    const/16 v7, 0xc

    if-ge v4, v7, :cond_5

    if-lez v1, :cond_5

    .line 1368
    if-ltz v3, :cond_4

    add-int/lit8 v7, v3, 0x1

    if-ne v4, v7, :cond_4

    if-nez v2, :cond_4

    .line 1369
    add-int/lit8 v4, v4, -0x1

    .line 1370
    const/4 v2, 0x1

    .line 1371
    invoke-static {v5}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v0

    .line 1376
    :goto_2
    if-eqz v2, :cond_2

    add-int/lit8 v7, v3, 0x1

    if-ne v4, v7, :cond_2

    .line 1377
    const/4 v2, 0x0

    .line 1380
    :cond_2
    sub-int/2addr v1, v0

    .line 1367
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1348
    .end local v0    # "dayOfMonth":I
    .end local v2    # "isLeapMonth":Z
    .end local v3    # "leapMonth":I
    .end local v4    # "month":I
    .end local v5    # "year":I
    :cond_3
    iget-object v7, p0, Lmiui/date/Calendar;->mFields:[I

    aget v7, v7, v6

    add-int/lit8 v5, v7, 0x1

    goto :goto_0

    .line 1373
    .restart local v0    # "dayOfMonth":I
    .restart local v2    # "isLeapMonth":Z
    .restart local v3    # "leapMonth":I
    .restart local v4    # "month":I
    .restart local v5    # "year":I
    :cond_4
    invoke-static {v5, v4}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v0

    goto :goto_2

    .line 1383
    :cond_5
    if-nez v1, :cond_6

    if-lez v3, :cond_6

    add-int/lit8 v7, v3, 0x1

    if-ne v4, v7, :cond_6

    .line 1384
    if-eqz v2, :cond_8

    .line 1385
    const/4 v2, 0x0

    .line 1392
    :cond_6
    :goto_3
    if-gez v1, :cond_7

    .line 1393
    add-int/2addr v1, v0

    .line 1394
    add-int/lit8 v4, v4, -0x1

    .line 1396
    :cond_7
    iget-object v7, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v8, 0x8

    if-eqz v2, :cond_9

    :goto_4
    aput v6, v7, v8

    .line 1397
    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x6

    aput v4, v6, v7

    .line 1398
    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0xa

    add-int/lit8 v8, v1, 0x1

    aput v8, v6, v7

    .line 1399
    return-void

    .line 1387
    :cond_8
    const/4 v2, 0x1

    .line 1388
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1396
    :cond_9
    const/4 v6, 0x0

    goto :goto_4
.end method

.method private computeChineseEraNames(J)V
    .locals 11
    .param p1, "days"    # J

    .prologue
    const/16 v10, 0x9

    const/16 v9, 0x3c

    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 1308
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v2, v7

    .line 1309
    .local v1, "index":I
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v8

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 1310
    add-int/lit8 v1, v1, -0x1

    .line 1313
    :cond_0
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v8

    if-ne v2, v7, :cond_1

    .line 1314
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v10

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v7

    invoke-static {v3, v7}, Lmiui/date/Calendar;->solarTermDaysOfMonth(II)I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    if-lt v2, v3, :cond_1

    .line 1315
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v2, v7

    .line 1318
    :cond_1
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x3

    add-int/lit16 v4, v1, -0x76c

    add-int/lit8 v4, v4, 0xc

    int-to-long v4, v4

    const/16 v6, 0xc

    invoke-static {v4, v5, v6}, Lmiui/date/Calendar;->mod(JI)I

    move-result v4

    aput v4, v2, v3

    .line 1319
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x4

    add-int/lit16 v4, v1, -0x76c

    add-int/lit8 v4, v4, 0x24

    int-to-long v4, v4

    invoke-static {v4, v5, v9}, Lmiui/date/Calendar;->mod(JI)I

    move-result v4

    aput v4, v2, v3

    .line 1321
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v7

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v8

    invoke-static {v2, v3}, Lmiui/date/Calendar;->solarTermDaysOfMonth(II)I

    move-result v2

    shr-int/lit8 v0, v2, 0x8

    .line 1322
    .local v0, "firstNode":I
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v7

    add-int/lit16 v2, v2, -0x76c

    mul-int/lit8 v2, v2, 0xc

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v8

    add-int v1, v2, v3

    .line 1323
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v10

    if-lt v2, v0, :cond_2

    .line 1324
    add-int/lit8 v1, v1, 0x1

    .line 1326
    :cond_2
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x7

    add-int/lit8 v4, v1, 0xc

    int-to-long v4, v4

    invoke-static {v4, v5, v9}, Lmiui/date/Calendar;->mod(JI)I

    move-result v4

    aput v4, v2, v3

    .line 1328
    const-wide/16 v2, -0x63c1

    sub-long v2, p1, v2

    long-to-int v1, v2

    .line 1329
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0xb

    add-int/lit8 v4, v1, 0x28

    int-to-long v4, v4

    invoke-static {v4, v5, v9}, Lmiui/date/Calendar;->mod(JI)I

    move-result v4

    aput v4, v2, v3

    .line 1331
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x13

    mul-int/lit8 v4, v1, 0xc

    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x12

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x18

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v4, v5, v9}, Lmiui/date/Calendar;->mod(JI)I

    move-result v4

    aput v4, v2, v3

    .line 1332
    return-void
.end method

.method private computeDate(JJ)V
    .locals 9
    .param p1, "days"    # J
    .param p3, "localtime"    # J

    .prologue
    const/4 v6, 0x1

    .line 1816
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/date/Calendar;->computeYearAndDay(JJ)I

    move-result v1

    .line 1817
    .local v1, "dayOfYear":I
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v5, 0xc

    aput v1, v4, v5

    .line 1818
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    iget v5, p0, Lmiui/date/Calendar;->changeYear:I

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Lmiui/date/Calendar;->gregorianCutover:J

    cmp-long v4, v4, p3

    if-gtz v4, :cond_0

    .line 1819
    iget v4, p0, Lmiui/date/Calendar;->currentYearSkew:I

    add-int/2addr v1, v4

    .line 1821
    :cond_0
    div-int/lit8 v3, v1, 0x20

    .line 1822
    .local v3, "month":I
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    invoke-virtual {p0, v4}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v2

    .line 1823
    .local v2, "leapYear":Z
    invoke-static {v2, v3}, Lmiui/date/Calendar;->daysInYear(ZI)I

    move-result v4

    sub-int v0, v1, v4

    .line 1824
    .local v0, "date":I
    invoke-static {v2, v3}, Lmiui/date/Calendar;->daysInMonth(ZI)I

    move-result v4

    if-le v0, v4, :cond_1

    .line 1825
    invoke-static {v2, v3}, Lmiui/date/Calendar;->daysInMonth(ZI)I

    move-result v4

    sub-int/2addr v0, v4

    .line 1826
    add-int/lit8 v3, v3, 0x1

    .line 1829
    :cond_1
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v5, 0x5

    aput v3, v4, v5

    .line 1830
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v5, 0x9

    aput v0, v4, v5

    .line 1831
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v5, 0xe

    const-wide/16 v6, 0x3

    sub-long v6, p1, v6

    const/4 v8, 0x7

    invoke-static {v6, v7, v8}, Lmiui/date/Calendar;->mod(JI)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 1832
    return-void
.end method

.method private computeDateTime()J
    .locals 18

    .prologue
    .line 1446
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x17

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    aput v4, v2, v3

    .line 1448
    move-object/from16 v0, p0

    iget-wide v2, v0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide/32 v4, 0x5265c00

    div-long v10, v2, v4

    .line 1449
    .local v10, "days":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide/32 v4, 0x5265c00

    rem-long/2addr v2, v4

    long-to-int v8, v2

    .line 1451
    .local v8, "millis":I
    if-gez v8, :cond_0

    .line 1452
    const v2, 0x5265c00

    add-int/2addr v8, v2

    .line 1453
    const-wide/16 v2, 0x1

    sub-long/2addr v10, v2

    .line 1456
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x17

    aget v2, v2, v3

    add-int/2addr v8, v2

    .line 1457
    :goto_0
    if-gez v8, :cond_1

    .line 1458
    const v2, 0x5265c00

    add-int/2addr v8, v2

    .line 1459
    const-wide/16 v2, 0x1

    sub-long/2addr v10, v2

    goto :goto_0

    .line 1461
    :cond_1
    :goto_1
    const v2, 0x5265c00

    if-lt v8, v2, :cond_2

    .line 1462
    const v2, 0x5265c00

    sub-int/2addr v8, v2

    .line 1463
    const-wide/16 v2, 0x1

    add-long/2addr v10, v2

    goto :goto_1

    .line 1466
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x17

    aget v14, v2, v3

    .line 1467
    .local v14, "offset":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v4, v14

    add-long v12, v2, v4

    .line 1468
    .local v12, "newTime":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gez v2, :cond_8

    if-lez v14, :cond_8

    .line 1469
    const-wide v12, 0x7fffffffffffffffL

    .line 1474
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12, v13}, Lmiui/date/Calendar;->computeDate(JJ)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gtz v2, :cond_9

    const/4 v9, 0x0

    .line 1478
    .local v9, "dstOffset":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-lez v2, :cond_4

    .line 1479
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x17

    aget v2, v2, v3

    sub-int/2addr v9, v2

    .line 1481
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x18

    aput v9, v2, v3

    .line 1482
    if-eqz v9, :cond_7

    .line 1483
    move-wide/from16 v16, v10

    .line 1484
    .local v16, "oldDays":J
    add-int/2addr v8, v9

    .line 1485
    if-gez v8, :cond_a

    .line 1486
    const v2, 0x5265c00

    add-int/2addr v8, v2

    .line 1487
    const-wide/16 v2, 0x1

    sub-long/2addr v10, v2

    .line 1492
    :cond_5
    :goto_4
    cmp-long v2, v16, v10

    if-eqz v2, :cond_7

    .line 1493
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x18

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    sub-int v14, v2, v3

    .line 1494
    move-object/from16 v0, p0

    iget-wide v2, v0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v4, v14

    add-long v12, v2, v4

    .line 1495
    move-object/from16 v0, p0

    iget-wide v2, v0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_b

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gez v2, :cond_b

    if-lez v14, :cond_b

    .line 1496
    const-wide v12, 0x7fffffffffffffffL

    .line 1501
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12, v13}, Lmiui/date/Calendar;->computeDate(JJ)V

    .line 1505
    .end local v16    # "oldDays":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gtz v2, :cond_c

    .line 1506
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1507
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    rsub-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1512
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x16

    rem-int/lit16 v4, v8, 0x3e8

    aput v4, v2, v3

    .line 1513
    div-int/lit16 v8, v8, 0x3e8

    .line 1514
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x15

    rem-int/lit8 v4, v8, 0x3c

    aput v4, v2, v3

    .line 1515
    div-int/lit8 v8, v8, 0x3c

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x14

    rem-int/lit8 v4, v8, 0x3c

    aput v4, v2, v3

    .line 1517
    div-int/lit8 v8, v8, 0x3c

    .line 1518
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x12

    rem-int/lit8 v4, v8, 0x18

    aput v4, v2, v3

    .line 1520
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x11

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v5, 0x12

    aget v2, v2, v5

    const/16 v5, 0xb

    if-le v2, v5, :cond_d

    const/4 v2, 0x1

    :goto_7
    aput v2, v3, v4

    .line 1522
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x12

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1562
    :goto_8
    return-wide v10

    .line 1470
    .end local v9    # "dstOffset":I
    :cond_8
    move-object/from16 v0, p0

    iget-wide v2, v0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_3

    if-gez v14, :cond_3

    .line 1471
    const-wide/high16 v12, -0x8000000000000000L

    goto/16 :goto_2

    .line 1476
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v15, 0xe

    aget v7, v7, v15

    invoke-virtual/range {v2 .. v8}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v9

    goto/16 :goto_3

    .line 1488
    .restart local v9    # "dstOffset":I
    .restart local v16    # "oldDays":J
    :cond_a
    const v2, 0x5265c00

    if-lt v8, v2, :cond_5

    .line 1489
    const v2, 0x5265c00

    sub-int/2addr v8, v2

    .line 1490
    const-wide/16 v2, 0x1

    add-long/2addr v10, v2

    goto/16 :goto_4

    .line 1497
    :cond_b
    move-object/from16 v0, p0

    iget-wide v2, v0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_6

    if-gez v14, :cond_6

    .line 1498
    const-wide/high16 v12, -0x8000000000000000L

    goto/16 :goto_5

    .line 1509
    .end local v16    # "oldDays":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_6

    .line 1520
    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    .line 1524
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x10

    const/4 v4, 0x0

    aput v4, v2, v3

    goto :goto_8

    .line 1531
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x10

    const/4 v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_8

    .line 1539
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x10

    const/4 v4, 0x2

    aput v4, v2, v3

    goto/16 :goto_8

    .line 1542
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x10

    const/4 v4, 0x3

    aput v4, v2, v3

    goto/16 :goto_8

    .line 1549
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x10

    const/4 v4, 0x4

    aput v4, v2, v3

    goto/16 :goto_8

    .line 1552
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x10

    const/4 v4, 0x5

    aput v4, v2, v3

    goto/16 :goto_8

    .line 1559
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x10

    const/4 v4, 0x6

    aput v4, v2, v3

    goto/16 :goto_8

    .line 1522
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private computeSolarTerm()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/16 v4, 0xf

    const/4 v3, 0x5

    .line 1335
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v3

    invoke-static {v1, v2}, Lmiui/date/Calendar;->solarTermDaysOfMonth(II)I

    move-result v0

    .line 1336
    .local v0, "days":I
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v5

    shr-int/lit8 v2, v0, 0x8

    if-ne v1, v2, :cond_0

    .line 1337
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 1343
    :goto_0
    return-void

    .line 1338
    :cond_0
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v5

    and-int/lit16 v2, v0, 0xff

    if-ne v1, v2, :cond_1

    .line 1339
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    aput v2, v1, v4

    goto :goto_0

    .line 1341
    :cond_1
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x0

    aput v2, v1, v4

    goto :goto_0
.end method

.method private computeYearAndDay(JJ)I
    .locals 7
    .param p1, "days"    # J
    .param p3, "localTime"    # J

    .prologue
    .line 1839
    const/16 v1, 0x7b2

    .line 1840
    .local v1, "year":I
    move-wide v2, p1

    .line 1841
    .local v2, "dayCount":J
    iget-wide v4, p0, Lmiui/date/Calendar;->gregorianCutover:J

    cmp-long v4, p3, v4

    if-gez v4, :cond_0

    .line 1842
    iget v4, p0, Lmiui/date/Calendar;->julianSkew:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 1846
    :cond_0
    :goto_0
    const-wide/16 v4, 0x16d

    div-long v4, v2, v4

    long-to-int v0, v4

    .local v0, "approxYears":I
    if-eqz v0, :cond_1

    .line 1847
    add-int/2addr v1, v0

    .line 1848
    int-to-long v4, v1

    invoke-direct {p0, v4, v5}, Lmiui/date/Calendar;->daysFromBaseYear(J)J

    move-result-wide v4

    sub-long v2, p1, v4

    goto :goto_0

    .line 1850
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 1851
    add-int/lit8 v1, v1, -0x1

    .line 1852
    invoke-direct {p0, v1}, Lmiui/date/Calendar;->daysInYear(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1854
    :cond_2
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v5, 0x1

    aput v1, v4, v5

    .line 1855
    long-to-int v4, v2

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private daysFromBaseYear(J)J
    .locals 9
    .param p1, "year"    # J

    .prologue
    .line 1862
    const-wide/16 v2, 0x7b2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_3

    .line 1863
    const-wide/16 v2, 0x7b2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x16d

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x7b1

    sub-long v4, p1, v4

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    add-long v0, v2, v4

    .line 1864
    .local v0, "days":J
    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 1865
    const-wide/16 v2, 0x76d

    sub-long v2, p1, v2

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    const-wide/16 v4, 0x641

    sub-long v4, p1, v4

    const-wide/16 v6, 0x190

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1879
    .end local v0    # "days":J
    :goto_0
    return-wide v0

    .line 1867
    .restart local v0    # "days":J
    :cond_0
    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 1868
    iget v2, p0, Lmiui/date/Calendar;->currentYearSkew:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 1869
    :cond_1
    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 1870
    iget v2, p0, Lmiui/date/Calendar;->lastYearSkew:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 1872
    :cond_2
    iget v2, p0, Lmiui/date/Calendar;->julianSkew:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 1876
    .end local v0    # "days":J
    :cond_3
    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_4

    .line 1877
    const-wide/16 v2, 0x7b2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x16d

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x7b4

    sub-long v4, p1, v4

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    iget v4, p0, Lmiui/date/Calendar;->julianSkew:I

    int-to-long v4, v4

    add-long v0, v2, v4

    goto :goto_0

    .line 1879
    :cond_4
    const-wide/16 v2, 0x7b2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x16d

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x7b4

    sub-long v4, p1, v4

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    sub-long v4, p1, v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    sub-long v4, p1, v4

    const-wide/16 v6, 0x190

    div-long/2addr v4, v6

    add-long v0, v2, v4

    goto :goto_0
.end method

.method static daysInChineseMonth(II)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 1931
    sget-object v0, Lmiui/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0x10000

    add-int/lit8 v2, p1, 0x1

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1d

    goto :goto_0
.end method

.method static daysInChineseYear(I)I
    .locals 3
    .param p0, "year"    # I

    .prologue
    .line 1939
    sget-object v0, Lmiui/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    add-int/lit16 v1, p0, -0x76c

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    sget-object v1, Lmiui/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    add-int/lit16 v2, p0, -0x76c

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private static daysInMonth(ZI)I
    .locals 1
    .param p0, "leapYear"    # Z
    .param p1, "month"    # I

    .prologue
    .line 1887
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1888
    sget-object v0, Lmiui/date/Calendar;->DAYS_IN_MONTH:[B

    aget-byte v0, v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 1891
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/date/Calendar;->DAYS_IN_MONTH:[B

    aget-byte v0, v0, p1

    goto :goto_0
.end method

.method private daysInYear(I)I
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 1898
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x16e

    .line 1899
    .local v0, "daysInYear":I
    :goto_0
    iget v1, p0, Lmiui/date/Calendar;->changeYear:I

    if-ne p1, v1, :cond_0

    .line 1900
    iget v1, p0, Lmiui/date/Calendar;->currentYearSkew:I

    sub-int/2addr v0, v1

    .line 1902
    :cond_0
    iget v1, p0, Lmiui/date/Calendar;->changeYear:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1903
    iget v1, p0, Lmiui/date/Calendar;->lastYearSkew:I

    sub-int/2addr v0, v1

    .line 1905
    :cond_1
    return v0

    .line 1898
    .end local v0    # "daysInYear":I
    :cond_2
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method private static daysInYear(ZI)I
    .locals 1
    .param p0, "leapYear"    # Z
    .param p1, "month"    # I

    .prologue
    .line 1912
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 1913
    sget-object v0, Lmiui/date/Calendar;->DAYS_IN_YEAR:[I

    aget v0, v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 1916
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/date/Calendar;->DAYS_IN_YEAR:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private static leapChineseMonth(I)I
    .locals 3
    .param p0, "year"    # I

    .prologue
    .line 1958
    sget-object v1, Lmiui/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 v2, p0, -0x76c

    aget v1, v1, v2

    and-int/lit8 v0, v1, 0xf

    .line 1959
    .local v0, "lm":I
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    goto :goto_0
.end method

.method static leapDaysInChineseYear(I)I
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 1949
    invoke-static {p0}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lmiui/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mod(JI)I
    .locals 4
    .param p0, "value"    # J
    .param p2, "mod"    # I

    .prologue
    .line 1920
    int-to-long v2, p2

    rem-long v2, p0, v2

    long-to-int v0, v2

    .line 1921
    .local v0, "rem":I
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    if-gez v0, :cond_0

    .line 1922
    add-int/2addr v0, p2

    .line 1924
    .end local v0    # "rem":I
    :cond_0
    return v0
.end method

.method private onChineseDateChange()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    .line 1231
    const-wide/16 v0, -0x63c1

    .line 1232
    .local v0, "days":J
    sget-object v4, Lmiui/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    aget v5, v5, v6

    add-int/lit16 v5, v5, -0x76c

    aget v4, v4, v5

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 1234
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v7

    if-ge v2, v4, :cond_0

    .line 1235
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    invoke-static {v4, v2}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 1234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1238
    :cond_0
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1239
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    aget v5, v5, v7

    invoke-static {v4, v5}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 1246
    :cond_1
    :goto_1
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 1248
    const-wide/16 v4, 0x0

    invoke-direct {p0, v0, v1, v4, v5}, Lmiui/date/Calendar;->computeDate(JJ)V

    .line 1249
    invoke-direct {p0}, Lmiui/date/Calendar;->onSolarDateChange()V

    .line 1250
    return-void

    .line 1241
    :cond_2
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    invoke-static {v4}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v3

    .line 1242
    .local v3, "leapMonth":I
    if-ltz v3, :cond_1

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v7

    if-ge v3, v4, :cond_1

    .line 1243
    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    invoke-static {v4}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_1
.end method

.method private onSolarDateChange()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    .line 1215
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v0, v1

    .line 1216
    .local v2, "year":I
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v5, 0x5

    aget v3, v0, v5

    .line 1217
    .local v3, "month":I
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v5, 0x9

    aget v4, v0, v5

    .line 1219
    .local v4, "day":I
    int-to-long v10, v2

    invoke-direct {p0, v10, v11}, Lmiui/date/Calendar;->daysFromBaseYear(J)J

    move-result-wide v8

    .line 1220
    .local v8, "days":J
    invoke-virtual {p0, v2}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v0

    invoke-static {v0, v3}, Lmiui/date/Calendar;->daysInYear(ZI)I

    move-result v0

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    int-to-long v10, v0

    add-long/2addr v8, v10

    .line 1222
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v5, 0x12

    aget v0, v0, v5

    const v5, 0x36ee80

    mul-int/2addr v0, v5

    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x14

    aget v5, v5, v7

    const v7, 0xea60

    mul-int/2addr v5, v7

    add-int/2addr v0, v5

    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x15

    aget v5, v5, v7

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v0, v5

    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x16

    aget v5, v5, v7

    add-int v6, v0, v5

    .line 1224
    .local v6, "millisInDay":I
    const-wide/32 v10, 0x5265c00

    mul-long/2addr v10, v8

    int-to-long v12, v6

    add-long/2addr v10, v12

    iput-wide v10, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1225
    iget-wide v10, p0, Lmiui/date/Calendar;->mMillisecond:J

    if-gtz v2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    sub-long v0, v10, v0

    iput-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1227
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    .line 1228
    return-void

    .line 1225
    :cond_0
    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    const-wide/16 v12, 0x3

    sub-long v12, v8, v12

    const/4 v5, 0x7

    invoke-static {v12, v13, v5}, Lmiui/date/Calendar;->mod(JI)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method static solarTermDaysOfMonth(II)I
    .locals 7
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 1969
    const/16 v4, 0x834

    if-le p0, v4, :cond_0

    .line 1970
    const/4 v4, 0x0

    .line 1979
    :goto_0
    return v4

    .line 1973
    :cond_0
    sget-object v4, Lmiui/date/Calendar;->SOLAR_TERM_INDEX:[B

    add-int/lit16 v5, p0, -0x76c

    aget-byte v4, v4, v5

    add-int/lit8 v1, v4, -0x30

    .line 1974
    .local v1, "index":I
    mul-int/lit8 v3, p1, 0x2

    .line 1975
    .local v3, "solarTerm":I
    mul-int/lit8 v4, v1, 0x18

    add-int v0, v4, v3

    .line 1976
    .local v0, "first":I
    add-int/lit8 v2, v0, 0x1

    .line 1977
    .local v2, "second":I
    sget-object v4, Lmiui/date/Calendar;->SOLAR_TERM_OS:[B

    aget-byte v4, v4, v0

    add-int/lit8 v4, v4, -0x30

    sget-object v5, Lmiui/date/Calendar;->SOLAR_TERM_BASE:[I

    aget v5, v5, v3

    add-int v0, v4, v5

    .line 1978
    sget-object v4, Lmiui/date/Calendar;->SOLAR_TERM_OS:[B

    aget-byte v4, v4, v2

    add-int/lit8 v4, v4, -0x30

    sget-object v5, Lmiui/date/Calendar;->SOLAR_TERM_BASE:[I

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    add-int v2, v4, v5

    .line 1979
    shl-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v2

    goto :goto_0
.end method


# virtual methods
.method public add(II)Lmiui/date/Calendar;
    .locals 12
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    .line 1012
    if-ltz p1, :cond_0

    const/16 v5, 0x19

    if-lt p1, v5, :cond_1

    .line 1013
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Field out of range [0-25]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1016
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1209
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported set field:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1018
    :pswitch_1
    if-eqz p2, :cond_2

    .line 1019
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v5, p2

    rem-int/lit8 p2, v5, 0x2

    .line 1020
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-eq v5, p2, :cond_2

    .line 1021
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_2

    .line 1022
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x1

    iget-object v7, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    rsub-int/lit8 v7, v7, -0x1

    aput v7, v5, v6

    .line 1023
    invoke-direct {p0}, Lmiui/date/Calendar;->onSolarDateChange()V

    .line 1211
    :cond_2
    :goto_0
    return-object p0

    .line 1030
    :pswitch_2
    if-eqz p2, :cond_2

    .line 1031
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_3

    .line 1032
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x1

    iget-object v7, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    rsub-int/lit8 v7, v7, -0x1

    aput v7, v5, v6

    .line 1034
    :cond_3
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    add-int/2addr v7, p2

    aput v7, v5, v6

    .line 1035
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-static {v5, v6}, Lmiui/date/Calendar;->daysInMonth(ZI)I

    move-result v1

    .line 1036
    .local v1, "maxDays":I
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    if-le v5, v1, :cond_4

    .line 1037
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x9

    aput v1, v5, v6

    .line 1039
    :cond_4
    invoke-direct {p0}, Lmiui/date/Calendar;->onSolarDateChange()V

    goto :goto_0

    .line 1044
    .end local v1    # "maxDays":I
    :pswitch_3
    if-eqz p2, :cond_2

    .line 1045
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    add-int/2addr p2, v5

    .line 1046
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v5

    if-nez v5, :cond_5

    const/16 v5, 0x76c

    if-lt p2, v5, :cond_5

    const/16 v5, 0x834

    if-le p2, v5, :cond_6

    .line 1047
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out of range of Chinese Lunar Year"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1050
    :cond_6
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x2

    aput p2, v5, v6

    .line 1051
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 1052
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-static {v6}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 1053
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x8

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1057
    :cond_7
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-static {v5}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v1

    .line 1060
    .restart local v1    # "maxDays":I
    :goto_1
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    if-le v5, v1, :cond_8

    .line 1061
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0xa

    aput v1, v5, v6

    .line 1063
    :cond_8
    invoke-direct {p0}, Lmiui/date/Calendar;->onChineseDateChange()V

    goto/16 :goto_0

    .line 1057
    .end local v1    # "maxDays":I
    :cond_9
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    invoke-static {v5, v6}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v1

    goto :goto_1

    .line 1068
    :pswitch_4
    if-eqz p2, :cond_2

    .line 1069
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    add-int/2addr p2, v5

    .line 1070
    div-int/lit8 v4, p2, 0xc

    .line 1071
    .local v4, "year":I
    rem-int/lit8 p2, p2, 0xc

    .line 1072
    if-gez p2, :cond_a

    .line 1073
    add-int/lit8 p2, p2, 0xc

    .line 1074
    add-int/lit8 v4, v4, -0x1

    .line 1077
    :cond_a
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x5

    aput p2, v5, v6

    .line 1078
    if-nez v4, :cond_d

    .line 1079
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_b

    .line 1080
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x1

    iget-object v7, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    rsub-int/lit8 v7, v7, -0x1

    aput v7, v5, v6

    .line 1083
    :cond_b
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v5

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-static {v5, v6}, Lmiui/date/Calendar;->daysInMonth(ZI)I

    move-result v1

    .line 1084
    .restart local v1    # "maxDays":I
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    if-le v5, v1, :cond_c

    .line 1085
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x9

    aput v1, v5, v6

    .line 1087
    :cond_c
    invoke-direct {p0}, Lmiui/date/Calendar;->onSolarDateChange()V

    goto/16 :goto_0

    .line 1089
    .end local v1    # "maxDays":I
    :cond_d
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    goto/16 :goto_0

    .line 1095
    .end local v4    # "year":I
    :pswitch_5
    if-eqz p2, :cond_2

    .line 1096
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1097
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out of range of Chinese Lunar Year"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1100
    :cond_e
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-static {v5}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v0

    .line 1101
    .local v0, "leapMonth":I
    :goto_2
    if-lez p2, :cond_12

    .line 1102
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    if-ne v5, v0, :cond_10

    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    if-nez v5, :cond_10

    .line 1103
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x8

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 1101
    :cond_f
    :goto_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 1105
    :cond_10
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x6

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 1106
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x8

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1107
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    const/16 v6, 0xb

    if-le v5, v6, :cond_f

    .line 1108
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x6

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1109
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x2

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 1110
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/16 v6, 0x834

    if-le v5, v6, :cond_11

    .line 1111
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out of range of Chinese Lunar Year"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1113
    :cond_11
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-static {v5}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v0

    goto :goto_3

    .line 1118
    :cond_12
    :goto_4
    if-gez p2, :cond_17

    .line 1119
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    if-ne v5, v0, :cond_14

    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    .line 1120
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x8

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1118
    :cond_13
    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 1122
    :cond_14
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x6

    aget v7, v5, v6

    add-int/lit8 v7, v7, -0x1

    aput v7, v5, v6

    .line 1123
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    if-gez v5, :cond_16

    .line 1124
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x6

    const/16 v7, 0xb

    aput v7, v5, v6

    .line 1125
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x6

    aget v7, v5, v6

    add-int/lit8 v7, v7, -0x1

    aput v7, v5, v6

    .line 1126
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/16 v6, 0x76c

    if-ge v5, v6, :cond_15

    .line 1127
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out of range of Chinese Lunar Year"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1129
    :cond_15
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v0

    .line 1131
    :cond_16
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    if-ne v5, v0, :cond_13

    .line 1132
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x8

    const/4 v7, 0x1

    aput v7, v5, v6

    goto :goto_5

    .line 1137
    :cond_17
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_19

    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-static {v5}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v1

    .line 1140
    .restart local v1    # "maxDays":I
    :goto_6
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0xa

    aget v5, v5, v6

    if-le v5, v1, :cond_18

    .line 1141
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v6, 0xa

    aput v1, v5, v6

    .line 1143
    :cond_18
    invoke-direct {p0}, Lmiui/date/Calendar;->onChineseDateChange()V

    goto/16 :goto_0

    .line 1137
    .end local v1    # "maxDays":I
    :cond_19
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v7, 0x6

    aget v6, v6, v7

    invoke-static {v5, v6}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v1

    goto :goto_6

    .line 1151
    .end local v0    # "leapMonth":I
    :pswitch_6
    if-eqz p2, :cond_2

    .line 1152
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v8, p2

    const-wide/32 v10, 0x5265c00

    mul-long/2addr v8, v10

    add-long v2, v6, v8

    .line 1153
    .local v2, "mills":J
    if-lez p2, :cond_1a

    const/4 v5, 0x1

    :goto_7
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_1b

    const/4 v6, 0x1

    :goto_8
    if-eq v5, v6, :cond_1c

    .line 1154
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out of range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1153
    :cond_1a
    const/4 v5, 0x0

    goto :goto_7

    :cond_1b
    const/4 v6, 0x0

    goto :goto_8

    .line 1156
    :cond_1c
    iput-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1157
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    goto/16 :goto_0

    .line 1162
    .end local v2    # "mills":J
    :pswitch_7
    if-eqz p2, :cond_2

    .line 1163
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v8, p2

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v8, v10

    add-long v2, v6, v8

    .line 1164
    .restart local v2    # "mills":J
    if-lez p2, :cond_1d

    const/4 v5, 0x1

    :goto_9
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_1e

    const/4 v6, 0x1

    :goto_a
    if-eq v5, v6, :cond_1f

    .line 1165
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out of range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1164
    :cond_1d
    const/4 v5, 0x0

    goto :goto_9

    :cond_1e
    const/4 v6, 0x0

    goto :goto_a

    .line 1167
    :cond_1f
    iput-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1168
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    goto/16 :goto_0

    .line 1174
    .end local v2    # "mills":J
    :pswitch_8
    if-eqz p2, :cond_2

    .line 1175
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v8, p2

    const-wide/32 v10, 0xea60

    mul-long/2addr v8, v10

    add-long v2, v6, v8

    .line 1176
    .restart local v2    # "mills":J
    if-lez p2, :cond_20

    const/4 v5, 0x1

    :goto_b
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_21

    const/4 v6, 0x1

    :goto_c
    if-eq v5, v6, :cond_22

    .line 1177
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out of range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1176
    :cond_20
    const/4 v5, 0x0

    goto :goto_b

    :cond_21
    const/4 v6, 0x0

    goto :goto_c

    .line 1179
    :cond_22
    iput-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1180
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    goto/16 :goto_0

    .line 1186
    .end local v2    # "mills":J
    :pswitch_9
    if-eqz p2, :cond_2

    .line 1187
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v8, p2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long v2, v6, v8

    .line 1188
    .restart local v2    # "mills":J
    if-lez p2, :cond_23

    const/4 v5, 0x1

    :goto_d
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_24

    const/4 v6, 0x1

    :goto_e
    if-eq v5, v6, :cond_25

    .line 1189
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out of range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1188
    :cond_23
    const/4 v5, 0x0

    goto :goto_d

    :cond_24
    const/4 v6, 0x0

    goto :goto_e

    .line 1191
    :cond_25
    iput-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1192
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    goto/16 :goto_0

    .line 1198
    .end local v2    # "mills":J
    :pswitch_a
    if-eqz p2, :cond_2

    .line 1199
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v8, p2

    add-long v2, v6, v8

    .line 1200
    .restart local v2    # "mills":J
    if-lez p2, :cond_26

    const/4 v5, 0x1

    :goto_f
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_27

    const/4 v6, 0x1

    :goto_10
    if-eq v5, v6, :cond_28

    .line 1201
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out of range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1200
    :cond_26
    const/4 v5, 0x0

    goto :goto_f

    :cond_27
    const/4 v6, 0x0

    goto :goto_10

    .line 1203
    :cond_28
    iput-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 1204
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    goto/16 :goto_0

    .line 1016
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public after(Lmiui/date/Calendar;)Z
    .locals 4
    .param p1, "calendar"    # Lmiui/date/Calendar;

    .prologue
    .line 1668
    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public before(Lmiui/date/Calendar;)Z
    .locals 4
    .param p1, "calendar"    # Lmiui/date/Calendar;

    .prologue
    .line 1684
    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1645
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    .line 1646
    .local v0, "clone":Lmiui/date/Calendar;
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    .line 1647
    iget-object v2, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;

    iput-object v2, v0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1648
    return-object v0

    .line 1649
    .end local v0    # "clone":Lmiui/date/Calendar;
    :catch_0
    move-exception v1

    .line 1651
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, Lmiui/date/Calendar;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->compareTo(Lmiui/date/Calendar;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lmiui/date/Calendar;)I
    .locals 4
    .param p1, "another"    # Lmiui/date/Calendar;

    .prologue
    .line 1594
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    iget-wide v2, p1, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    iget-wide v2, p1, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1612
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lmiui/date/Calendar;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    check-cast p1, Lmiui/date/Calendar;

    .end local p1    # "object":Ljava/lang/Object;
    iget-wide v2, p1, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public format(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Ljava/lang/CharSequence;

    .prologue
    .line 1994
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/String;
    .locals 3
    .param p1, "format"    # Ljava/lang/CharSequence;
    .param p2, "cfs"    # Lmiui/date/CalendarFormatSymbols;

    .prologue
    .line 2010
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 2011
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1, p2}, Lmiui/date/Calendar;->format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2012
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 2013
    return-object v1
.end method

.method public format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "format"    # Ljava/lang/CharSequence;

    .prologue
    .line 2031
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/date/Calendar;->format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;
    .locals 10
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "format"    # Ljava/lang/CharSequence;
    .param p3, "cfs"    # Lmiui/date/CalendarFormatSymbols;

    .prologue
    const/16 v9, 0x27

    .line 2048
    if-nez p3, :cond_0

    .line 2049
    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object p3

    .line 2052
    :cond_0
    const/4 v7, 0x0

    .line 2055
    .local v7, "inEscape":Z
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .local v8, "s":I
    :goto_0
    if-ge v6, v8, :cond_8

    .line 2056
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2058
    .local v3, "c":C
    if-eqz v7, :cond_3

    .line 2059
    if-ne v3, v9, :cond_2

    .line 2060
    add-int/lit8 v0, v6, 0x1

    if-ge v0, v8, :cond_1

    add-int/lit8 v0, v6, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    .line 2061
    add-int/lit8 v6, v6, 0x1

    .line 2062
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2055
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2064
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 2067
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2072
    :cond_3
    if-ne v3, v9, :cond_5

    .line 2073
    add-int/lit8 v0, v6, 0x1

    if-ge v0, v8, :cond_4

    add-int/lit8 v0, v6, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_4

    .line 2074
    add-int/lit8 v6, v6, 0x1

    .line 2075
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2077
    :cond_4
    const/4 v7, 0x1

    goto :goto_1

    .line 2080
    :cond_5
    const/16 v0, 0x41

    if-lt v3, v0, :cond_7

    const/16 v0, 0x7a

    if-gt v3, v0, :cond_7

    sget-object v0, Lmiui/date/Calendar;->FORMAT_CHARACTERS:[I

    add-int/lit8 v1, v3, -0x41

    aget v0, v0, v1

    if-ltz v0, :cond_7

    .line 2081
    const/4 v4, 0x1

    .local v4, "width":I
    :goto_2
    add-int/lit8 v0, v6, 0x1

    if-ge v0, v8, :cond_6

    add-int/lit8 v0, v6, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_6

    .line 2082
    add-int/lit8 v6, v6, 0x1

    .line 2081
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2084
    :cond_6
    sget-object v0, Lmiui/date/Calendar;->FORMAT_CHARACTERS:[I

    add-int/lit8 v1, v3, -0x41

    aget v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lmiui/date/Calendar;->appendValue(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;CII)V

    goto :goto_1

    .line 2086
    .end local v4    # "width":I
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2091
    .end local v3    # "c":C
    :cond_8
    return-object p1
.end method

.method public get(I)I
    .locals 3
    .param p1, "field"    # I

    .prologue
    .line 1284
    if-ltz p1, :cond_0

    const/16 v0, 0x19

    if-lt p1, v0, :cond_1

    .line 1285
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field out of range [0-25]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1287
    :cond_1
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, p1

    return v0
.end method

.method public getActualMaximum(I)I
    .locals 6
    .param p1, "field"    # I

    .prologue
    const/4 v3, 0x6

    const/16 v2, 0x3b

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1692
    if-ltz p1, :cond_0

    const/16 v4, 0x19

    if-lt p1, v4, :cond_1

    .line 1693
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field out of range [0-25]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1696
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1741
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    .line 1739
    :cond_2
    :goto_0
    return v0

    .line 1700
    :pswitch_1
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v2, v0

    if-ne v0, v1, :cond_3

    const v0, 0x116bd2d2

    goto :goto_0

    :cond_3
    const v0, 0x116babff

    goto :goto_0

    .line 1702
    :pswitch_2
    const/16 v0, 0x834

    goto :goto_0

    .line 1704
    :pswitch_3
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 1709
    goto :goto_0

    .line 1712
    :pswitch_5
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 1714
    goto :goto_0

    .line 1716
    :pswitch_7
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-static {v0, v1}, Lmiui/date/Calendar;->daysInMonth(ZI)I

    move-result v0

    goto :goto_0

    .line 1718
    :pswitch_8
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v5

    invoke-static {v0}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v5

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v0

    goto :goto_0

    .line 1721
    :pswitch_9
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lmiui/date/Calendar;->daysInYear(I)I

    move-result v0

    goto :goto_0

    .line 1723
    :pswitch_a
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v5

    invoke-static {v0}, Lmiui/date/Calendar;->daysInChineseYear(I)I

    move-result v0

    goto :goto_0

    .line 1725
    :pswitch_b
    const/4 v0, 0x7

    goto :goto_0

    .line 1727
    :pswitch_c
    const/16 v0, 0x18

    goto :goto_0

    :pswitch_d
    move v0, v3

    .line 1729
    goto :goto_0

    :pswitch_e
    move v0, v1

    .line 1731
    goto :goto_0

    .line 1733
    :pswitch_f
    const/16 v0, 0x17

    goto :goto_0

    :pswitch_10
    move v0, v2

    .line 1735
    goto :goto_0

    :pswitch_11
    move v0, v2

    .line 1737
    goto :goto_0

    .line 1739
    :pswitch_12
    const/16 v0, 0x3e7

    goto :goto_0

    .line 1696
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_4
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 3
    .param p1, "field"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1748
    if-ltz p1, :cond_0

    const/16 v2, 0x19

    if-lt p1, v2, :cond_1

    .line 1749
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field out of range [0-25]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1752
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1796
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    .line 1794
    :cond_2
    :goto_0
    :pswitch_1
    return v0

    .line 1758
    :pswitch_2
    const/16 v0, 0x76c

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1772
    goto :goto_0

    .line 1774
    :pswitch_4
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 1776
    goto :goto_0

    .line 1778
    :pswitch_6
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 1780
    goto :goto_0

    .line 1752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getChineseLeapMonth()I
    .locals 2

    .prologue
    .line 1580
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v0

    return v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .prologue
    .line 823
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1602
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    iget-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isChineseLeapMonth()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1572
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeapYear(I)Z
    .locals 3
    .param p1, "year"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1805
    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    if-le p1, v2, :cond_2

    .line 1806
    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_1

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_1

    .line 1809
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1806
    goto :goto_0

    .line 1809
    :cond_2
    rem-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public outOfChineseCalendarRange()Z
    .locals 8

    .prologue
    const/16 v7, 0x18

    const/16 v6, 0x17

    .line 1303
    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide v2, -0x201b77f5c00L

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v7

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide v2, 0x3c314a71400L

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v6

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v7

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(II)Lmiui/date/Calendar;
    .locals 9
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x2

    .line 960
    if-ne p1, v4, :cond_5

    .line 961
    if-gez p2, :cond_2

    .line 962
    neg-int p2, p2

    .line 963
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v5

    invoke-static {v2}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v2

    if-eq p2, v2, :cond_0

    .line 964
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "year "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no such leap month:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 966
    :cond_0
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aput v7, v2, v6

    .line 974
    :goto_0
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aput p2, v2, v4

    .line 975
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v6

    if-ne v2, v7, :cond_4

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v5

    invoke-static {v2}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v1

    .line 978
    .local v1, "maxDays":I
    :goto_1
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v8

    if-le v2, v1, :cond_1

    .line 979
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aput v1, v2, v8

    .line 981
    :cond_1
    invoke-direct {p0}, Lmiui/date/Calendar;->onChineseDateChange()V

    .line 995
    .end local v1    # "maxDays":I
    :goto_2
    return-object p0

    .line 968
    :cond_2
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v2

    if-ge p2, v2, :cond_3

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v2

    if-le p2, v2, :cond_3

    .line 969
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value is out of date range ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 972
    :cond_3
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x0

    aput v3, v2, v6

    goto :goto_0

    .line 975
    :cond_4
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v5

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v4

    invoke-static {v2, v3}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v1

    goto :goto_1

    .line 985
    :cond_5
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v2

    if-ge p2, v2, :cond_6

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v2

    if-le p2, v2, :cond_6

    .line 986
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value is out of date range ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 991
    :cond_6
    :try_start_0
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, p1

    sub-int v2, p2, v2

    invoke-virtual {p0, p1, v2}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported set field:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public set(IIIIIII)Lmiui/date/Calendar;
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "millisecond"    # I

    .prologue
    const/16 v1, 0x3b

    .line 849
    if-ltz p2, :cond_0

    const/16 v0, 0xb

    if-le p2, v0, :cond_1

    .line 850
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_1
    if-lez p3, :cond_2

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v0

    invoke-static {v0, p2}, Lmiui/date/Calendar;->daysInMonth(ZI)I

    move-result v0

    if-le p3, v0, :cond_3

    .line 854
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_3
    if-ltz p4, :cond_4

    const/16 v0, 0x17

    if-le p4, v0, :cond_5

    .line 858
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hour "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_5
    if-ltz p5, :cond_6

    if-le p5, v1, :cond_7

    .line 862
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid minute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_7
    if-ltz p6, :cond_8

    if-le p6, v1, :cond_9

    .line 866
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid second "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :cond_9
    if-ltz p7, :cond_a

    const/16 v0, 0x3e7

    if-le p7, v0, :cond_b

    .line 870
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid millisecond "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_b
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 874
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 875
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x9

    aput p3, v0, v1

    .line 876
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x12

    aput p4, v0, v1

    .line 877
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x14

    aput p5, v0, v1

    .line 878
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x15

    aput p6, v0, v1

    .line 879
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x16

    aput p7, v0, v1

    .line 881
    invoke-direct {p0}, Lmiui/date/Calendar;->onSolarDateChange()V

    .line 882
    return-object p0
.end method

.method public setChineseTime(IIIZIIII)Lmiui/date/Calendar;
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "isLeapMonth"    # Z
    .param p5, "hour"    # I
    .param p6, "minute"    # I
    .param p7, "second"    # I
    .param p8, "millisecond"    # I

    .prologue
    const/16 v1, 0x3b

    .line 898
    const/16 v0, 0x76c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x834

    if-le p1, v0, :cond_1

    .line 899
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date out of range [1900 - 2100] expected, but year is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_1
    if-ltz p2, :cond_2

    const/16 v0, 0xb

    if-le p2, v0, :cond_3

    .line 903
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_3
    if-eqz p4, :cond_4

    invoke-static {p1}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v0

    if-eq v0, p2, :cond_4

    .line 907
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no leap month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_4
    if-eqz p4, :cond_6

    .line 911
    if-lez p3, :cond_5

    invoke-static {p1}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v0

    if-le p3, v0, :cond_8

    .line 912
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_6
    if-lez p3, :cond_7

    invoke-static {p1, p2}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v0

    if-le p3, v0, :cond_8

    .line 916
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_8
    if-ltz p5, :cond_9

    const/16 v0, 0x17

    if-le p5, v0, :cond_a

    .line 921
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hour "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_a
    if-ltz p6, :cond_b

    if-le p6, v1, :cond_c

    .line 925
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid minute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_c
    if-ltz p7, :cond_d

    if-le p7, v1, :cond_e

    .line 929
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid second "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 932
    :cond_e
    if-ltz p8, :cond_f

    const/16 v0, 0x3e8

    if-le p8, v0, :cond_10

    .line 933
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid millisecond "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    :cond_10
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 937
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x6

    aput p2, v0, v1

    .line 938
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0xa

    aput p3, v0, v1

    .line 939
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x8

    if-eqz p4, :cond_11

    const/4 v0, 0x1

    :goto_0
    aput v0, v1, v2

    .line 940
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x12

    aput p5, v0, v1

    .line 941
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x14

    aput p6, v0, v1

    .line 942
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x15

    aput p7, v0, v1

    .line 943
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x16

    aput p8, v0, v1

    .line 945
    invoke-direct {p0}, Lmiui/date/Calendar;->onChineseDateChange()V

    .line 946
    return-object p0

    .line 939
    :cond_11
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGregorianChange(J)V
    .locals 5
    .param p1, "millis"    # J

    .prologue
    const/4 v4, 0x0

    .line 1421
    iput-wide p1, p0, Lmiui/date/Calendar;->gregorianCutover:J

    .line 1422
    new-instance v0, Lmiui/date/Calendar;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 1423
    .local v0, "cal":Lmiui/date/Calendar;
    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 1425
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lmiui/date/Calendar;->changeYear:I

    .line 1426
    invoke-virtual {v0, v4}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1427
    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    rsub-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/date/Calendar;->changeYear:I

    .line 1430
    :cond_0
    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    div-int/lit8 v2, v2, 0x64

    iget v3, p0, Lmiui/date/Calendar;->changeYear:I

    div-int/lit16 v3, v3, 0x190

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lmiui/date/Calendar;->julianError:I

    .line 1432
    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    add-int/lit16 v2, v2, -0x7d0

    div-int/lit16 v2, v2, 0x190

    iget v3, p0, Lmiui/date/Calendar;->julianError:I

    add-int/2addr v2, v3

    iget v3, p0, Lmiui/date/Calendar;->changeYear:I

    add-int/lit16 v3, v3, -0x7d0

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    iput v2, p0, Lmiui/date/Calendar;->julianSkew:I

    .line 1435
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    .line 1436
    .local v1, "dayOfYear":I
    iget v2, p0, Lmiui/date/Calendar;->julianSkew:I

    if-ge v1, v2, :cond_1

    .line 1437
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lmiui/date/Calendar;->currentYearSkew:I

    .line 1438
    iget v2, p0, Lmiui/date/Calendar;->julianSkew:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/date/Calendar;->lastYearSkew:I

    .line 1443
    :goto_0
    return-void

    .line 1440
    :cond_1
    iput v4, p0, Lmiui/date/Calendar;->lastYearSkew:I

    .line 1441
    iget v2, p0, Lmiui/date/Calendar;->julianSkew:I

    iput v2, p0, Lmiui/date/Calendar;->currentYearSkew:I

    goto :goto_0
.end method

.method public setTimeInMillis(J)Lmiui/date/Calendar;
    .locals 1
    .param p1, "millisecond"    # J

    .prologue
    .line 832
    iput-wide p1, p0, Lmiui/date/Calendar;->mMillisecond:J

    .line 833
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    .line 834
    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;
    .locals 2
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 799
    if-nez p1, :cond_0

    .line 800
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .line 803
    :cond_0
    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 804
    :cond_1
    iput-object p1, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    .line 805
    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    .line 807
    :cond_2
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1620
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v3

    invoke-interface {v3}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 1621
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    const-string v3, "[time"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    iget-wide v4, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1624
    const-string v3, ",zone="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    iget-object v3, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x19

    if-ge v1, v3, :cond_0

    .line 1628
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1629
    sget-object v3, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1631
    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1627
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1633
    :cond_0
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1634
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1635
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v3

    invoke-interface {v3, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 1636
    return-object v2
.end method
