.class public final Landroid/support/v4/view/GravityCompat;
.super Ljava/lang/Object;
.source "GravityCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 2
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;
    .param p5, "layoutDirection"    # I

    .prologue
    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 65
    invoke-static/range {p0 .. p5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method
