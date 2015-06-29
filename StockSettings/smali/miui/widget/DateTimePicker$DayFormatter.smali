.class public Lmiui/widget/DateTimePicker$DayFormatter;
.super Ljava/lang/Object;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DayFormatter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatDay(III)Ljava/lang/String;
    .locals 6
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 446
    # getter for: Lmiui/widget/DateTimePicker;->sCalendarCache:Ljava/lang/ThreadLocal;
    invoke-static {}, Lmiui/widget/DateTimePicker;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    .line 447
    .local v0, "c":Lmiui/date/Calendar;
    if-nez v0, :cond_0

    .line 448
    new-instance v0, Lmiui/date/Calendar;

    .end local v0    # "c":Lmiui/date/Calendar;
    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    .line 449
    .restart local v0    # "c":Lmiui/date/Calendar;
    # getter for: Lmiui/widget/DateTimePicker;->sCalendarCache:Ljava/lang/ThreadLocal;
    invoke-static {}, Lmiui/widget/DateTimePicker;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 451
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 452
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p2}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 453
    const/16 v3, 0x9

    invoke-virtual {v0, v3, p3}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    .line 454
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 455
    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x1180

    invoke-static {v4, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "dayText":Ljava/lang/String;
    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x2400

    invoke-static {v4, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "weekText":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 462
    .end local v1    # "dayText":Ljava/lang/String;
    .end local v2    # "weekText":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x3580

    invoke-static {v4, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
