; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [216 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 53
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 85
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 10
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 79
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 68
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 68
	i32 134690465, ; 6: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 89
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 33
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 70
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 31
	i32 220171995, ; 10: System.Diagnostics.Debug => 0xd1f8edb => 105
	i32 230216969, ; 11: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 48
	i32 232815796, ; 12: System.Web.Services => 0xde07cb4 => 101
	i32 261689757, ; 13: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 37
	i32 278686392, ; 14: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 52
	i32 280482487, ; 15: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 46
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 22
	i32 321597661, ; 17: System.Numerics => 0x132b30dd => 16
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 50
	i32 381494705, ; 19: Xamarin.Forms.Material => 0x16bd25b1 => 80
	i32 393699800, ; 20: Firebase => 0x177761d8 => 3
	i32 441335492, ; 21: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 36
	i32 442521989, ; 22: Xamarin.Essentials => 0x1a605985 => 78
	i32 442565967, ; 23: System.Collections => 0x1a61054f => 103
	i32 450948140, ; 24: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 45
	i32 465846621, ; 25: mscorlib => 0x1bc4415d => 9
	i32 469710990, ; 26: System.dll => 0x1bff388e => 13
	i32 476646585, ; 27: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 46
	i32 486930444, ; 28: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 57
	i32 526420162, ; 29: System.Transactions.dll => 0x1f6088c2 => 96
	i32 527452488, ; 30: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 89
	i32 545304856, ; 31: System.Runtime.Extensions => 0x2080b118 => 106
	i32 605376203, ; 32: System.IO.Compression.FileSystem => 0x24154ecb => 99
	i32 610194910, ; 33: System.Reactive.dll => 0x245ed5de => 18
	i32 627609679, ; 34: Xamarin.AndroidX.CustomView => 0x2568904f => 41
	i32 663517072, ; 35: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 75
	i32 666292255, ; 36: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 28
	i32 690569205, ; 37: System.Xml.Linq.dll => 0x29293ff5 => 21
	i32 691348768, ; 38: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 91
	i32 700284507, ; 39: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 86
	i32 720511267, ; 40: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 90
	i32 775507847, ; 41: System.IO.Compression => 0x2e394f87 => 14
	i32 809851609, ; 42: System.Drawing.Common.dll => 0x30455ad9 => 98
	i32 843511501, ; 43: Xamarin.AndroidX.Print => 0x3246f6cd => 64
	i32 928116545, ; 44: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 85
	i32 955402788, ; 45: Newtonsoft.Json => 0x38f24a24 => 10
	i32 956575887, ; 46: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 90
	i32 967690846, ; 47: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 50
	i32 974778368, ; 48: FormsViewGroup.dll => 0x3a19f000 => 5
	i32 992768348, ; 49: System.Collections.dll => 0x3b2c715c => 103
	i32 1012816738, ; 50: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 67
	i32 1035644815, ; 51: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 27
	i32 1042160112, ; 52: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 82
	i32 1052210849, ; 53: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 54
	i32 1084122840, ; 54: Xamarin.Kotlin.StdLib => 0x409e66d8 => 88
	i32 1098259244, ; 55: System => 0x41761b2c => 13
	i32 1175144683, ; 56: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 73
	i32 1178241025, ; 57: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 61
	i32 1204270330, ; 58: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 28
	i32 1246548578, ; 59: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 34
	i32 1264511973, ; 60: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 69
	i32 1267360935, ; 61: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 74
	i32 1275534314, ; 62: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 91
	i32 1278448581, ; 63: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 25
	i32 1293217323, ; 64: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 43
	i32 1364015309, ; 65: System.IO => 0x514d38cd => 104
	i32 1365406463, ; 66: System.ServiceModel.Internals.dll => 0x516272ff => 93
	i32 1376866003, ; 67: Xamarin.AndroidX.SavedState => 0x52114ed3 => 67
	i32 1395857551, ; 68: Xamarin.AndroidX.Media.dll => 0x5333188f => 58
	i32 1406073936, ; 69: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 38
	i32 1457743152, ; 70: System.Runtime.Extensions.dll => 0x56e36530 => 106
	i32 1460219004, ; 71: Xamarin.Forms.Xaml => 0x57092c7c => 83
	i32 1462112819, ; 72: System.IO.Compression.dll => 0x57261233 => 14
	i32 1469204771, ; 73: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 26
	i32 1582372066, ; 74: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 42
	i32 1592978981, ; 75: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 76: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 56
	i32 1624863272, ; 77: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 77
	i32 1636350590, ; 78: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 40
	i32 1639515021, ; 79: System.Net.Http.dll => 0x61b9038d => 15
	i32 1657153582, ; 80: System.Runtime => 0x62c6282e => 19
	i32 1658241508, ; 81: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 71
	i32 1658251792, ; 82: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 84
	i32 1670060433, ; 83: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 37
	i32 1698840827, ; 84: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 87
	i32 1701541528, ; 85: System.Diagnostics.Debug.dll => 0x656b7698 => 105
	i32 1729485958, ; 86: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 32
	i32 1766324549, ; 87: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 70
	i32 1776026572, ; 88: System.Core.dll => 0x69dc03cc => 12
	i32 1788241197, ; 89: Xamarin.AndroidX.Fragment => 0x6a96652d => 45
	i32 1808609942, ; 90: Xamarin.AndroidX.Loader => 0x6bcd3296 => 56
	i32 1813058853, ; 91: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 88
	i32 1813201214, ; 92: Xamarin.Google.Android.Material => 0x6c13413e => 84
	i32 1818569960, ; 93: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 62
	i32 1867746548, ; 94: Xamarin.Essentials.dll => 0x6f538cf4 => 78
	i32 1878053835, ; 95: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 83
	i32 1885316902, ; 96: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 29
	i32 1904755420, ; 97: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 1
	i32 1919157823, ; 98: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 59
	i32 1983156543, ; 99: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 87
	i32 2019465201, ; 100: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 54
	i32 2055257422, ; 101: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 51
	i32 2074879403, ; 102: pocketacademy.Android => 0x7bac25ab => 0
	i32 2079903147, ; 103: System.Runtime.dll => 0x7bf8cdab => 19
	i32 2090596640, ; 104: System.Numerics.Vectors => 0x7c9bf920 => 17
	i32 2097448633, ; 105: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 47
	i32 2126786730, ; 106: Xamarin.Forms.Platform.Android => 0x7ec430aa => 81
	i32 2201107256, ; 107: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 92
	i32 2201231467, ; 108: System.Net.Http => 0x8334206b => 15
	i32 2206404183, ; 109: pocketacademy.Android.dll => 0x83830e57 => 0
	i32 2217644978, ; 110: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 73
	i32 2244775296, ; 111: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 57
	i32 2256548716, ; 112: Xamarin.AndroidX.MultiDex => 0x8680336c => 59
	i32 2261435625, ; 113: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 49
	i32 2279755925, ; 114: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 66
	i32 2315684594, ; 115: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 23
	i32 2409053734, ; 116: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 63
	i32 2465532216, ; 117: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 36
	i32 2471841756, ; 118: netstandard.dll => 0x93554fdc => 94
	i32 2475788418, ; 119: Java.Interop.dll => 0x93918882 => 6
	i32 2501346920, ; 120: System.Data.DataSetExtensions => 0x95178668 => 97
	i32 2505896520, ; 121: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 53
	i32 2558056063, ; 122: pocketacademy.dll => 0x9878d67f => 11
	i32 2581819634, ; 123: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 74
	i32 2605712449, ; 124: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 92
	i32 2620871830, ; 125: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 40
	i32 2624644809, ; 126: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 44
	i32 2633051222, ; 127: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 52
	i32 2693849962, ; 128: System.IO.dll => 0xa090e36a => 104
	i32 2701096212, ; 129: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 71
	i32 2715334215, ; 130: System.Threading.Tasks.dll => 0xa1d8b647 => 102
	i32 2732626843, ; 131: Xamarin.AndroidX.Activity => 0xa2e0939b => 22
	i32 2737747696, ; 132: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 26
	i32 2766581644, ; 133: Xamarin.Forms.Core => 0xa4e6af8c => 79
	i32 2770495804, ; 134: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 86
	i32 2778768386, ; 135: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 76
	i32 2810250172, ; 136: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 38
	i32 2819470561, ; 137: System.Xml.dll => 0xa80db4e1 => 20
	i32 2853208004, ; 138: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 76
	i32 2855708567, ; 139: Xamarin.AndroidX.Transition => 0xaa36a797 => 72
	i32 2903344695, ; 140: System.ComponentModel.Composition => 0xad0d8637 => 100
	i32 2905242038, ; 141: mscorlib.dll => 0xad2a79b6 => 9
	i32 2916838712, ; 142: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 77
	i32 2919462931, ; 143: System.Numerics.Vectors.dll => 0xae037813 => 17
	i32 2921128767, ; 144: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 24
	i32 2978675010, ; 145: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 43
	i32 3016983068, ; 146: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 69
	i32 3024354802, ; 147: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 48
	i32 3044182254, ; 148: FormsViewGroup => 0xb57288ee => 5
	i32 3057625584, ; 149: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 60
	i32 3075834255, ; 150: System.Threading.Tasks => 0xb755818f => 102
	i32 3111772706, ; 151: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3204380047, ; 152: System.Data.dll => 0xbefef58f => 95
	i32 3211777861, ; 153: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 42
	i32 3247949154, ; 154: Mono.Security => 0xc197c562 => 107
	i32 3258312781, ; 155: Xamarin.AndroidX.CardView => 0xc235e84d => 32
	i32 3267021929, ; 156: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 30
	i32 3317135071, ; 157: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 41
	i32 3317144872, ; 158: System.Data => 0xc5b79d28 => 95
	i32 3322403133, ; 159: Firebase.dll => 0xc607d93d => 3
	i32 3340431453, ; 160: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 29
	i32 3345895724, ; 161: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 65
	i32 3346324047, ; 162: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 61
	i32 3353484488, ; 163: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 47
	i32 3362522851, ; 164: Xamarin.AndroidX.Core => 0xc86c06e3 => 39
	i32 3366347497, ; 165: Java.Interop => 0xc8a662e9 => 6
	i32 3374999561, ; 166: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 66
	i32 3404865022, ; 167: System.ServiceModel.Internals => 0xcaf21dfe => 93
	i32 3429136800, ; 168: System.Xml => 0xcc6479a0 => 20
	i32 3430777524, ; 169: netstandard => 0xcc7d82b4 => 94
	i32 3441283291, ; 170: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 44
	i32 3476120550, ; 171: Mono.Android => 0xcf3163e6 => 8
	i32 3486566296, ; 172: System.Transactions => 0xcfd0c798 => 96
	i32 3493954962, ; 173: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 35
	i32 3501239056, ; 174: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 30
	i32 3509114376, ; 175: System.Xml.Linq => 0xd128d608 => 21
	i32 3536029504, ; 176: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 81
	i32 3567349600, ; 177: System.ComponentModel.Composition.dll => 0xd4a16f60 => 100
	i32 3596207933, ; 178: LiteDB.dll => 0xd659c73d => 7
	i32 3618140916, ; 179: Xamarin.AndroidX.Preference => 0xd7a872f4 => 63
	i32 3627220390, ; 180: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 64
	i32 3629588173, ; 181: LiteDB => 0xd8571ecd => 7
	i32 3632359727, ; 182: Xamarin.Forms.Platform => 0xd881692f => 82
	i32 3633644679, ; 183: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 24
	i32 3641597786, ; 184: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 51
	i32 3655481159, ; 185: Firebase.Storage => 0xd9e23747 => 4
	i32 3672681054, ; 186: Mono.Android.dll => 0xdae8aa5e => 8
	i32 3676310014, ; 187: System.Web.Services.dll => 0xdb2009fe => 101
	i32 3682565725, ; 188: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 31
	i32 3684561358, ; 189: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 35
	i32 3684933406, ; 190: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 1
	i32 3685813676, ; 191: Xamarin.Forms.Material.dll => 0xdbb10dac => 80
	i32 3689375977, ; 192: System.Drawing.Common => 0xdbe768e9 => 98
	i32 3718780102, ; 193: Xamarin.AndroidX.Annotation => 0xdda814c6 => 23
	i32 3724971120, ; 194: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 60
	i32 3731644420, ; 195: System.Reactive => 0xde6c6004 => 18
	i32 3758932259, ; 196: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 49
	i32 3786282454, ; 197: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 33
	i32 3822602673, ; 198: Xamarin.AndroidX.Media => 0xe3d849b1 => 58
	i32 3829621856, ; 199: System.Numerics.dll => 0xe4436460 => 16
	i32 3885922214, ; 200: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 72
	i32 3888767677, ; 201: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 65
	i32 3896760992, ; 202: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 39
	i32 3910130544, ; 203: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 34
	i32 3920810846, ; 204: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 99
	i32 3921031405, ; 205: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 75
	i32 3929187773, ; 206: Firebase.Storage.dll => 0xea32a5bd => 4
	i32 3931092270, ; 207: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 62
	i32 3945713374, ; 208: System.Data.DataSetExtensions.dll => 0xeb2ecede => 97
	i32 3955647286, ; 209: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 27
	i32 4015948917, ; 210: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 25
	i32 4105002889, ; 211: Mono.Security.dll => 0xf4ad5f89 => 107
	i32 4151237749, ; 212: System.Core => 0xf76edc75 => 12
	i32 4158358499, ; 213: pocketacademy => 0xf7db83e3 => 11
	i32 4182413190, ; 214: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 55
	i32 4292120959 ; 215: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 55
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [216 x i32] [
	i32 53, i32 85, i32 10, i32 79, i32 68, i32 68, i32 89, i32 33, ; 0..7
	i32 70, i32 31, i32 105, i32 48, i32 101, i32 37, i32 52, i32 46, ; 8..15
	i32 22, i32 16, i32 50, i32 80, i32 3, i32 36, i32 78, i32 103, ; 16..23
	i32 45, i32 9, i32 13, i32 46, i32 57, i32 96, i32 89, i32 106, ; 24..31
	i32 99, i32 18, i32 41, i32 75, i32 28, i32 21, i32 91, i32 86, ; 32..39
	i32 90, i32 14, i32 98, i32 64, i32 85, i32 10, i32 90, i32 50, ; 40..47
	i32 5, i32 103, i32 67, i32 27, i32 82, i32 54, i32 88, i32 13, ; 48..55
	i32 73, i32 61, i32 28, i32 34, i32 69, i32 74, i32 91, i32 25, ; 56..63
	i32 43, i32 104, i32 93, i32 67, i32 58, i32 38, i32 106, i32 83, ; 64..71
	i32 14, i32 26, i32 42, i32 2, i32 56, i32 77, i32 40, i32 15, ; 72..79
	i32 19, i32 71, i32 84, i32 37, i32 87, i32 105, i32 32, i32 70, ; 80..87
	i32 12, i32 45, i32 56, i32 88, i32 84, i32 62, i32 78, i32 83, ; 88..95
	i32 29, i32 1, i32 59, i32 87, i32 54, i32 51, i32 0, i32 19, ; 96..103
	i32 17, i32 47, i32 81, i32 92, i32 15, i32 0, i32 73, i32 57, ; 104..111
	i32 59, i32 49, i32 66, i32 23, i32 63, i32 36, i32 94, i32 6, ; 112..119
	i32 97, i32 53, i32 11, i32 74, i32 92, i32 40, i32 44, i32 52, ; 120..127
	i32 104, i32 71, i32 102, i32 22, i32 26, i32 79, i32 86, i32 76, ; 128..135
	i32 38, i32 20, i32 76, i32 72, i32 100, i32 9, i32 77, i32 17, ; 136..143
	i32 24, i32 43, i32 69, i32 48, i32 5, i32 60, i32 102, i32 2, ; 144..151
	i32 95, i32 42, i32 107, i32 32, i32 30, i32 41, i32 95, i32 3, ; 152..159
	i32 29, i32 65, i32 61, i32 47, i32 39, i32 6, i32 66, i32 93, ; 160..167
	i32 20, i32 94, i32 44, i32 8, i32 96, i32 35, i32 30, i32 21, ; 168..175
	i32 81, i32 100, i32 7, i32 63, i32 64, i32 7, i32 82, i32 24, ; 176..183
	i32 51, i32 4, i32 8, i32 101, i32 31, i32 35, i32 1, i32 80, ; 184..191
	i32 98, i32 23, i32 60, i32 18, i32 49, i32 33, i32 58, i32 16, ; 192..199
	i32 72, i32 65, i32 39, i32 34, i32 99, i32 75, i32 4, i32 62, ; 200..207
	i32 97, i32 27, i32 25, i32 107, i32 12, i32 11, i32 55, i32 55 ; 216..215
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
