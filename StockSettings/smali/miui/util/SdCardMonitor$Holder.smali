.class Lmiui/util/SdCardMonitor$Holder;
.super Ljava/lang/Object;
.source "SdCardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SdCardMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lmiui/util/SdCardMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lmiui/util/SdCardMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/util/SdCardMonitor;-><init>(Lmiui/util/SdCardMonitor$1;)V

    sput-object v0, Lmiui/util/SdCardMonitor$Holder;->INSTANCE:Lmiui/util/SdCardMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lmiui/util/SdCardMonitor;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lmiui/util/SdCardMonitor$Holder;->INSTANCE:Lmiui/util/SdCardMonitor;

    return-object v0
.end method
