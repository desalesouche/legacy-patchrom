.class public Landroid/database/CursorWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStartPos:I

.field private nWindow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 490
    new-instance v0, Landroid/database/CursorWindow$1;

    invoke-direct {v0}, Landroid/database/CursorWindow$1;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 514
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 516
    .local v0, nativeBinder:Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 518
    invoke-direct {p0, v0}, Landroid/database/CursorWindow;->native_init(Landroid/os/IBinder;)V

    .line 519
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/database/CursorWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "localWindow"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 41
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;->native_init(Z)V

    .line 42
    return-void
.end method

.method private native allocRow_native()Z
.end method

.method private native close_native()V
.end method

.method private native copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C
.end method

.method private native freeLastRow_native()V
.end method

.method private native getBlob_native(II)[B
.end method

.method private native getDouble_native(II)D
.end method

.method private native getLong_native(II)J
.end method

.method private native getNumRows_native()I
.end method

.method private native getString_native(II)Ljava/lang/String;
.end method

.method private native isBlob_native(II)Z
.end method

.method private native isFloat_native(II)Z
.end method

.method private native isInteger_native(II)Z
.end method

.method private native isNull_native(II)Z
.end method

.method private native isString_native(II)Z
.end method

.method private native native_clear()V
.end method

.method private native native_getBinder()Landroid/os/IBinder;
.end method

.method private native native_init(Landroid/os/IBinder;)V
.end method

.method private native native_init(Z)V
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .locals 1
    .parameter "p"

    .prologue
    .line 502
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/CursorWindow;

    return-object p0
.end method

.method private native putBlob_native([BII)Z
.end method

.method private native putDouble_native(DII)Z
.end method

.method private native putLong_native(JII)Z
.end method

.method private native putNull_native(II)Z
.end method

.method private native putString_native(Ljava/lang/String;II)Z
.end method

.method private native setNumColumns_native(I)Z
.end method


# virtual methods
.method public allocRow()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 101
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorWindow;->allocRow_native()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 103
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 465
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 466
    invoke-direct {p0}, Landroid/database/CursorWindow;->native_clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 470
    return-void

    .line 468
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 479
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 480
    return-void
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 3
    .parameter "row"
    .parameter "col"
    .parameter "buffer"

    .prologue
    .line 348
    if-nez p3, :cond_0

    .line 349
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CharArrayBuffer should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_0
    iget-object v1, p3, Landroid/database/CharArrayBuffer;->data:[C

    if-nez v1, :cond_1

    .line 352
    const/16 v1, 0x40

    new-array v1, v1, [C

    iput-object v1, p3, Landroid/database/CharArrayBuffer;->data:[C

    .line 354
    :cond_1
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 356
    :try_start_0
    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    iget-object v2, p3, Landroid/database/CharArrayBuffer;->data:[C

    array-length v2, v2

    invoke-direct {p0, v1, p2, v2, p3}, Landroid/database/CursorWindow;->copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C

    move-result-object v0

    .line 358
    .local v0, newbuf:[C
    if-eqz v0, :cond_2

    .line 359
    iput-object v0, p3, Landroid/database/CharArrayBuffer;->data:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :cond_2
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 364
    return-void

    .line 362
    .end local v0           #newbuf:[C
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Landroid/database/CursorWindow;->close_native()V

    .line 488
    return-void
.end method

.method public freeLastRow()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 115
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorWindow;->freeLastRow_native()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 242
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getBlob_native(II)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getDouble(II)D
    .locals 2
    .parameter "row"
    .parameter "col"

    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 399
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getDouble_native(II)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 401
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getFloat(II)F
    .locals 2
    .parameter "row"
    .parameter "col"

    .prologue
    .line 449
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 451
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getDouble_native(II)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    double-to-float v0, v0

    .line 453
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getInt(II)I
    .locals 2
    .parameter "row"
    .parameter "col"

    .prologue
    .line 432
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 434
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    .line 436
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getLong(II)J
    .locals 2
    .parameter "row"
    .parameter "col"

    .prologue
    .line 378
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 380
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 382
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 71
    :try_start_0
    invoke-direct {p0}, Landroid/database/CursorWindow;->getNumRows_native()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 73
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getShort(II)S
    .locals 2
    .parameter "row"
    .parameter "col"

    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 418
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getLong_native(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 420
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 329
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->getString_native(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isBlob(II)Z
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 260
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->isBlob_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 262
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isFloat(II)Z
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 292
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->isFloat_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 294
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isLong(II)Z
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 276
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->isInteger_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 278
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isNull(II)Z
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 224
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->isNull_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 226
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isString(II)Z
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 306
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 308
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->isString_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 310
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Landroid/database/CursorWindow;->close_native()V

    .line 533
    return-void
.end method

.method public putBlob([BII)Z
    .locals 1
    .parameter "value"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 133
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Landroid/database/CursorWindow;->putBlob_native([BII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 135
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putDouble(DII)Z
    .locals 1
    .parameter "value"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 188
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p3, v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/database/CursorWindow;->putDouble_native(DII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 190
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putLong(JII)Z
    .locals 1
    .parameter "value"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 169
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p3, v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/database/CursorWindow;->putLong_native(JII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 171
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putNull(II)Z
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 205
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/database/CursorWindow;->putNull_native(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 207
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 1
    .parameter "value"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 151
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Landroid/database/CursorWindow;->putString_native(Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 153
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setNumColumns(I)Z
    .locals 1
    .parameter "columnNum"

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 86
    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;->setNumColumns_native(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 88
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setStartPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 60
    iput p1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 61
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 510
    invoke-direct {p0}, Landroid/database/CursorWindow;->native_getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 511
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    return-void
.end method
