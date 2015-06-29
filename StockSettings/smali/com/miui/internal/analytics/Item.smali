.class public Lcom/miui/internal/analytics/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field private mIdRegEx:Ljava/util/regex/Pattern;

.field private mPolicy:Ljava/lang/String;

.field private mProbability:J

.field private mRandom:Ljava/util/Random;

.field private mVersionRegEx:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "idRegEx"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;
    .param p3, "versionRegEx"    # Ljava/lang/String;
    .param p4, "probability"    # J

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/analytics/Item;->mRandom:Ljava/util/Random;

    .line 21
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Item;->mIdRegEx:Ljava/util/regex/Pattern;

    .line 22
    iput-object p2, p0, Lcom/miui/internal/analytics/Item;->mPolicy:Ljava/lang/String;

    .line 23
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/analytics/Item;->mVersionRegEx:Ljava/util/regex/Pattern;

    .line 24
    iput-wide p4, p0, Lcom/miui/internal/analytics/Item;->mProbability:J

    .line 25
    return-void
.end method


# virtual methods
.method public getPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/internal/analytics/Item;->mPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public idMatches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/internal/analytics/Item;->mIdRegEx:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public isDispatch(Ljava/lang/String;)Z
    .locals 4
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/miui/internal/analytics/Item;->mProbability:J

    iget-object v2, p0, Lcom/miui/internal/analytics/Item;->mRandom:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/analytics/Item;->mVersionRegEx:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
