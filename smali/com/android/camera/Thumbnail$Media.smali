.class Lcom/android/camera/Thumbnail$Media;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Thumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Media"
.end annotation


# instance fields
.field public final dateTaken:J

.field public final id:J

.field public final orientation:I

.field public final path:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "orientation"    # I
    .param p4, "dateTaken"    # J
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "path"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-wide p1, p0, Lcom/android/camera/Thumbnail$Media;->id:J

    .line 291
    iput p3, p0, Lcom/android/camera/Thumbnail$Media;->orientation:I

    .line 292
    iput-wide p4, p0, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    .line 293
    iput-object p6, p0, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    .line 294
    iput-object p7, p0, Lcom/android/camera/Thumbnail$Media;->path:Ljava/lang/String;

    .line 295
    return-void
.end method
