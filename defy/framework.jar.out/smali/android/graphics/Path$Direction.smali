.class public final enum Landroid/graphics/Path$Direction;
.super Ljava/lang/Enum;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Path$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Path$Direction;

.field public static final enum CCW:Landroid/graphics/Path$Direction;

.field public static final enum CW:Landroid/graphics/Path$Direction;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Path$Direction;

    const-string v1, "CW"

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Path$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    new-instance v0, Landroid/graphics/Path$Direction;

    const-string v1, "CCW"

    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/Path$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Path$Direction;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    aput-object v1, v0, v3

    sput-object v0, Landroid/graphics/Path$Direction;->$VALUES:[Landroid/graphics/Path$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "ni"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/graphics/Path$Direction;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Path$Direction;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/graphics/Path$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Path$Direction;

    return-object p0
.end method

.method public static values()[Landroid/graphics/Path$Direction;
    .locals 1

    .prologue
    sget-object v0, Landroid/graphics/Path$Direction;->$VALUES:[Landroid/graphics/Path$Direction;

    invoke-virtual {v0}, [Landroid/graphics/Path$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Path$Direction;

    return-object v0
.end method