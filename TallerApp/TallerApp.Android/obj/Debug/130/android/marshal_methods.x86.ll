; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [228 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 72
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 102
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 21
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 97
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 86
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 86
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 53
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 87
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 51
	i32 230216969, ; 9: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 67
	i32 232815796, ; 10: System.Web.Services => 0xde07cb4 => 110
	i32 261689757, ; 11: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 56
	i32 277295747, ; 12: Refit.HttpClientFactory => 0x10873283 => 23
	i32 278686392, ; 13: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 71
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 65
	i32 291275502, ; 15: Microsoft.Extensions.Http.dll => 0x115c82ee => 14
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 43
	i32 321597661, ; 17: System.Numerics => 0x132b30dd => 34
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 69
	i32 346219089, ; 19: Autofac => 0x14a2e251 => 4
	i32 385762202, ; 20: System.Memory.dll => 0x16fe439a => 32
	i32 441335492, ; 21: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 55
	i32 442521989, ; 22: Xamarin.Essentials => 0x1a605985 => 96
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 64
	i32 465846621, ; 24: mscorlib => 0x1bc4415d => 20
	i32 469710990, ; 25: System.dll => 0x1bff388e => 31
	i32 476646585, ; 26: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 65
	i32 486930444, ; 27: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 76
	i32 513247710, ; 28: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 18
	i32 525008092, ; 29: SkiaSharp.dll => 0x1f4afcdc => 25
	i32 526420162, ; 30: System.Transactions.dll => 0x1f6088c2 => 104
	i32 539058512, ; 31: Microsoft.Extensions.Logging => 0x20216150 => 16
	i32 548916678, ; 32: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 11
	i32 593341072, ; 33: TallerApp => 0x235daa90 => 42
	i32 605376203, ; 34: System.IO.Compression.FileSystem => 0x24154ecb => 108
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 60
	i32 662205335, ; 36: System.Text.Encodings.Web.dll => 0x27787397 => 38
	i32 663517072, ; 37: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 92
	i32 666292255, ; 38: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 48
	i32 690569205, ; 39: System.Xml.Linq.dll => 0x29293ff5 => 41
	i32 775507847, ; 40: System.IO.Compression => 0x2e394f87 => 107
	i32 789151979, ; 41: Microsoft.Extensions.Options => 0x2f0980eb => 17
	i32 809851609, ; 42: System.Drawing.Common.dll => 0x30455ad9 => 106
	i32 843511501, ; 43: Xamarin.AndroidX.Print => 0x3246f6cd => 83
	i32 878954865, ; 44: System.Net.Http.Json => 0x3463c971 => 33
	i32 885382775, ; 45: Refit.Newtonsoft.Json.dll => 0x34c5de77 => 24
	i32 886248193, ; 46: Microcharts.Droid => 0x34d31301 => 9
	i32 908337989, ; 47: Refit => 0x36242345 => 22
	i32 928116545, ; 48: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 102
	i32 955402788, ; 49: Newtonsoft.Json => 0x38f24a24 => 21
	i32 967690846, ; 50: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 69
	i32 974778368, ; 51: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 1012816738, ; 52: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 85
	i32 1028951442, ; 53: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 12
	i32 1035644815, ; 54: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 47
	i32 1042160112, ; 55: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 99
	i32 1052210849, ; 56: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 73
	i32 1098259244, ; 57: System => 0x41761b2c => 31
	i32 1122549021, ; 58: Refit.HttpClientFactory.dll => 0x42e8bd1d => 23
	i32 1175144683, ; 59: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 90
	i32 1178241025, ; 60: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 80
	i32 1204270330, ; 61: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 48
	i32 1267360935, ; 62: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 91
	i32 1293217323, ; 63: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 62
	i32 1365406463, ; 64: System.ServiceModel.Internals.dll => 0x516272ff => 111
	i32 1376866003, ; 65: Xamarin.AndroidX.SavedState => 0x52114ed3 => 85
	i32 1395857551, ; 66: Xamarin.AndroidX.Media.dll => 0x5333188f => 77
	i32 1406073936, ; 67: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 57
	i32 1411638395, ; 68: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 36
	i32 1460219004, ; 69: Xamarin.Forms.Xaml => 0x57092c7c => 100
	i32 1462112819, ; 70: System.IO.Compression.dll => 0x57261233 => 107
	i32 1469204771, ; 71: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 46
	i32 1470490898, ; 72: Microsoft.Extensions.Primitives => 0x57a5e912 => 18
	i32 1505131794, ; 73: Microsoft.Extensions.Http => 0x59b67d12 => 14
	i32 1582372066, ; 74: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 61
	i32 1582526884, ; 75: Microcharts.Forms.dll => 0x5e5371a4 => 10
	i32 1592978981, ; 76: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 77: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 75
	i32 1624863272, ; 78: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 94
	i32 1636350590, ; 79: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 59
	i32 1639515021, ; 80: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 81: System.Runtime => 0x62c6282e => 37
	i32 1658241508, ; 82: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 88
	i32 1658251792, ; 83: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 101
	i32 1670060433, ; 84: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 56
	i32 1722051300, ; 85: SkiaSharp.Views.Forms => 0x66a46ae4 => 27
	i32 1729485958, ; 86: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 52
	i32 1766324549, ; 87: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 87
	i32 1770582343, ; 88: Microsoft.Extensions.Logging.dll => 0x6988f147 => 16
	i32 1776026572, ; 89: System.Core.dll => 0x69dc03cc => 29
	i32 1788241197, ; 90: Xamarin.AndroidX.Fragment => 0x6a96652d => 64
	i32 1796167890, ; 91: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 11
	i32 1808609942, ; 92: Xamarin.AndroidX.Loader => 0x6bcd3296 => 75
	i32 1813201214, ; 93: Xamarin.Google.Android.Material => 0x6c13413e => 101
	i32 1818569960, ; 94: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 81
	i32 1828688058, ; 95: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 15
	i32 1867746548, ; 96: Xamarin.Essentials.dll => 0x6f538cf4 => 96
	i32 1878053835, ; 97: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 100
	i32 1885316902, ; 98: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 49
	i32 1919157823, ; 99: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 78
	i32 2011961780, ; 100: System.Buffers.dll => 0x77ec19b4 => 28
	i32 2019465201, ; 101: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 73
	i32 2055257422, ; 102: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 70
	i32 2079903147, ; 103: System.Runtime.dll => 0x7bf8cdab => 37
	i32 2090596640, ; 104: System.Numerics.Vectors => 0x7c9bf920 => 35
	i32 2097448633, ; 105: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 66
	i32 2126786730, ; 106: Xamarin.Forms.Platform.Android => 0x7ec430aa => 98
	i32 2181898931, ; 107: Microsoft.Extensions.Options.dll => 0x820d22b3 => 17
	i32 2192057212, ; 108: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 15
	i32 2201231467, ; 109: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 110: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 90
	i32 2244775296, ; 111: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 76
	i32 2256548716, ; 112: Xamarin.AndroidX.MultiDex => 0x8680336c => 78
	i32 2261435625, ; 113: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 68
	i32 2279755925, ; 114: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 84
	i32 2315684594, ; 115: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 44
	i32 2409053734, ; 116: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 82
	i32 2437741907, ; 117: Refit.Newtonsoft.Json => 0x914cfd53 => 24
	i32 2465532216, ; 118: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 55
	i32 2471841756, ; 119: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 120: Java.Interop.dll => 0x93918882 => 7
	i32 2501346920, ; 121: System.Data.DataSetExtensions => 0x95178668 => 105
	i32 2505896520, ; 122: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 72
	i32 2570120770, ; 123: System.Text.Encodings.Web => 0x9930ee42 => 38
	i32 2581819634, ; 124: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 91
	i32 2620871830, ; 125: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 59
	i32 2624644809, ; 126: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 63
	i32 2633051222, ; 127: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 71
	i32 2652177085, ; 128: Autofac.Extensions.DependencyInjection => 0x9e1502bd => 5
	i32 2701096212, ; 129: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 88
	i32 2732626843, ; 130: Xamarin.AndroidX.Activity => 0xa2e0939b => 43
	i32 2737747696, ; 131: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 46
	i32 2766581644, ; 132: Xamarin.Forms.Core => 0xa4e6af8c => 97
	i32 2778768386, ; 133: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 93
	i32 2795602088, ; 134: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 26
	i32 2810250172, ; 135: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 57
	i32 2819470561, ; 136: System.Xml.dll => 0xa80db4e1 => 40
	i32 2853208004, ; 137: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 93
	i32 2855708567, ; 138: Xamarin.AndroidX.Transition => 0xaa36a797 => 89
	i32 2903344695, ; 139: System.ComponentModel.Composition => 0xad0d8637 => 109
	i32 2905242038, ; 140: mscorlib.dll => 0xad2a79b6 => 20
	i32 2912489636, ; 141: SkiaSharp.Views.Android => 0xad9910a4 => 26
	i32 2916838712, ; 142: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 94
	i32 2919462931, ; 143: System.Numerics.Vectors.dll => 0xae037813 => 35
	i32 2921128767, ; 144: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 45
	i32 2974793899, ; 145: SkiaSharp.Views.Forms.dll => 0xb14fc0ab => 27
	i32 2978675010, ; 146: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 62
	i32 3024354802, ; 147: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 67
	i32 3036068679, ; 148: Microcharts.Droid.dll => 0xb4f6bb47 => 9
	i32 3041428488, ; 149: TallerApp.dll => 0xb5488408 => 42
	i32 3044182254, ; 150: FormsViewGroup => 0xb57288ee => 6
	i32 3057625584, ; 151: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 79
	i32 3111772706, ; 152: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3124832203, ; 153: System.Threading.Tasks.Extensions => 0xba4127cb => 113
	i32 3144447155, ; 154: Autofac.dll => 0xbb6c74b3 => 4
	i32 3204380047, ; 155: System.Data.dll => 0xbefef58f => 103
	i32 3211777861, ; 156: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 61
	i32 3247949154, ; 157: Mono.Security => 0xc197c562 => 112
	i32 3258312781, ; 158: Xamarin.AndroidX.CardView => 0xc235e84d => 52
	i32 3265893370, ; 159: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 113
	i32 3267021929, ; 160: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 50
	i32 3317135071, ; 161: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 60
	i32 3317144872, ; 162: System.Data => 0xc5b79d28 => 103
	i32 3340387945, ; 163: SkiaSharp => 0xc71a4669 => 25
	i32 3340431453, ; 164: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 49
	i32 3346324047, ; 165: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 80
	i32 3353484488, ; 166: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 66
	i32 3353544232, ; 167: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 95
	i32 3358260929, ; 168: System.Text.Json => 0xc82afec1 => 39
	i32 3362522851, ; 169: Xamarin.AndroidX.Core => 0xc86c06e3 => 58
	i32 3366347497, ; 170: Java.Interop => 0xc8a662e9 => 7
	i32 3374999561, ; 171: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 84
	i32 3395150330, ; 172: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 36
	i32 3404865022, ; 173: System.ServiceModel.Internals => 0xcaf21dfe => 111
	i32 3407215217, ; 174: Xamarin.CommunityToolkit => 0xcb15fa71 => 95
	i32 3428513518, ; 175: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 13
	i32 3429136800, ; 176: System.Xml => 0xcc6479a0 => 40
	i32 3430777524, ; 177: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 178: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 63
	i32 3455791806, ; 179: Microcharts => 0xcdfb32be => 8
	i32 3476120550, ; 180: Mono.Android => 0xcf3163e6 => 19
	i32 3477565270, ; 181: TallerApp.Android.dll => 0xcf476f56 => 0
	i32 3485117614, ; 182: System.Text.Json.dll => 0xcfbaacae => 39
	i32 3486566296, ; 183: System.Transactions => 0xcfd0c798 => 104
	i32 3493954962, ; 184: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 54
	i32 3501239056, ; 185: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 50
	i32 3509114376, ; 186: System.Xml.Linq => 0xd128d608 => 41
	i32 3536029504, ; 187: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 98
	i32 3567349600, ; 188: System.ComponentModel.Composition.dll => 0xd4a16f60 => 109
	i32 3618140916, ; 189: Xamarin.AndroidX.Preference => 0xd7a872f4 => 82
	i32 3627220390, ; 190: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 83
	i32 3632359727, ; 191: Xamarin.Forms.Platform => 0xd881692f => 99
	i32 3633644679, ; 192: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 45
	i32 3641597786, ; 193: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 70
	i32 3668042751, ; 194: Microcharts.dll => 0xdaa1e3ff => 8
	i32 3672681054, ; 195: Mono.Android.dll => 0xdae8aa5e => 19
	i32 3676310014, ; 196: System.Web.Services.dll => 0xdb2009fe => 110
	i32 3682565725, ; 197: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 51
	i32 3684561358, ; 198: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 54
	i32 3689375977, ; 199: System.Drawing.Common => 0xdbe768e9 => 106
	i32 3718780102, ; 200: Xamarin.AndroidX.Annotation => 0xdda814c6 => 44
	i32 3720885764, ; 201: TallerApp.Android => 0xddc83604 => 0
	i32 3724971120, ; 202: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 79
	i32 3737834244, ; 203: System.Net.Http.Json.dll => 0xdecad304 => 33
	i32 3748608112, ; 204: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 30
	i32 3758932259, ; 205: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 68
	i32 3786282454, ; 206: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 53
	i32 3822602673, ; 207: Xamarin.AndroidX.Media => 0xe3d849b1 => 77
	i32 3829621856, ; 208: System.Numerics.dll => 0xe4436460 => 34
	i32 3841636137, ; 209: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 12
	i32 3885922214, ; 210: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 89
	i32 3896760992, ; 211: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 58
	i32 3903721208, ; 212: Microcharts.Forms => 0xe8ae0ef8 => 10
	i32 3920810846, ; 213: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 108
	i32 3921031405, ; 214: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 92
	i32 3931092270, ; 215: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 81
	i32 3945713374, ; 216: System.Data.DataSetExtensions.dll => 0xeb2ecede => 105
	i32 3955647286, ; 217: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 47
	i32 3969889706, ; 218: Autofac.Extensions.DependencyInjection.dll => 0xec9fb5aa => 5
	i32 4025784931, ; 219: System.Memory => 0xeff49a63 => 32
	i32 4105002889, ; 220: Mono.Security.dll => 0xf4ad5f89 => 112
	i32 4126470640, ; 221: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 13
	i32 4144683026, ; 222: Refit.dll => 0xf70ad812 => 22
	i32 4151237749, ; 223: System.Core => 0xf76edc75 => 29
	i32 4182413190, ; 224: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 74
	i32 4213026141, ; 225: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 30
	i32 4260525087, ; 226: System.Buffers => 0xfdf2741f => 28
	i32 4292120959 ; 227: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 74
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [228 x i32] [
	i32 72, i32 102, i32 21, i32 97, i32 86, i32 86, i32 53, i32 87, ; 0..7
	i32 51, i32 67, i32 110, i32 56, i32 23, i32 71, i32 65, i32 14, ; 8..15
	i32 43, i32 34, i32 69, i32 4, i32 32, i32 55, i32 96, i32 64, ; 16..23
	i32 20, i32 31, i32 65, i32 76, i32 18, i32 25, i32 104, i32 16, ; 24..31
	i32 11, i32 42, i32 108, i32 60, i32 38, i32 92, i32 48, i32 41, ; 32..39
	i32 107, i32 17, i32 106, i32 83, i32 33, i32 24, i32 9, i32 22, ; 40..47
	i32 102, i32 21, i32 69, i32 6, i32 85, i32 12, i32 47, i32 99, ; 48..55
	i32 73, i32 31, i32 23, i32 90, i32 80, i32 48, i32 91, i32 62, ; 56..63
	i32 111, i32 85, i32 77, i32 57, i32 36, i32 100, i32 107, i32 46, ; 64..71
	i32 18, i32 14, i32 61, i32 10, i32 3, i32 75, i32 94, i32 59, ; 72..79
	i32 2, i32 37, i32 88, i32 101, i32 56, i32 27, i32 52, i32 87, ; 80..87
	i32 16, i32 29, i32 64, i32 11, i32 75, i32 101, i32 81, i32 15, ; 88..95
	i32 96, i32 100, i32 49, i32 78, i32 28, i32 73, i32 70, i32 37, ; 96..103
	i32 35, i32 66, i32 98, i32 17, i32 15, i32 2, i32 90, i32 76, ; 104..111
	i32 78, i32 68, i32 84, i32 44, i32 82, i32 24, i32 55, i32 1, ; 112..119
	i32 7, i32 105, i32 72, i32 38, i32 91, i32 59, i32 63, i32 71, ; 120..127
	i32 5, i32 88, i32 43, i32 46, i32 97, i32 93, i32 26, i32 57, ; 128..135
	i32 40, i32 93, i32 89, i32 109, i32 20, i32 26, i32 94, i32 35, ; 136..143
	i32 45, i32 27, i32 62, i32 67, i32 9, i32 42, i32 6, i32 79, ; 144..151
	i32 3, i32 113, i32 4, i32 103, i32 61, i32 112, i32 52, i32 113, ; 152..159
	i32 50, i32 60, i32 103, i32 25, i32 49, i32 80, i32 66, i32 95, ; 160..167
	i32 39, i32 58, i32 7, i32 84, i32 36, i32 111, i32 95, i32 13, ; 168..175
	i32 40, i32 1, i32 63, i32 8, i32 19, i32 0, i32 39, i32 104, ; 176..183
	i32 54, i32 50, i32 41, i32 98, i32 109, i32 82, i32 83, i32 99, ; 184..191
	i32 45, i32 70, i32 8, i32 19, i32 110, i32 51, i32 54, i32 106, ; 192..199
	i32 44, i32 0, i32 79, i32 33, i32 30, i32 68, i32 53, i32 77, ; 200..207
	i32 34, i32 12, i32 89, i32 58, i32 10, i32 108, i32 92, i32 81, ; 208..215
	i32 105, i32 47, i32 5, i32 32, i32 112, i32 13, i32 22, i32 29, ; 216..223
	i32 74, i32 30, i32 28, i32 74 ; 224..227
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
