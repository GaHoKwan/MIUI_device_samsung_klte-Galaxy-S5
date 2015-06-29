.class public Lmiui/date/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


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

.field public static final FORMAT_12HOUR:I = 0x10

.field public static final FORMAT_24HOUR:I = 0x20

.field public static final FORMAT_ABBREV_ALL:I = 0x7000

.field public static final FORMAT_ABBREV_MONTH:I = 0x1000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x2000

.field public static final FORMAT_NO_AM_PM:I = 0x40

.field public static final FORMAT_NUMERIC_DATE:I = 0x8000

.field public static final FORMAT_SHOW_BRIEF_TIME:I = 0xc

.field public static final FORMAT_SHOW_DATE:I = 0x380

.field public static final FORMAT_SHOW_HOUR:I = 0x8

.field public static final FORMAT_SHOW_MILLISECOND:I = 0x1

.field public static final FORMAT_SHOW_MINUTE:I = 0x4

.field public static final FORMAT_SHOW_MONTH:I = 0x100

.field public static final FORMAT_SHOW_MONTH_DAY:I = 0x80

.field public static final FORMAT_SHOW_SECOND:I = 0x2

.field public static final FORMAT_SHOW_TIME:I = 0xf

.field public static final FORMAT_SHOW_TIME_ZONE:I = 0x800

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x400

.field public static final FORMAT_SHOW_YEAR:I = 0x200


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lmiui/date/DateUtils$1;

    invoke-direct {v0}, Lmiui/date/DateUtils$1;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v0

    sput-object v0, Lmiui/date/DateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatDateTime(JI)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J
    .param p2, "flags"    # I

    .prologue
    .line 259
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 260
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-static {v0, p0, p1, p2, v2}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 262
    return-object v1
.end method

.method public static formatDateTime(JILjava/util/TimeZone;)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J
    .param p2, "flags"    # I
    .param p3, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 295
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 296
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2, p3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 298
    return-object v1
.end method

.method public static formatDateTime(Ljava/lang/StringBuilder;JI)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J
    .param p3, "flags"    # I

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;
    .locals 9
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J
    .param p3, "flags"    # I
    .param p4, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 365
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v2

    .line 367
    .local v2, "context":Landroid/content/Context;
    and-int/lit8 v7, p3, 0x10

    if-nez v7, :cond_0

    and-int/lit8 v7, p3, 0x20

    if-nez v7, :cond_0

    .line 368
    invoke-static {}, Lmiui/date/DateUtils;->is24HourFormat()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x20

    :goto_0
    or-int/2addr p3, v7

    .line 371
    :cond_0
    invoke-static {p3}, Lmiui/date/DateUtils;->getFormatResId(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "fmt":Ljava/lang/String;
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v7

    invoke-interface {v7}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    .line 375
    .local v5, "patternBuilder":Ljava/lang/StringBuilder;
    sget-object v7, Lmiui/date/DateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v7}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/date/Calendar;

    .line 376
    .local v1, "cal":Lmiui/date/Calendar;
    invoke-virtual {v1, p4}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    .line 377
    invoke-virtual {v1, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 379
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "s":I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 380
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 381
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 392
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 368
    .end local v0    # "c":C
    .end local v1    # "cal":Lmiui/date/Calendar;
    .end local v3    # "fmt":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "patternBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "s":I
    :cond_1
    const/16 v7, 0x10

    goto :goto_0

    .line 383
    .restart local v0    # "c":C
    .restart local v1    # "cal":Lmiui/date/Calendar;
    .restart local v3    # "fmt":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "patternBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "s":I
    :sswitch_0
    invoke-static {p3}, Lmiui/date/DateUtils;->getWeekdayPatternResId(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 386
    :sswitch_1
    invoke-static {p3}, Lmiui/date/DateUtils;->getDatePatternResId(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 389
    :sswitch_2
    invoke-static {v1, p3}, Lmiui/date/DateUtils;->getTimePatternResId(Lmiui/date/Calendar;I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 396
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v1, p0, v5}, Lmiui/date/Calendar;->format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 397
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v7

    invoke-interface {v7, v5}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 398
    sget-object v7, Lmiui/date/DateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v7, v1}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 399
    return-object p0

    .line 381
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x54 -> :sswitch_2
        0x57 -> :sswitch_0
    .end sparse-switch
.end method

.method public static formatRelativeTime(JZ)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J
    .param p2, "showTime"    # Z

    .prologue
    .line 655
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 656
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-static {v0, p0, p1, p2, v2}, Lmiui/date/DateUtils;->formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 658
    return-object v1
.end method

.method public static formatRelativeTime(JZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J
    .param p2, "showTime"    # Z
    .param p3, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 669
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 670
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2, p3}, Lmiui/date/DateUtils;->formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 672
    return-object v1
.end method

.method public static formatRelativeTime(Ljava/lang/StringBuilder;JZ)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J
    .param p3, "showTime"    # Z

    .prologue
    .line 683
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/date/DateUtils;->formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;
    .locals 23
    .param p0, "result"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J
    .param p3, "showTime"    # Z
    .param p4, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 696
    .local v10, "now":J
    cmp-long v18, v10, p1

    if-ltz v18, :cond_0

    const/4 v15, 0x1

    .line 697
    .local v15, "past":Z
    :goto_0
    sub-long v18, v10, p1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    const-wide/32 v20, 0xea60

    div-long v6, v18, v20

    .line 699
    .local v6, "duration":J
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v5

    .line 700
    .local v5, "context":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 702
    .local v17, "resources":Landroid/content/res/Resources;
    const/16 v8, 0x3000

    .line 704
    .local v8, "flags":I
    const-wide/16 v18, 0x3c

    cmp-long v18, v6, v18

    if-gtz v18, :cond_8

    if-nez p3, :cond_8

    .line 706
    if-eqz v15, :cond_4

    .line 707
    const-wide/16 v18, 0x3c

    cmp-long v18, v6, v18

    if-nez v18, :cond_1

    .line 709
    sget v16, Lcom/miui/internal/R$plurals;->abbrev_a_hour_ago:I

    .line 733
    .local v16, "resId":I
    :goto_1
    long-to-int v0, v6

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v9

    .line 734
    .local v9, "format":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .end local v9    # "format":Ljava/lang/String;
    .end local v16    # "resId":I
    :goto_2
    return-object p0

    .line 696
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "duration":J
    .end local v8    # "flags":I
    .end local v15    # "past":Z
    .end local v17    # "resources":Landroid/content/res/Resources;
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 710
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v6    # "duration":J
    .restart local v8    # "flags":I
    .restart local v15    # "past":Z
    .restart local v17    # "resources":Landroid/content/res/Resources;
    :cond_1
    const-wide/16 v18, 0x1e

    cmp-long v18, v6, v18

    if-nez v18, :cond_2

    .line 712
    sget v16, Lcom/miui/internal/R$plurals;->abbrev_half_hour_ago:I

    .restart local v16    # "resId":I
    goto :goto_1

    .line 713
    .end local v16    # "resId":I
    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_3

    .line 715
    sget v16, Lcom/miui/internal/R$plurals;->abbrev_less_than_one_minute_ago:I

    .restart local v16    # "resId":I
    goto :goto_1

    .line 717
    .end local v16    # "resId":I
    :cond_3
    sget v16, Lcom/miui/internal/R$plurals;->abbrev_num_minutes_ago:I

    .restart local v16    # "resId":I
    goto :goto_1

    .line 720
    .end local v16    # "resId":I
    :cond_4
    const-wide/16 v18, 0x3c

    cmp-long v18, v6, v18

    if-nez v18, :cond_5

    .line 722
    sget v16, Lcom/miui/internal/R$plurals;->abbrev_in_a_hour:I

    .restart local v16    # "resId":I
    goto :goto_1

    .line 723
    .end local v16    # "resId":I
    :cond_5
    const-wide/16 v18, 0x1e

    cmp-long v18, v6, v18

    if-nez v18, :cond_6

    .line 725
    sget v16, Lcom/miui/internal/R$plurals;->abbrev_in_half_hour:I

    .restart local v16    # "resId":I
    goto :goto_1

    .line 726
    .end local v16    # "resId":I
    :cond_6
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_7

    .line 728
    sget v16, Lcom/miui/internal/R$plurals;->abbrev_in_less_than_one_minute:I

    .restart local v16    # "resId":I
    goto :goto_1

    .line 730
    .end local v16    # "resId":I
    :cond_7
    sget v16, Lcom/miui/internal/R$plurals;->abbrev_in_num_minutes:I

    .restart local v16    # "resId":I
    goto :goto_1

    .line 736
    .end local v16    # "resId":I
    :cond_8
    sget-object v18, Lmiui/date/DateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface/range {v18 .. v18}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/date/Calendar;

    .line 737
    .local v4, "cal":Lmiui/date/Calendar;
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    .line 738
    invoke-virtual {v4, v10, v11}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 739
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v14

    .line 740
    .local v14, "nowYear":I
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v13

    .line 741
    .local v13, "nowDayOfYear":I
    const/16 v18, 0xe

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v12

    .line 742
    .local v12, "nowDayOfWeek":I
    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    .line 743
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    if-ne v14, v0, :cond_9

    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    if-ne v13, v0, :cond_9

    .line 744
    or-int/lit8 v8, v8, 0xc

    .line 745
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v8, v3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    .line 761
    :goto_3
    sget-object v18, Lmiui/date/DateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 746
    :cond_9
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    if-ne v14, v0, :cond_b

    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v18

    sub-int v18, v13, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 747
    if-eqz v15, :cond_a

    sget v18, Lcom/miui/internal/R$string;->yesterday:I

    :goto_4
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    const/16 v18, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 749
    or-int/lit8 v8, v8, 0xc

    .line 750
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v8, v3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 747
    :cond_a
    sget v18, Lcom/miui/internal/R$string;->tomorrow:I

    goto :goto_4

    .line 751
    :cond_b
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v18

    sub-int v18, v13, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    const/16 v18, 0xe

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    if-le v12, v0, :cond_c

    const/16 v18, 0x1

    :goto_5
    move/from16 v0, v18

    if-ne v15, v0, :cond_d

    .line 752
    or-int/lit16 v8, v8, 0x40c

    .line 753
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v8, v3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 751
    :cond_c
    const/16 v18, 0x0

    goto :goto_5

    .line 754
    :cond_d
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    if-ne v14, v0, :cond_f

    .line 755
    if-eqz p3, :cond_e

    const/16 v18, 0x18c

    :goto_6
    or-int v8, v8, v18

    .line 756
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v8, v3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 755
    :cond_e
    const/16 v18, 0x180

    goto :goto_6

    .line 758
    :cond_f
    if-eqz p3, :cond_10

    const/16 v18, 0x38c

    :goto_7
    or-int v8, v8, v18

    .line 759
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v8, v3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 758
    :cond_10
    const/16 v18, 0x380

    goto :goto_7
.end method

.method private static getDatePatternResId(I)I
    .locals 6
    .param p0, "flags"    # I

    .prologue
    const v2, 0x8000

    const/16 v5, 0x200

    const/16 v4, 0x100

    const/16 v3, 0x80

    .line 513
    and-int v1, p0, v2

    if-ne v1, v2, :cond_6

    .line 514
    and-int/lit16 v1, p0, 0x200

    if-ne v1, v5, :cond_2

    .line 515
    and-int/lit16 v1, p0, 0x100

    if-ne v1, v4, :cond_1

    .line 516
    and-int/lit16 v1, p0, 0x80

    if-ne v1, v3, :cond_0

    .line 517
    sget v0, Lcom/miui/internal/R$string;->fmt_date_numeric_year_month_day:I

    .line 592
    .local v0, "resId":I
    :goto_0
    return v0

    .line 519
    .end local v0    # "resId":I
    :cond_0
    sget v0, Lcom/miui/internal/R$string;->fmt_date_numeric_year_month:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 522
    .end local v0    # "resId":I
    :cond_1
    sget v0, Lcom/miui/internal/R$string;->fmt_date_numeric_year:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 525
    .end local v0    # "resId":I
    :cond_2
    and-int/lit16 v1, p0, 0x100

    if-ne v1, v4, :cond_4

    .line 526
    and-int/lit16 v1, p0, 0x80

    if-ne v1, v3, :cond_3

    .line 527
    sget v0, Lcom/miui/internal/R$string;->fmt_date_numeric_month_day:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 529
    .end local v0    # "resId":I
    :cond_3
    sget v0, Lcom/miui/internal/R$string;->fmt_date_numeric_month:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 532
    .end local v0    # "resId":I
    :cond_4
    and-int/lit16 v1, p0, 0x80

    if-ne v1, v3, :cond_5

    .line 533
    sget v0, Lcom/miui/internal/R$string;->fmt_date_numeric_day:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 535
    .end local v0    # "resId":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no any time date"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    :cond_6
    and-int/lit16 v1, p0, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 540
    and-int/lit16 v1, p0, 0x200

    if-ne v1, v5, :cond_9

    .line 541
    and-int/lit16 v1, p0, 0x100

    if-ne v1, v4, :cond_8

    .line 542
    and-int/lit16 v1, p0, 0x80

    if-ne v1, v3, :cond_7

    .line 543
    sget v0, Lcom/miui/internal/R$string;->fmt_date_short_year_month_day:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 545
    .end local v0    # "resId":I
    :cond_7
    sget v0, Lcom/miui/internal/R$string;->fmt_date_short_year_month:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 548
    .end local v0    # "resId":I
    :cond_8
    sget v0, Lcom/miui/internal/R$string;->fmt_date_year:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 551
    .end local v0    # "resId":I
    :cond_9
    and-int/lit16 v1, p0, 0x100

    if-ne v1, v4, :cond_b

    .line 552
    and-int/lit16 v1, p0, 0x80

    if-ne v1, v3, :cond_a

    .line 553
    sget v0, Lcom/miui/internal/R$string;->fmt_date_short_month_day:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 555
    .end local v0    # "resId":I
    :cond_a
    sget v0, Lcom/miui/internal/R$string;->fmt_date_short_month:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 558
    .end local v0    # "resId":I
    :cond_b
    and-int/lit16 v1, p0, 0x80

    if-ne v1, v3, :cond_c

    .line 559
    sget v0, Lcom/miui/internal/R$string;->fmt_date_day:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 561
    .end local v0    # "resId":I
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no any time date"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 566
    :cond_d
    and-int/lit16 v1, p0, 0x200

    if-ne v1, v5, :cond_10

    .line 567
    and-int/lit16 v1, p0, 0x100

    if-ne v1, v4, :cond_f

    .line 568
    and-int/lit16 v1, p0, 0x80

    if-ne v1, v3, :cond_e

    .line 569
    sget v0, Lcom/miui/internal/R$string;->fmt_date_long_year_month_day:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 571
    .end local v0    # "resId":I
    :cond_e
    sget v0, Lcom/miui/internal/R$string;->fmt_date_long_year_month:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 574
    .end local v0    # "resId":I
    :cond_f
    sget v0, Lcom/miui/internal/R$string;->fmt_date_year:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 577
    .end local v0    # "resId":I
    :cond_10
    and-int/lit16 v1, p0, 0x100

    if-ne v1, v4, :cond_12

    .line 578
    and-int/lit16 v1, p0, 0x80

    if-ne v1, v3, :cond_11

    .line 579
    sget v0, Lcom/miui/internal/R$string;->fmt_date_long_month_day:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 581
    .end local v0    # "resId":I
    :cond_11
    sget v0, Lcom/miui/internal/R$string;->fmt_date_long_month:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 584
    .end local v0    # "resId":I
    :cond_12
    and-int/lit16 v1, p0, 0x80

    if-ne v1, v3, :cond_13

    .line 585
    sget v0, Lcom/miui/internal/R$string;->fmt_date_day:I

    .restart local v0    # "resId":I
    goto/16 :goto_0

    .line 587
    .end local v0    # "resId":I
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no any time date"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getFormatResId(I)I
    .locals 4
    .param p0, "flags"    # I

    .prologue
    const/16 v3, 0x800

    .line 616
    and-int/lit16 v1, p0, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_7

    .line 617
    and-int/lit16 v1, p0, 0x380

    if-eqz v1, :cond_3

    .line 618
    and-int/lit8 v1, p0, 0xf

    if-eqz v1, :cond_1

    .line 619
    and-int/lit16 v1, p0, 0x800

    if-ne v1, v3, :cond_0

    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_date_time_timezone:I

    .line 645
    .local v0, "resId":I
    :goto_0
    return v0

    .line 619
    .end local v0    # "resId":I
    :cond_0
    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_date_time:I

    goto :goto_0

    .line 621
    :cond_1
    and-int/lit16 v1, p0, 0x800

    if-ne v1, v3, :cond_2

    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_date_timezone:I

    .restart local v0    # "resId":I
    :goto_1
    goto :goto_0

    .end local v0    # "resId":I
    :cond_2
    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_date:I

    goto :goto_1

    .line 624
    :cond_3
    and-int/lit8 v1, p0, 0xf

    if-eqz v1, :cond_5

    .line 625
    and-int/lit16 v1, p0, 0x800

    if-ne v1, v3, :cond_4

    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_time_timezone:I

    .restart local v0    # "resId":I
    :goto_2
    goto :goto_0

    .end local v0    # "resId":I
    :cond_4
    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_time:I

    goto :goto_2

    .line 627
    :cond_5
    and-int/lit16 v1, p0, 0x800

    if-ne v1, v3, :cond_6

    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_timezone:I

    .restart local v0    # "resId":I
    :goto_3
    goto :goto_0

    .end local v0    # "resId":I
    :cond_6
    sget v0, Lcom/miui/internal/R$string;->fmt_weekday:I

    goto :goto_3

    .line 631
    :cond_7
    and-int/lit16 v1, p0, 0x380

    if-eqz v1, :cond_b

    .line 632
    and-int/lit8 v1, p0, 0xf

    if-eqz v1, :cond_9

    .line 633
    and-int/lit16 v1, p0, 0x800

    if-ne v1, v3, :cond_8

    sget v0, Lcom/miui/internal/R$string;->fmt_date_time_timezone:I

    .restart local v0    # "resId":I
    :goto_4
    goto :goto_0

    .end local v0    # "resId":I
    :cond_8
    sget v0, Lcom/miui/internal/R$string;->fmt_date_time:I

    goto :goto_4

    .line 635
    :cond_9
    and-int/lit16 v1, p0, 0x800

    if-ne v1, v3, :cond_a

    sget v0, Lcom/miui/internal/R$string;->fmt_date_timezone:I

    .restart local v0    # "resId":I
    :goto_5
    goto :goto_0

    .end local v0    # "resId":I
    :cond_a
    sget v0, Lcom/miui/internal/R$string;->fmt_date:I

    goto :goto_5

    .line 638
    :cond_b
    and-int/lit8 v1, p0, 0xf

    if-eqz v1, :cond_d

    .line 639
    and-int/lit16 v1, p0, 0x800

    if-ne v1, v3, :cond_c

    sget v0, Lcom/miui/internal/R$string;->fmt_time_timezone:I

    .restart local v0    # "resId":I
    :goto_6
    goto :goto_0

    .end local v0    # "resId":I
    :cond_c
    sget v0, Lcom/miui/internal/R$string;->fmt_time:I

    goto :goto_6

    .line 641
    :cond_d
    and-int/lit16 v1, p0, 0x800

    if-ne v1, v3, :cond_e

    sget v0, Lcom/miui/internal/R$string;->fmt_timezone:I

    .restart local v0    # "resId":I
    :goto_7
    goto :goto_0

    .end local v0    # "resId":I
    :cond_e
    sget v0, Lcom/miui/internal/R$string;->empty:I

    goto :goto_7
.end method

.method private static getTimePatternResId(Lmiui/date/Calendar;I)I
    .locals 6
    .param p0, "cal"    # Lmiui/date/Calendar;
    .param p1, "flags"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 413
    and-int/lit16 v1, p1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_2

    .line 414
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v3, :cond_0

    const/16 v1, 0x16

    invoke-virtual {p0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    and-int/lit8 v1, p1, 0xe

    if-eqz v1, :cond_2

    .line 416
    and-int/lit8 p1, p1, -0x2

    .line 417
    and-int/lit8 v1, p1, 0x2

    if-ne v1, v4, :cond_1

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    and-int/lit8 v1, p1, 0xc

    if-eqz v1, :cond_2

    .line 419
    and-int/lit8 p1, p1, -0x3

    .line 420
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_2

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_2

    .line 421
    and-int/lit8 p1, p1, -0x5

    .line 428
    :cond_2
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_e

    .line 429
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_a

    .line 430
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 431
    and-int/lit8 v1, p1, 0x4

    if-ne v1, v5, :cond_5

    .line 432
    and-int/lit8 v1, p1, 0x2

    if-ne v1, v4, :cond_4

    .line 433
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v3, :cond_3

    .line 434
    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second_millis:I

    .line 502
    .local v0, "resId":I
    :goto_0
    return v0

    .line 436
    .end local v0    # "resId":I
    :cond_3
    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 439
    .end local v0    # "resId":I
    :cond_4
    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 442
    .end local v0    # "resId":I
    :cond_5
    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 445
    .end local v0    # "resId":I
    :cond_6
    and-int/lit8 v1, p1, 0x4

    if-ne v1, v5, :cond_9

    .line 446
    and-int/lit8 v1, p1, 0x2

    if-ne v1, v4, :cond_8

    .line 447
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v3, :cond_7

    .line 448
    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second_millis_pm:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 450
    .end local v0    # "resId":I
    :cond_7
    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second_pm:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 453
    .end local v0    # "resId":I
    :cond_8
    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_pm:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 456
    .end local v0    # "resId":I
    :cond_9
    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour_pm:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 460
    .end local v0    # "resId":I
    :cond_a
    and-int/lit8 v1, p1, 0x4

    if-ne v1, v5, :cond_d

    .line 461
    and-int/lit8 v1, p1, 0x2

    if-ne v1, v4, :cond_c

    .line 462
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v3, :cond_b

    .line 463
    sget v0, Lcom/miui/internal/R$string;->fmt_time_24hour_minute_second_millis:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 465
    .end local v0    # "resId":I
    :cond_b
    sget v0, Lcom/miui/internal/R$string;->fmt_time_24hour_minute_second:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 468
    .end local v0    # "resId":I
    :cond_c
    sget v0, Lcom/miui/internal/R$string;->fmt_time_24hour_minute:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 471
    .end local v0    # "resId":I
    :cond_d
    sget v0, Lcom/miui/internal/R$string;->fmt_time_24hour:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 475
    .end local v0    # "resId":I
    :cond_e
    and-int/lit8 v1, p1, 0x4

    if-ne v1, v5, :cond_11

    .line 476
    and-int/lit8 v1, p1, 0x2

    if-ne v1, v4, :cond_10

    .line 477
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v3, :cond_f

    .line 478
    sget v0, Lcom/miui/internal/R$string;->fmt_time_minute_second_millis:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 480
    .end local v0    # "resId":I
    :cond_f
    sget v0, Lcom/miui/internal/R$string;->fmt_time_minute_second:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 483
    .end local v0    # "resId":I
    :cond_10
    sget v0, Lcom/miui/internal/R$string;->fmt_time_minute:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 486
    .end local v0    # "resId":I
    :cond_11
    and-int/lit8 v1, p1, 0x2

    if-ne v1, v4, :cond_13

    .line 487
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v3, :cond_12

    .line 488
    sget v0, Lcom/miui/internal/R$string;->fmt_time_second_millis:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 490
    .end local v0    # "resId":I
    :cond_12
    sget v0, Lcom/miui/internal/R$string;->fmt_time_second:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 493
    .end local v0    # "resId":I
    :cond_13
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v3, :cond_14

    .line 494
    sget v0, Lcom/miui/internal/R$string;->fmt_time_millis:I

    .restart local v0    # "resId":I
    goto :goto_0

    .line 496
    .end local v0    # "resId":I
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no any time date"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getWeekdayPatternResId(I)I
    .locals 2
    .param p0, "flags"    # I

    .prologue
    .line 597
    and-int/lit16 v0, p0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_short:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_long:I

    goto :goto_0
.end method

.method public static is24HourFormat()Z
    .locals 3

    .prologue
    .line 226
    const-string v0, "24"

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
