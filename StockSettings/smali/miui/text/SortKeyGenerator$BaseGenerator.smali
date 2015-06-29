.class Lmiui/text/SortKeyGenerator$BaseGenerator;
.super Ljava/lang/Object;
.source "SortKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/text/SortKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseGenerator"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/text/SortKeyGenerator;


# direct methods
.method private constructor <init>(Lmiui/text/SortKeyGenerator;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lmiui/text/SortKeyGenerator$BaseGenerator;->this$0:Lmiui/text/SortKeyGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/SortKeyGenerator;Lmiui/text/SortKeyGenerator$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/text/SortKeyGenerator;
    .param p2, "x1"    # Lmiui/text/SortKeyGenerator$1;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lmiui/text/SortKeyGenerator$BaseGenerator;-><init>(Lmiui/text/SortKeyGenerator;)V

    return-void
.end method


# virtual methods
.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 64
    return-object p1
.end method
