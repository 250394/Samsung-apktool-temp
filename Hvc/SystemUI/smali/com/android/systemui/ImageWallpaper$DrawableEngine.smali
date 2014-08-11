.class Lcom/android/systemui/ImageWallpaper$DrawableEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawableEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperSimObserver;,
        Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;
    }
.end annotation


# static fields
.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final sSimpleFS:Ljava/lang/String; = "precision mediump float;\n\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    gl_FragColor = texture2D(texture, outTexCoords);\n}\n\n"

.field private static final sSimpleVS:Ljava/lang/String; = "attribute vec4 position;\nattribute vec2 texCoords;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\n\nvoid main(void) {\n    outTexCoords = texCoords;\n    gl_Position = projection * position;\n}\n\n"


# instance fields
.field mBackground:Landroid/graphics/Bitmap;

.field mBackgroundHeight:I

.field mBackgroundWidth:I

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGL:Ljavax/microedition/khronos/opengles/GL;

.field mLastXTranslation:I

.field mLastYTranslation:I

.field private final mLock:Ljava/lang/Object;

.field mOffsetsChanged:Z

.field private mReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;

.field mRedrawNeeded:Z

.field private mSimReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperSimObserver;

.field mVisible:Z

.field mXOffset:F

.field mYOffset:F

.field final synthetic this$0:Lcom/android/systemui/ImageWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 95
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 99
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    .line 107
    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private buildProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "vertex"
    .parameter "fragment"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 526
    const v6, 0x8b31

    invoke-direct {p0, p1, v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildShader(Ljava/lang/String;I)I

    move-result v4

    .line 527
    .local v4, vertexShader:I
    if-nez v4, :cond_1

    move v2, v5

    .line 553
    :cond_0
    :goto_0
    return v2

    .line 529
    :cond_1
    const v6, 0x8b30

    invoke-direct {p0, p2, v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildShader(Ljava/lang/String;I)I

    move-result v1

    .line 530
    .local v1, fragmentShader:I
    if-nez v1, :cond_2

    move v2, v5

    goto :goto_0

    .line 532
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 533
    .local v2, program:I
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 534
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 536
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 539
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 540
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 542
    new-array v3, v7, [I

    .line 543
    .local v3, status:[I
    const v6, 0x8b82

    invoke-static {v2, v6, v3, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 544
    aget v6, v3, v5

    if-eq v6, v7, :cond_0

    .line 545
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, error:Ljava/lang/String;
    const-string v6, "ImageWallpaperGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while linking program:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 548
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 549
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v2, v5

    .line 550
    goto :goto_0
.end method

.method private buildShader(Ljava/lang/String;I)I
    .locals 7
    .parameter "source"
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 557
    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 559
    .local v1, shader:I
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 560
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 562
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 563
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 565
    new-array v2, v5, [I

    .line 566
    .local v2, status:[I
    const v4, 0x8b81

    invoke-static {v1, v4, v2, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 567
    aget v4, v2, v3

    if-eq v4, v5, :cond_0

    .line 568
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, error:Ljava/lang/String;
    const-string v4, "ImageWallpaperGL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while compiling shader:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v1, v3

    .line 574
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #shader:I
    :cond_0
    return v1
.end method

.method private checkEglError()V
    .locals 4

    .prologue
    .line 578
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 579
    .local v0, error:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 580
    const-string v1, "ImageWallpaperGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    return-void
.end method

.method private checkGlError()V
    .locals 4

    .prologue
    .line 585
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 586
    .local v0, error:I
    if-eqz v0, :cond_0

    .line 587
    const-string v1, "ImageWallpaperGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    :cond_0
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 648
    new-array v5, v4, [I

    .line 649
    .local v5, configsCount:[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 650
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getConfig()[I

    move-result-object v2

    .line 651
    .local v2, configSpec:[I
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglChooseConfig failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 655
    aget-object v0, v3, v6

    .line 657
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createMesh(IIFF)Ljava/nio/FloatBuffer;
    .locals 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 485
    const/16 v3, 0x14

    new-array v2, v3, [F

    int-to-float v3, p1

    aput v3, v2, v7

    const/4 v3, 0x1

    aput p4, v2, v3

    const/4 v3, 0x2

    aput v5, v2, v3

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput p3, v2, v3

    const/4 v3, 0x6

    aput p4, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v6, v2, v3

    const/16 v3, 0x9

    aput v6, v2, v3

    const/16 v3, 0xa

    int-to-float v4, p1

    aput v4, v2, v3

    const/16 v3, 0xb

    int-to-float v4, p2

    aput v4, v2, v3

    const/16 v3, 0xc

    aput v5, v2, v3

    const/16 v3, 0xd

    aput v5, v2, v3

    const/16 v3, 0xe

    aput v5, v2, v3

    const/16 v3, 0xf

    aput p3, v2, v3

    const/16 v3, 0x10

    int-to-float v4, p2

    aput v4, v2, v3

    const/16 v3, 0x11

    aput v5, v2, v3

    const/16 v3, 0x12

    aput v6, v2, v3

    const/16 v3, 0x13

    aput v5, v2, v3

    .line 493
    .local v2, verticesData:[F
    array-length v3, v2

    mul-int/lit8 v0, v3, 0x4

    .line 494
    .local v0, bytes:I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 496
    .local v1, triangleVertices:Ljava/nio/FloatBuffer;
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 497
    return-object v1
.end method

.method private drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V
    .locals 6
    .parameter "sh"
    .parameter "w"
    .parameter "h"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 401
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 402
    .local v0, c:Landroid/graphics/Canvas;
    if-eqz v0, :cond_3

    .line 408
    int-to-float v1, p4

    int-to-float v2, p5

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 409
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 410
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 411
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 412
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 413
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 416
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :cond_2
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 422
    :cond_3
    return-void

    .line 419
    :catchall_0
    move-exception v1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v1
.end method

.method private drawWallpaperWithOpenGL(Landroid/view/SurfaceHolder;IIII)Z
    .locals 25
    .parameter "sh"
    .parameter "w"
    .parameter "h"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 425
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->initGL(Landroid/view/SurfaceHolder;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    .line 481
    :goto_0
    return v7

    .line 427
    :cond_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    add-int v7, v7, p4

    int-to-float v0, v7

    move/from16 v21, v0

    .line 428
    .local v21, right:F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    add-int v7, v7, p5

    int-to-float v0, v7

    move/from16 v18, v0

    .line 430
    .local v18, bottom:F
    invoke-interface/range {p1 .. p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v19

    .line 432
    .local v19, frame:Landroid/graphics/Rect;
    new-instance v5, Landroid/renderscript/Matrix4f;

    invoke-direct {v5}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 433
    .local v5, ortho:Landroid/renderscript/Matrix4f;
    const/4 v6, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    const/high16 v10, -0x4080

    const/high16 v11, 0x3f80

    invoke-virtual/range {v5 .. v11}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    .line 435
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, v21

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->createMesh(IIFF)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 437
    .local v11, triangleVertices:Ljava/nio/FloatBuffer;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v22

    .line 438
    .local v22, texture:I
    const-string v7, "attribute vec4 position;\nattribute vec2 texCoords;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\n\nvoid main(void) {\n    outTexCoords = texCoords;\n    gl_Position = projection * position;\n}\n\n"

    const-string v8, "precision mediump float;\n\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    gl_FragColor = texture2D(texture, outTexCoords);\n}\n\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 440
    .local v20, program:I
    const-string v7, "position"

    move/from16 v0, v20

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    .line 441
    .local v6, attribPosition:I
    const-string v7, "texCoords"

    move/from16 v0, v20

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v12

    .line 442
    .local v12, attribTexCoords:I
    const-string v7, "texture"

    move/from16 v0, v20

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v24

    .line 443
    .local v24, uniformTexture:I
    const-string v7, "projection"

    move/from16 v0, v20

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v23

    .line 445
    .local v23, uniformProjection:I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 447
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 448
    const/16 v7, 0xde1

    move/from16 v0, v22

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 450
    invoke-static/range {v20 .. v20}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 451
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 452
    invoke-static {v12}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 453
    const/4 v7, 0x0

    move/from16 v0, v24

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 454
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v9

    const/4 v10, 0x0

    move/from16 v0, v23

    invoke-static {v0, v7, v8, v9, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 456
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 458
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 459
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 460
    const/16 v7, 0x4000

    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    .line 464
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 465
    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 468
    const/4 v7, 0x3

    invoke-virtual {v11, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 469
    const/4 v13, 0x3

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x14

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 472
    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 474
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 475
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Cannot swap buffers"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 477
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkEglError()V

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->finishGL()V

    .line 481
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private finishGL()V
    .locals 5

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 593
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 594
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 595
    return-void
.end method

.method private getConfig()[I
    .locals 1

    .prologue
    .line 661
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x4
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private initGL(Landroid/view/SurfaceHolder;)Z
    .locals 7
    .parameter "surfaceHolder"

    .prologue
    .line 598
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 600
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 601
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 602
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglGetDisplay failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 606
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 607
    .local v1, version:[I
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 608
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglInitialize failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 612
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 613
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_2

    .line 614
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglConfig not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 617
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 619
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, p1, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 621
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_5

    .line 622
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 623
    .local v0, error:I
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_4

    .line 624
    const-string v2, "ImageWallpaperGL"

    const-string v3, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v2, 0x0

    .line 638
    .end local v0           #error:I
    :goto_0
    return v2

    .line 627
    .restart local v0       #error:I
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createWindowSurface failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 631
    .end local v0           #error:I
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 632
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglMakeCurrent failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mGL:Ljavax/microedition/khronos/opengles/GL;

    .line 638
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadTexture(Landroid/graphics/Bitmap;)I
    .locals 8
    .parameter "bitmap"

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 501
    new-array v7, v3, [I

    .line 503
    .local v7, textures:[I
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 504
    invoke-static {v3, v7, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 505
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 507
    aget v6, v7, v1

    .line 508
    .local v6, texture:I
    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 509
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 511
    const/16 v2, 0x2801

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 512
    const/16 v2, 0x2800

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 514
    const/16 v2, 0x2802

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 515
    const/16 v2, 0x2803

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 517
    const/16 v2, 0x1908

    const/16 v4, 0x1401

    move-object v3, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V

    .line 518
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 520
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 522
    return v6
.end method


# virtual methods
.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .parameter "egl"
    .parameter "eglDisplay"
    .parameter "eglConfig"

    .prologue
    .line 643
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 644
    .local v0, attrib_list:[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .line 643
    nop

    :array_0
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method drawFrameLocked()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f00

    .line 297
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-nez v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateWallpaperLocked()V

    .line 315
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 324
    .local v1, sh:Landroid/view/SurfaceHolder;
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v8

    .line 325
    .local v8, frame:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 326
    .local v7, dw:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 327
    .local v6, dh:I
    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    sub-int v2, v7, v0

    .line 328
    .local v2, availw:I
    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    sub-int v3, v6, v0

    .line 329
    .local v3, availh:I
    if-gez v2, :cond_4

    int-to-float v0, v2

    iget v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    mul-float/2addr v0, v9

    add-float/2addr v0, v10

    float-to-int v4, v0

    .line 330
    .local v4, xPixels:I
    :goto_1
    if-gez v3, :cond_5

    int-to-float v0, v3

    iget v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    mul-float/2addr v0, v9

    add-float/2addr v0, v10

    float-to-int v5, v0

    .line 332
    .local v5, yPixels:I
    :goto_2
    iput-boolean v11, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 333
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    if-ne v4, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    if-eq v5, v0, :cond_0

    .line 340
    :cond_2
    iput-boolean v11, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    .line 341
    iput v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    .line 342
    iput v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    .line 354
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v0, v0, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    if-eqz v0, :cond_6

    move-object v0, p0

    .line 355
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithOpenGL(Landroid/view/SurfaceHolder;IIII)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    .line 356
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V

    .line 367
    :cond_3
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 368
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    goto :goto_0

    .line 329
    .end local v4           #xPixels:I
    .end local v5           #yPixels:I
    :cond_4
    div-int/lit8 v4, v2, 0x2

    goto :goto_1

    .line 330
    .restart local v4       #xPixels:I
    :cond_5
    div-int/lit8 v5, v3, 0x2

    goto :goto_2

    .restart local v5       #yPixels:I
    :cond_6
    move-object v0, p0

    .line 359
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V

    goto :goto_3
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "surfaceHolder"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 185
    const-string v2, "ro.staticwallpaper.pixelformat"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, sl:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "RGB_565"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 196
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SIM2_ONLY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v2, "android.intent.action.ACTION_RESET_DEFAULT_SIM_ID"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v2, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    new-instance v2, Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperSimObserver;

    invoke-direct {v2, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperSimObserver;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V

    iput-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSimReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperSimObserver;

    .line 201
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSimReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperSimObserver;

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/ImageWallpaper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;)V

    .line 205
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setOffsetNotificationsEnabled(Z)V

    .line 206
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 1
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 218
    invoke-super {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 220
    .local v0, surfaceHolder:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;)V

    .line 223
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/ImageWallpaper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    :cond_0
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 2
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    .line 274
    iput p2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrameLocked()V

    .line 278
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 289
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrameLocked()V

    .line 292
    monitor-exit v1

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 256
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 247
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrameLocked()V

    .line 250
    :cond_0
    monitor-exit v1

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateSurfaceSize(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDesiredMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDesiredMinimumHeight()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 234
    return-void
.end method

.method updateWallpaperLocked()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 373
    const/4 v2, 0x0

    .line 375
    .local v2, exception:Ljava/lang/Throwable;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    :goto_0
    if-eqz v2, :cond_0

    .line 383
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 387
    const-string v3, "ImageWallpaper"

    const-string v5, "Unable to load wallpaper!"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 396
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    :goto_2
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 397
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    :cond_1
    iput v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 398
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/RuntimeException;
    move-object v2, v0

    .line 380
    goto :goto_0

    .line 378
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/OutOfMemoryError;
    move-object v2, v0

    goto :goto_0

    .line 390
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 392
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "ImageWallpaper"

    const-string v5, "Unable reset to default wallpaper!"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #ex:Ljava/io/IOException;
    :cond_2
    move v3, v4

    .line 396
    goto :goto_2
.end method
