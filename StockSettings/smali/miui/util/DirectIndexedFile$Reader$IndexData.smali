.class Lmiui/util/DirectIndexedFile$Reader$IndexData;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexData"
.end annotation


# instance fields
.field private mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

.field private mDataItems:[[Ljava/lang/Object;

.field private mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

.field private mSizeOfItems:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/util/DirectIndexedFile$1;

    .prologue
    .line 835
    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Reader$IndexData;

    .prologue
    .line 835
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object v0
.end method

.method static synthetic access$1002(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$DataItemDescriptor;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 0
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Reader$IndexData;
    .param p1, "x1"    # [Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    .prologue
    .line 835
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItemDescriptions:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object p1
.end method

.method static synthetic access$1300(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Reader$IndexData;

    .prologue
    .line 835
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lmiui/util/DirectIndexedFile$Reader$IndexData;[[Ljava/lang/Object;)[[Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Reader$IndexData;
    .param p1, "x1"    # [[Ljava/lang/Object;

    .prologue
    .line 835
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mDataItems:[[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Reader$IndexData;

    .prologue
    .line 835
    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object v0
.end method

.method static synthetic access$602(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 0
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Reader$IndexData;
    .param p1, "x1"    # [Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    .prologue
    .line 835
    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DirectIndexedFile$IndexGroupDescriptor;

    return-object p1
.end method

.method static synthetic access$900(Lmiui/util/DirectIndexedFile$Reader$IndexData;)I
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Reader$IndexData;

    .prologue
    .line 835
    iget v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    return v0
.end method

.method static synthetic access$902(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Reader$IndexData;
    .param p1, "x1"    # I

    .prologue
    .line 835
    iput p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    return p1
.end method

.method static synthetic access$912(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I
    .locals 1
    .param p0, "x0"    # Lmiui/util/DirectIndexedFile$Reader$IndexData;
    .param p1, "x1"    # I

    .prologue
    .line 835
    iget v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->mSizeOfItems:I

    return v0
.end method
