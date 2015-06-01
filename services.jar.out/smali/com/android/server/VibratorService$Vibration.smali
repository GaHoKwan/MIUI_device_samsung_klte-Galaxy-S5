.class Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mPattern:[J

.field private final mRepeat:I

.field private final mStartTime:J

.field private final mTimeout:J

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JILjava/lang/String;)V
    .locals 9
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "millis"    # J
    .param p5, "uid"    # I
    .param p6, "packageName"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIILjava/lang/String;)V

    .line 98
    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIILjava/lang/String;)V
    .locals 2
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "millis"    # J
    .param p5, "pattern"    # [J
    .param p6, "repeat"    # I
    .param p7, "uid"    # I
    .param p8, "packageName"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    .line 107
    iput-wide p3, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    .line 109
    iput-object p5, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    .line 110
    iput p6, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    .line 111
    iput p7, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    .line 112
    iput-object p8, p0, Lcom/android/server/VibratorService$Vibration;->mPackageName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIILjava/lang/String;)V
    .locals 9
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "uid"    # I
    .param p6, "packageName"    # Ljava/lang/String;

    .prologue
    .line 101
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;J[JIILjava/lang/String;)V

    .line 102
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mRepeat:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/VibratorService$Vibration;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/VibratorService$Vibration;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mPattern:[J

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 122
    :cond_0
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasLongerTimeout(J)Z
    .locals 5
    .param p1, "millis"    # J

    .prologue
    const/4 v0, 0x0

    .line 126
    iget-wide v1, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    iget-wide v1, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    iget-wide v3, p0, Lcom/android/server/VibratorService$Vibration;->mTimeout:J

    add-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 137
    const/4 v0, 0x1

    goto :goto_0
.end method
