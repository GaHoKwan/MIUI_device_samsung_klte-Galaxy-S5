.class Lmiui/util/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    new-array v0, v1, [I

    sput-object v0, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    .line 9
    new-array v0, v1, [J

    sput-object v0, Lmiui/util/ContainerHelpers;->EMPTY_LONGS:[J

    .line 10
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static binarySearch([III)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 45
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 46
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 47
    .local v2, "mid":I
    aget v3, p0, v2

    .line 49
    .local v3, "midVal":I
    if-ge v3, p2, :cond_0

    .line 50
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    if-le v3, p2, :cond_2

    .line 52
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 57
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method static binarySearch([JIJ)I
    .locals 6
    .param p0, "array"    # [J
    .param p1, "size"    # I
    .param p2, "value"    # J

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 64
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 65
    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    .line 66
    .local v2, "mid":I
    aget-wide v4, p0, v2

    .line 68
    .local v4, "midVal":J
    cmp-long v3, v4, p2

    if-gez v3, :cond_0

    .line 69
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    cmp-long v3, v4, p2

    if-lez v3, :cond_2

    .line 71
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 76
    .end local v2    # "mid":I
    .end local v4    # "midVal":J
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 37
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static idealByteArraySize(I)I
    .locals 3
    .param p0, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 29
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 30
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 31
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 33
    .end local p0    # "need":I
    :cond_0
    return p0

    .line 29
    .restart local p0    # "need":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 21
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lmiui/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealLongArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 25
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Lmiui/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
