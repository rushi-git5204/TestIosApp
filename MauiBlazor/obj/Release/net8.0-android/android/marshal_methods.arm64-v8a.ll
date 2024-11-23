; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [208 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [416 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 65
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 207
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 78
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 145
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 93
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 110
	i64 545109961164950392, ; 6: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 17
	i64 560278790331054453, ; 7: System.Reflection.Primitives => 0x7c6829760de3975 => 167
	i64 670564002081277297, ; 8: Microsoft.Identity.Client.dll => 0x94e526837380571 => 66
	i64 683390398661839228, ; 9: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 59
	i64 750875890346172408, ; 10: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 194
	i64 769231974326215379, ; 11: ja/Microsoft.Data.SqlClient.resources.dll => 0xaacdc67b39622d3 => 4
	i64 799765834175365804, ; 12: System.ComponentModel.dll => 0xb1956c9f18442ac => 128
	i64 849051935479314978, ; 13: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 20
	i64 872800313462103108, ; 14: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 98
	i64 937459790420187032, ; 15: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 80
	i64 1010599046655515943, ; 16: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 167
	i64 1060858978308751610, ; 17: Azure.Core.dll => 0xeb8ed9ebee080fa => 45
	i64 1120440138749646132, ; 18: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 114
	i64 1121665720830085036, ; 19: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 28
	i64 1150430735170971895, ; 20: ru\Microsoft.Data.SqlClient.resources => 0xff726a88c8ea8f7 => 7
	i64 1268860745194512059, ; 21: System.Drawing.dll => 0x119be62002c19ebb => 138
	i64 1369545283391376210, ; 22: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 106
	i64 1404195534211153682, ; 23: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 143
	i64 1476839205573959279, ; 24: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 152
	i64 1486715745332614827, ; 25: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 75
	i64 1513467482682125403, ; 26: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 206
	i64 1537168428375924959, ; 27: System.Threading.Thread.dll => 0x15551e8a954ae0df => 194
	i64 1556147632182429976, ; 28: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 26
	i64 1624659445732251991, ; 29: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 90
	i64 1628611045998245443, ; 30: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 103
	i64 1743969030606105336, ; 31: System.Memory.dll => 0x1833d297e88f2af8 => 147
	i64 1767386781656293639, ; 32: System.Private.Uri.dll => 0x188704e9f5582107 => 162
	i64 1776954265264967804, ; 33: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 74
	i64 1795316252682057001, ; 34: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 89
	i64 1825687700144851180, ; 35: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 168
	i64 1835311033149317475, ; 36: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 16
	i64 1836611346387731153, ; 37: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 110
	i64 1865037103900624886, ; 38: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 51
	i64 1875417405349196092, ; 39: System.Drawing.Primitives => 0x1a06d2319b6c713c => 137
	i64 1881198190668717030, ; 40: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 38
	i64 1920760634179481754, ; 41: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 76
	i64 1959996714666907089, ; 42: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 38
	i64 1972385128188460614, ; 43: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 179
	i64 1981742497975770890, ; 44: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 102
	i64 1983698669889758782, ; 45: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 12
	i64 2019660174692588140, ; 46: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 30
	i64 2040001226662520565, ; 47: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 193
	i64 2102659300918482391, ; 48: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 137
	i64 2165725771938924357, ; 49: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 91
	i64 2262844636196693701, ; 50: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 98
	i64 2287834202362508563, ; 51: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 121
	i64 2295368378960711535, ; 52: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 50
	i64 2302323944321350744, ; 53: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 34
	i64 2316229908869312383, ; 54: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 72
	i64 2329709569556905518, ; 55: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 101
	i64 2335503487726329082, ; 56: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 189
	i64 2470498323731680442, ; 57: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 94
	i64 2497223385847772520, ; 58: System.Runtime => 0x22a7eb7046413568 => 176
	i64 2547086958574651984, ; 59: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 88
	i64 2554797818648757682, ; 60: System.Runtime.Caching.dll => 0x23747714858085b2 => 86
	i64 2602673633151553063, ; 61: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 37
	i64 2612152650457191105, ; 62: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 73
	i64 2632269733008246987, ; 63: System.Net.NameResolution => 0x2487b36034f808cb => 150
	i64 2656907746661064104, ; 64: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 55
	i64 2662981627730767622, ; 65: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 12
	i64 2781169761569919449, ; 66: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 74
	i64 2789714023057451704, ; 67: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 69
	i64 2815524396660695947, ; 68: System.Security.AccessControl => 0x2712c0857f68238b => 177
	i64 2851879596360956261, ; 69: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 82
	i64 2895129759130297543, ; 70: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 17
	i64 3004558106879253741, ; 71: ja\Microsoft.Data.SqlClient.resources => 0x29b255adeb8edced => 4
	i64 3017704767998173186, ; 72: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 114
	i64 3063847325783385934, ; 73: System.ClientModel.dll => 0x2a84f8e8eb59674e => 81
	i64 3106852385031680087, ; 74: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 175
	i64 3110390492489056344, ; 75: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 181
	i64 3289520064315143713, ; 76: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 100
	i64 3311221304742556517, ; 77: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 159
	i64 3325875462027654285, ; 78: System.Runtime.Numerics => 0x2e27e21c8958b48d => 171
	i64 3328853167529574890, ; 79: System.Net.Sockets.dll => 0x2e327651a008c1ea => 156
	i64 3344514922410554693, ; 80: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 116
	i64 3396143930648122816, ; 81: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 57
	i64 3402534845034375023, ; 82: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 84
	i64 3429672777697402584, ; 83: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 78
	i64 3494946837667399002, ; 84: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 53
	i64 3522470458906976663, ; 85: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 111
	i64 3551103847008531295, ; 86: System.Private.CoreLib.dll => 0x31480e226177735f => 204
	i64 3567343442040498961, ; 87: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 32
	i64 3571415421602489686, ; 88: System.Runtime.dll => 0x319037675df7e556 => 176
	i64 3638003163729360188, ; 89: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 54
	i64 3647754201059316852, ; 90: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 199
	i64 3655542548057982301, ; 91: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 53
	i64 3716579019761409177, ; 92: netstandard.dll => 0x3393f0ed5c8c5c99 => 203
	i64 3727469159507183293, ; 93: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 109
	i64 3753897248517198740, ; 94: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 49
	i64 3869221888984012293, ; 95: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 62
	i64 3889433610606858880, ; 96: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 60
	i64 3890352374528606784, ; 97: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 76
	i64 3919223565570527920, ; 98: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 182
	i64 3933965368022646939, ; 99: System.Net.Requests => 0x369840a8bfadc09b => 153
	i64 3966267475168208030, ; 100: System.Memory => 0x370b03412596249e => 147
	i64 4009997192427317104, ; 101: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 174
	i64 4073500526318903918, ; 102: System.Private.Xml.dll => 0x3887fb25779ae26e => 164
	i64 4090066110372993390, ; 103: fr/Microsoft.Data.SqlClient.resources.dll => 0x38c2d57510a5596e => 2
	i64 4120493066591692148, ; 104: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 43
	i64 4154383907710350974, ; 105: System.ComponentModel => 0x39a7562737acb67e => 128
	i64 4167269041631776580, ; 106: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 195
	i64 4168469861834746866, ; 107: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 178
	i64 4187479170553454871, ; 108: System.Linq.Expressions => 0x3a1cea1e912fa117 => 145
	i64 4205801962323029395, ; 109: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 127
	i64 4321865999928413850, ; 110: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 83
	i64 4343083164021660430, ; 111: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0x3c45bb20857d9b0e => 8
	i64 4356591372459378815, ; 112: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 40
	i64 4373617458794931033, ; 113: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 144
	i64 4672453897036726049, ; 114: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 143
	i64 4679594760078841447, ; 115: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 10
	i64 4716677666592453464, ; 116: System.Xml.XmlSerializer => 0x417501590542f358 => 201
	i64 4794310189461587505, ; 117: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 88
	i64 4795410492532947900, ; 118: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 111
	i64 4809057822547766521, ; 119: System.Drawing => 0x42bd349c3145ecf9 => 138
	i64 4814660307502931973, ; 120: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 150
	i64 4853321196694829351, ; 121: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 170
	i64 5103417709280584325, ; 122: System.Collections.Specialized => 0x46d2fb5e161b6285 => 124
	i64 5182934613077526976, ; 123: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 124
	i64 5197073077358930460, ; 124: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 48
	i64 5278787618751394462, ; 125: System.Net.WebClient.dll => 0x4942055efc68329e => 157
	i64 5290786973231294105, ; 126: System.Runtime.Loader => 0x496ca6b869b72699 => 170
	i64 5423376490970181369, ; 127: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 168
	i64 5471532531798518949, ; 128: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 36
	i64 5522859530602327440, ; 129: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 39
	i64 5570799893513421663, ; 130: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 140
	i64 5573260873512690141, ; 131: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 185
	i64 5650097808083101034, ; 132: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 179
	i64 5692067934154308417, ; 133: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 113
	i64 5979151488806146654, ; 134: System.Formats.Asn1 => 0x52fa3699a489d25e => 139
	i64 5984759512290286505, ; 135: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 183
	i64 6068057819846744445, ; 136: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 33
	i64 6200764641006662125, ; 137: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 33
	i64 6222399776351216807, ; 138: System.Text.Json.dll => 0x565a67a0ffe264a7 => 190
	i64 6251069312384999852, ; 139: System.Transactions.Local => 0x56c0426b870da1ac => 197
	i64 6278736998281604212, ; 140: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 161
	i64 6284145129771520194, ; 141: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 165
	i64 6357457916754632952, ; 142: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 44
	i64 6401687960814735282, ; 143: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 101
	i64 6478287442656530074, ; 144: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 21
	i64 6504860066809920875, ; 145: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 91
	i64 6527428243306619305, ; 146: MauiBlazor.dll => 0x5a9615674b24a1a9 => 117
	i64 6548213210057960872, ; 147: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 97
	i64 6560151584539558821, ; 148: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 64
	i64 6617685658146568858, ; 149: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 187
	i64 6667137106064718713, ; 150: ru/Microsoft.Data.SqlClient.resources.dll => 0x5c866ddfbbd03b79 => 7
	i64 6743165466166707109, ; 151: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 29
	i64 6777482997383978746, ; 152: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 32
	i64 6786606130239981554, ; 153: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 135
	i64 6814185388980153342, ; 154: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 200
	i64 6876862101832370452, ; 155: System.Xml.Linq => 0x5f6f85a57d108914 => 198
	i64 6894844156784520562, ; 156: System.Numerics.Vectors => 0x5faf683aead1ad72 => 159
	i64 6920570528939222495, ; 157: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 49
	i64 7055072420069764613, ; 158: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0x61e8a6fc96e9ee05 => 6
	i64 7083547580668757502, ; 159: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 163
	i64 7220009545223068405, ; 160: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 36
	i64 7270811800166795866, ; 161: System.Linq => 0x64e71ccf51a90a5a => 146
	i64 7316205155833392065, ; 162: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 119
	i64 7348123982286201829, ; 163: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 85
	i64 7377312882064240630, ; 164: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 127
	i64 7488575175965059935, ; 165: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 198
	i64 7489048572193775167, ; 166: System.ObjectModel => 0x67ee71ff6b419e3f => 160
	i64 7496222613193209122, ; 167: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 84
	i64 7592577537120840276, ; 168: System.Diagnostics.Process => 0x695e410af5b2aa54 => 132
	i64 7654504624184590948, ; 169: System.Net.Http => 0x6a3a4366801b8264 => 149
	i64 7708790323521193081, ; 170: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 27
	i64 7714652370974252055, ; 171: System.Private.CoreLib => 0x6b0ff375198b9c17 => 204
	i64 7735176074855944702, ; 172: Microsoft.CSharp => 0x6b58dda848e391fe => 118
	i64 7735352534559001595, ; 173: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 115
	i64 7791074099216502080, ; 174: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 142
	i64 7836164640616011524, ; 175: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 90
	i64 8064050204834738623, ; 176: System.Collections.dll => 0x6fe942efa61731bf => 125
	i64 8083354569033831015, ; 177: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 100
	i64 8085230611270010360, ; 178: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 148
	i64 8087206902342787202, ; 179: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 131
	i64 8167236081217502503, ; 180: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 205
	i64 8185542183669246576, ; 181: System.Collections => 0x7198e33f4794aa70 => 125
	i64 8234598844743906698, ; 182: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 67
	i64 8246048515196606205, ; 183: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 79
	i64 8264926008854159966, ; 184: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 132
	i64 8368701292315763008, ; 185: System.Security.Cryptography => 0x7423997c6fd56140 => 185
	i64 8400357532724379117, ; 186: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 108
	i64 8410671156615598628, ; 187: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 166
	i64 8513291706828295435, ; 188: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 80
	i64 8518412311883997971, ; 189: System.Collections.Immutable => 0x76377add7c28e313 => 122
	i64 8563666267364444763, ; 190: System.Private.Uri => 0x76d841191140ca5b => 162
	i64 8614108721271900878, ; 191: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 31
	i64 8626175481042262068, ; 192: Java.Interop => 0x77b654e585b55834 => 205
	i64 8638972117149407195, ; 193: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 118
	i64 8639588376636138208, ; 194: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 107
	i64 8677882282824630478, ; 195: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 31
	i64 8725526185868997716, ; 196: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 131
	i64 8882398187484578781, ; 197: de/Microsoft.Data.SqlClient.resources.dll => 0x7b449e172e9783dd => 0
	i64 8941376889969657626, ; 198: System.Xml.XDocument => 0x7c1626e87187471a => 200
	i64 8954753533646919997, ; 199: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 173
	i64 8955323522379913726, ; 200: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 66
	i64 9045785047181495996, ; 201: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 41
	i64 9052662452269567435, ; 202: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 71
	i64 9138683372487561558, ; 203: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 181
	i64 9312692141327339315, ; 204: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 113
	i64 9324707631942237306, ; 205: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 89
	i64 9389258210823261255, ; 206: it/Microsoft.Data.SqlClient.resources.dll => 0x824d5898a88a4c47 => 3
	i64 9427266486299436557, ; 207: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 70
	i64 9465066883133582280, ; 208: MauiBlazor => 0x835aac2ea07dabc8 => 117
	i64 9513793942805897923, ; 209: zh-Hans\Microsoft.Data.SqlClient.resources => 0x8407c92f4b3562c3 => 8
	i64 9659729154652888475, ; 210: System.Text.RegularExpressions => 0x860e407c9991dd9b => 191
	i64 9667360217193089419, ; 211: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 133
	i64 9678050649315576968, ; 212: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 94
	i64 9702891218465930390, ; 213: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 123
	i64 9808709177481450983, ; 214: Mono.Android.dll => 0x881f890734e555e7 => 207
	i64 9819168441846169364, ; 215: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 71
	i64 9956195530459977388, ; 216: Microsoft.Maui => 0x8a2b8315b36616ac => 77
	i64 9991543690424095600, ; 217: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 16
	i64 10038780035334861115, ; 218: System.Net.Http.dll => 0x8b50e941206af13b => 149
	i64 10051358222726253779, ; 219: System.Private.Xml => 0x8b7d990c97ccccd3 => 164
	i64 10089571585547156312, ; 220: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 142
	i64 10092835686693276772, ; 221: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 75
	i64 10143853363526200146, ; 222: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 13
	i64 10229024438826829339, ; 223: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 97
	i64 10236703004850800690, ; 224: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 155
	i64 10245369515835430794, ; 225: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 166
	i64 10364469296367737616, ; 226: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 165
	i64 10406448008575299332, ; 227: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 116
	i64 10430153318873392755, ; 228: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 95
	i64 10447083246144586668, ; 229: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 51
	i64 10506226065143327199, ; 230: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 11
	i64 10546663366131771576, ; 231: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 173
	i64 10670374202010151210, ; 232: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 119
	i64 10734191584620811116, ; 233: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 59
	i64 10785150219063592792, ; 234: System.Net.Primitives => 0x95ac8cfb68830758 => 152
	i64 10889380495983713167, ; 235: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 52
	i64 10964653383833615866, ; 236: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 136
	i64 11002576679268595294, ; 237: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 63
	i64 11009005086950030778, ; 238: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 77
	i64 11038974641380222378, ; 239: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0x993250f3080365aa => 9
	i64 11051904132540108364, ; 240: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 58
	i64 11103970607964515343, ; 241: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 22
	i64 11162124722117608902, ; 242: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 112
	i64 11183417087873056340, ; 243: ko\Microsoft.Data.SqlClient.resources => 0x9b337a96d1b4fe54 => 5
	i64 11218356222449480316, ; 244: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 47
	i64 11220793807500858938, ; 245: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 25
	i64 11226290749488709958, ; 246: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 64
	i64 11340910727871153756, ; 247: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 96
	i64 11341245327015630248, ; 248: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 82
	i64 11347436699239206956, ; 249: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 201
	i64 11369118378396596751, ; 250: de\Microsoft.Data.SqlClient.resources => 0x9dc738edd1b1ba0f => 0
	i64 11448276831755070604, ; 251: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 134
	i64 11485890710487134646, ; 252: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 169
	i64 11517440453979132662, ; 253: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 68
	i64 11518296021396496455, ; 254: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 23
	i64 11529969570048099689, ; 255: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 112
	i64 11530571088791430846, ; 256: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 62
	i64 11597940890313164233, ; 257: netstandard => 0xa0f429ca8d1805c9 => 203
	i64 11705530742807338875, ; 258: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 19
	i64 12011556116648931059, ; 259: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 87
	i64 12040886584167504988, ; 260: System.Net.ServicePoint => 0xa719d28d8e121c5c => 155
	i64 12048689113179125827, ; 261: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 60
	i64 12058074296353848905, ; 262: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 61
	i64 12094367927612810875, ; 263: it\Microsoft.Data.SqlClient.resources => 0xa7d7d38d2c3d267b => 3
	i64 12102847907131387746, ; 264: System.Buffers => 0xa7f5f40c43256f62 => 120
	i64 12145679461940342714, ; 265: System.Text.Json => 0xa88e1f1ebcb62fba => 190
	i64 12198439281774268251, ; 266: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 72
	i64 12201331334810686224, ; 267: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 174
	i64 12269460666702402136, ; 268: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 122
	i64 12439275739440478309, ; 269: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 69
	i64 12451044538927396471, ; 270: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 99
	i64 12466513435562512481, ; 271: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 104
	i64 12475113361194491050, ; 272: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 44
	i64 12493213219680520345, ; 273: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 52
	i64 12517810545449516888, ; 274: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 135
	i64 12538491095302438457, ; 275: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 92
	i64 12550732019250633519, ; 276: System.IO.Compression => 0xae2d28465e8e1b2f => 141
	i64 12681088699309157496, ; 277: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 24
	i64 12699999919562409296, ; 278: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 133
	i64 12700543734426720211, ; 279: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 93
	i64 12708922737231849740, ; 280: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 188
	i64 12717050818822477433, ; 281: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 175
	i64 12823819093633476069, ; 282: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 37
	i64 12835242264250840079, ; 283: System.IO.Pipes => 0xb21ff0d5d6c0740f => 144
	i64 12843321153144804894, ; 284: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 65
	i64 12859557719246324186, ; 285: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 158
	i64 13003699287675270979, ; 286: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 50
	i64 13068258254871114833, ; 287: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 172
	i64 13221551921002590604, ; 288: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 11
	i64 13222659110913276082, ; 289: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 25
	i64 13343850469010654401, ; 290: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 206
	i64 13381594904270902445, ; 291: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 19
	i64 13431476299110033919, ; 292: System.Net.WebClient => 0xba663087f18829ff => 157
	i64 13463706743370286408, ; 293: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 161
	i64 13465488254036897740, ; 294: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 115
	i64 13467053111158216594, ; 295: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 39
	i64 13540124433173649601, ; 296: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 40
	i64 13545416393490209236, ; 297: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 23
	i64 13550417756503177631, ; 298: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 57
	i64 13572454107664307259, ; 299: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 109
	i64 13710614125866346983, ; 300: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 177
	i64 13717397318615465333, ; 301: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 126
	i64 13742054908850494594, ; 302: Azure.Identity => 0xbeb596218df25c82 => 46
	i64 13755568601956062840, ; 303: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 18
	i64 13814445057219246765, ; 304: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 21
	i64 13881769479078963060, ; 305: System.Console.dll => 0xc0a5f3cade5c6774 => 129
	i64 13959074834287824816, ; 306: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 99
	i64 14100563506285742564, ; 307: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 13
	i64 14124974489674258913, ; 308: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 92
	i64 14125464355221830302, ; 309: System.Threading.dll => 0xc407bafdbc707a9e => 196
	i64 14212104595480609394, ; 310: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 180
	i64 14254574811015963973, ; 311: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 188
	i64 14327709162229390963, ; 312: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 184
	i64 14461014870687870182, ; 313: System.Net.Requests.dll => 0xc8afd8683afdece6 => 153
	i64 14464374589798375073, ; 314: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 34
	i64 14522721392235705434, ; 315: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 15
	i64 14533141687369379279, ; 316: zh-Hant\Microsoft.Data.SqlClient.resources => 0xc9b0175d6212adcf => 9
	i64 14551742072151931844, ; 317: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 189
	i64 14561513370130550166, ; 318: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 183
	i64 14622043554576106986, ; 319: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 172
	i64 14648804764802849406, ; 320: Azure.Identity.dll => 0xcb4b0252261f9a7e => 46
	i64 14669215534098758659, ; 321: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 55
	i64 14705122255218365489, ; 322: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 26
	i64 14744092281598614090, ; 323: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 42
	i64 14832630590065248058, ; 324: System.Security.Claims => 0xcdd816ef5d6e873a => 178
	i64 14852515768018889994, ; 325: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 96
	i64 14892012299694389861, ; 326: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 43
	i64 14904040806490515477, ; 327: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 10
	i64 14912225920358050525, ; 328: System.Security.Principal.Windows => 0xcef2de7759506add => 186
	i64 14921072373058723558, ; 329: ko/Microsoft.Data.SqlClient.resources.dll => 0xcf124c44a00f5ee6 => 5
	i64 14935719434541007538, ; 330: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 187
	i64 14954917835170835695, ; 331: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 56
	i64 14984936317414011727, ; 332: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 158
	i64 14987728460634540364, ; 333: System.IO.Compression.dll => 0xcfff1ba06622494c => 141
	i64 15015154896917945444, ; 334: System.Net.Security.dll => 0xd0608bd33642dc64 => 154
	i64 15024878362326791334, ; 335: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 148
	i64 15076659072870671916, ; 336: System.ObjectModel.dll => 0xd13b0d8c1620662c => 160
	i64 15111608613780139878, ; 337: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 27
	i64 15115185479366240210, ; 338: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 140
	i64 15133485256822086103, ; 339: System.Linq.dll => 0xd204f0a9127dd9d7 => 146
	i64 15138356091203993725, ; 340: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 68
	i64 15227001540531775957, ; 341: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 54
	i64 15370334346939861994, ; 342: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 95
	i64 15383240894167415497, ; 343: System.Memory.Data => 0xd57c4016df1c7ac9 => 85
	i64 15391712275433856905, ; 344: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 56
	i64 15427448221306938193, ; 345: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 48
	i64 15440042012048828209, ; 346: pt-BR\Microsoft.Data.SqlClient.resources => 0xd6460c67b5472731 => 6
	i64 15475196252089753159, ; 347: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 83
	i64 15481710163200268842, ; 348: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 58
	i64 15527772828719725935, ; 349: System.Console => 0xd77dbb1e38cd3d6f => 129
	i64 15536481058354060254, ; 350: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 14
	i64 15541854775306130054, ; 351: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 184
	i64 15557562860424774966, ; 352: System.Net.Sockets => 0xd7e790fe7a6dc536 => 156
	i64 15582737692548360875, ; 353: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 103
	i64 15609085926864131306, ; 354: System.dll => 0xd89e9cf3334914ea => 202
	i64 15661133872274321916, ; 355: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 199
	i64 15664356999916475676, ; 356: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 14
	i64 15718684508147848364, ; 357: es/Microsoft.Data.SqlClient.resources.dll => 0xda23fc476c9694ac => 1
	i64 15743187114543869802, ; 358: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 22
	i64 15783653065526199428, ; 359: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 15
	i64 15847085070278954535, ; 360: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 192
	i64 15937190497610202713, ; 361: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 180
	i64 15963349826457351533, ; 362: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 193
	i64 16018552496348375205, ; 363: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 151
	i64 16154507427712707110, ; 364: System => 0xe03056ea4e39aa26 => 202
	i64 16219561732052121626, ; 365: System.Net.Security => 0xe1177575db7c781a => 154
	i64 16288847719894691167, ; 366: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 28
	i64 16321164108206115771, ; 367: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 63
	i64 16337011941688632206, ; 368: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 186
	i64 16454459195343277943, ; 369: System.Net.NetworkInformation => 0xe459fb756d988f77 => 151
	i64 16540916324946374984, ; 370: fr\Microsoft.Data.SqlClient.resources => 0xe58d23c28fe37148 => 2
	i64 16649148416072044166, ; 371: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 79
	i64 16677317093839702854, ; 372: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 108
	i64 16765015072123548030, ; 373: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 134
	i64 16856067890322379635, ; 374: System.Data.Common.dll => 0xe9ecc87060889373 => 130
	i64 16890310621557459193, ; 375: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 191
	i64 16942731696432749159, ; 376: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 35
	i64 16945858842201062480, ; 377: Azure.Core => 0xeb2bc8d57f4e7c50 => 45
	i64 16998075588627545693, ; 378: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 106
	i64 17006954551347072385, ; 379: System.ClientModel => 0xec04d70ec8414d81 => 81
	i64 17008137082415910100, ; 380: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 123
	i64 17031351772568316411, ; 381: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 105
	i64 17062143951396181894, ; 382: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 126
	i64 17079998892748052666, ; 383: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 47
	i64 17089008752050867324, ; 384: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 42
	i64 17118171214553292978, ; 385: System.Threading.Channels => 0xed8ff6060fc420b2 => 192
	i64 17137864900836977098, ; 386: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 73
	i64 17197986060146327831, ; 387: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 67
	i64 17202182880784296190, ; 388: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 182
	i64 17205988430934219272, ; 389: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 61
	i64 17230721278011714856, ; 390: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 163
	i64 17234219099804750107, ; 391: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 197
	i64 17260702271250283638, ; 392: System.Data.Common => 0xef8a5543bba6bc76 => 130
	i64 17333249706306540043, ; 393: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 136
	i64 17342750010158924305, ; 394: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 20
	i64 17371436720558481852, ; 395: System.Runtime.Caching => 0xf113bda8d710a1bc => 86
	i64 17438153253682247751, ; 396: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 35
	i64 17514990004910432069, ; 397: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 18
	i64 17523946658117960076, ; 398: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 87
	i64 17558788868712318792, ; 399: es\Microsoft.Data.SqlClient.resources => 0xf3ad597215ae4748 => 1
	i64 17623389608345532001, ; 400: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 30
	i64 17702523067201099846, ; 401: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 41
	i64 17704177640604968747, ; 402: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 104
	i64 17710060891934109755, ; 403: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 102
	i64 17712670374920797664, ; 404: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 169
	i64 17777860260071588075, ; 405: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 171
	i64 17790600151040787804, ; 406: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 70
	i64 17838668724098252521, ; 407: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 120
	i64 18025913125965088385, ; 408: System.Threading => 0xfa28e87b91334681 => 196
	i64 18099568558057551825, ; 409: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 29
	i64 18121036031235206392, ; 410: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 105
	i64 18146411883821974900, ; 411: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 139
	i64 18225059387460068507, ; 412: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 195
	i64 18245806341561545090, ; 413: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 121
	i64 18305135509493619199, ; 414: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 107
	i64 18324163916253801303 ; 415: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 24
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [416 x i32] [
	i32 65, ; 0
	i32 207, ; 1
	i32 78, ; 2
	i32 145, ; 3
	i32 93, ; 4
	i32 110, ; 5
	i32 17, ; 6
	i32 167, ; 7
	i32 66, ; 8
	i32 59, ; 9
	i32 194, ; 10
	i32 4, ; 11
	i32 128, ; 12
	i32 20, ; 13
	i32 98, ; 14
	i32 80, ; 15
	i32 167, ; 16
	i32 45, ; 17
	i32 114, ; 18
	i32 28, ; 19
	i32 7, ; 20
	i32 138, ; 21
	i32 106, ; 22
	i32 143, ; 23
	i32 152, ; 24
	i32 75, ; 25
	i32 206, ; 26
	i32 194, ; 27
	i32 26, ; 28
	i32 90, ; 29
	i32 103, ; 30
	i32 147, ; 31
	i32 162, ; 32
	i32 74, ; 33
	i32 89, ; 34
	i32 168, ; 35
	i32 16, ; 36
	i32 110, ; 37
	i32 51, ; 38
	i32 137, ; 39
	i32 38, ; 40
	i32 76, ; 41
	i32 38, ; 42
	i32 179, ; 43
	i32 102, ; 44
	i32 12, ; 45
	i32 30, ; 46
	i32 193, ; 47
	i32 137, ; 48
	i32 91, ; 49
	i32 98, ; 50
	i32 121, ; 51
	i32 50, ; 52
	i32 34, ; 53
	i32 72, ; 54
	i32 101, ; 55
	i32 189, ; 56
	i32 94, ; 57
	i32 176, ; 58
	i32 88, ; 59
	i32 86, ; 60
	i32 37, ; 61
	i32 73, ; 62
	i32 150, ; 63
	i32 55, ; 64
	i32 12, ; 65
	i32 74, ; 66
	i32 69, ; 67
	i32 177, ; 68
	i32 82, ; 69
	i32 17, ; 70
	i32 4, ; 71
	i32 114, ; 72
	i32 81, ; 73
	i32 175, ; 74
	i32 181, ; 75
	i32 100, ; 76
	i32 159, ; 77
	i32 171, ; 78
	i32 156, ; 79
	i32 116, ; 80
	i32 57, ; 81
	i32 84, ; 82
	i32 78, ; 83
	i32 53, ; 84
	i32 111, ; 85
	i32 204, ; 86
	i32 32, ; 87
	i32 176, ; 88
	i32 54, ; 89
	i32 199, ; 90
	i32 53, ; 91
	i32 203, ; 92
	i32 109, ; 93
	i32 49, ; 94
	i32 62, ; 95
	i32 60, ; 96
	i32 76, ; 97
	i32 182, ; 98
	i32 153, ; 99
	i32 147, ; 100
	i32 174, ; 101
	i32 164, ; 102
	i32 2, ; 103
	i32 43, ; 104
	i32 128, ; 105
	i32 195, ; 106
	i32 178, ; 107
	i32 145, ; 108
	i32 127, ; 109
	i32 83, ; 110
	i32 8, ; 111
	i32 40, ; 112
	i32 144, ; 113
	i32 143, ; 114
	i32 10, ; 115
	i32 201, ; 116
	i32 88, ; 117
	i32 111, ; 118
	i32 138, ; 119
	i32 150, ; 120
	i32 170, ; 121
	i32 124, ; 122
	i32 124, ; 123
	i32 48, ; 124
	i32 157, ; 125
	i32 170, ; 126
	i32 168, ; 127
	i32 36, ; 128
	i32 39, ; 129
	i32 140, ; 130
	i32 185, ; 131
	i32 179, ; 132
	i32 113, ; 133
	i32 139, ; 134
	i32 183, ; 135
	i32 33, ; 136
	i32 33, ; 137
	i32 190, ; 138
	i32 197, ; 139
	i32 161, ; 140
	i32 165, ; 141
	i32 44, ; 142
	i32 101, ; 143
	i32 21, ; 144
	i32 91, ; 145
	i32 117, ; 146
	i32 97, ; 147
	i32 64, ; 148
	i32 187, ; 149
	i32 7, ; 150
	i32 29, ; 151
	i32 32, ; 152
	i32 135, ; 153
	i32 200, ; 154
	i32 198, ; 155
	i32 159, ; 156
	i32 49, ; 157
	i32 6, ; 158
	i32 163, ; 159
	i32 36, ; 160
	i32 146, ; 161
	i32 119, ; 162
	i32 85, ; 163
	i32 127, ; 164
	i32 198, ; 165
	i32 160, ; 166
	i32 84, ; 167
	i32 132, ; 168
	i32 149, ; 169
	i32 27, ; 170
	i32 204, ; 171
	i32 118, ; 172
	i32 115, ; 173
	i32 142, ; 174
	i32 90, ; 175
	i32 125, ; 176
	i32 100, ; 177
	i32 148, ; 178
	i32 131, ; 179
	i32 205, ; 180
	i32 125, ; 181
	i32 67, ; 182
	i32 79, ; 183
	i32 132, ; 184
	i32 185, ; 185
	i32 108, ; 186
	i32 166, ; 187
	i32 80, ; 188
	i32 122, ; 189
	i32 162, ; 190
	i32 31, ; 191
	i32 205, ; 192
	i32 118, ; 193
	i32 107, ; 194
	i32 31, ; 195
	i32 131, ; 196
	i32 0, ; 197
	i32 200, ; 198
	i32 173, ; 199
	i32 66, ; 200
	i32 41, ; 201
	i32 71, ; 202
	i32 181, ; 203
	i32 113, ; 204
	i32 89, ; 205
	i32 3, ; 206
	i32 70, ; 207
	i32 117, ; 208
	i32 8, ; 209
	i32 191, ; 210
	i32 133, ; 211
	i32 94, ; 212
	i32 123, ; 213
	i32 207, ; 214
	i32 71, ; 215
	i32 77, ; 216
	i32 16, ; 217
	i32 149, ; 218
	i32 164, ; 219
	i32 142, ; 220
	i32 75, ; 221
	i32 13, ; 222
	i32 97, ; 223
	i32 155, ; 224
	i32 166, ; 225
	i32 165, ; 226
	i32 116, ; 227
	i32 95, ; 228
	i32 51, ; 229
	i32 11, ; 230
	i32 173, ; 231
	i32 119, ; 232
	i32 59, ; 233
	i32 152, ; 234
	i32 52, ; 235
	i32 136, ; 236
	i32 63, ; 237
	i32 77, ; 238
	i32 9, ; 239
	i32 58, ; 240
	i32 22, ; 241
	i32 112, ; 242
	i32 5, ; 243
	i32 47, ; 244
	i32 25, ; 245
	i32 64, ; 246
	i32 96, ; 247
	i32 82, ; 248
	i32 201, ; 249
	i32 0, ; 250
	i32 134, ; 251
	i32 169, ; 252
	i32 68, ; 253
	i32 23, ; 254
	i32 112, ; 255
	i32 62, ; 256
	i32 203, ; 257
	i32 19, ; 258
	i32 87, ; 259
	i32 155, ; 260
	i32 60, ; 261
	i32 61, ; 262
	i32 3, ; 263
	i32 120, ; 264
	i32 190, ; 265
	i32 72, ; 266
	i32 174, ; 267
	i32 122, ; 268
	i32 69, ; 269
	i32 99, ; 270
	i32 104, ; 271
	i32 44, ; 272
	i32 52, ; 273
	i32 135, ; 274
	i32 92, ; 275
	i32 141, ; 276
	i32 24, ; 277
	i32 133, ; 278
	i32 93, ; 279
	i32 188, ; 280
	i32 175, ; 281
	i32 37, ; 282
	i32 144, ; 283
	i32 65, ; 284
	i32 158, ; 285
	i32 50, ; 286
	i32 172, ; 287
	i32 11, ; 288
	i32 25, ; 289
	i32 206, ; 290
	i32 19, ; 291
	i32 157, ; 292
	i32 161, ; 293
	i32 115, ; 294
	i32 39, ; 295
	i32 40, ; 296
	i32 23, ; 297
	i32 57, ; 298
	i32 109, ; 299
	i32 177, ; 300
	i32 126, ; 301
	i32 46, ; 302
	i32 18, ; 303
	i32 21, ; 304
	i32 129, ; 305
	i32 99, ; 306
	i32 13, ; 307
	i32 92, ; 308
	i32 196, ; 309
	i32 180, ; 310
	i32 188, ; 311
	i32 184, ; 312
	i32 153, ; 313
	i32 34, ; 314
	i32 15, ; 315
	i32 9, ; 316
	i32 189, ; 317
	i32 183, ; 318
	i32 172, ; 319
	i32 46, ; 320
	i32 55, ; 321
	i32 26, ; 322
	i32 42, ; 323
	i32 178, ; 324
	i32 96, ; 325
	i32 43, ; 326
	i32 10, ; 327
	i32 186, ; 328
	i32 5, ; 329
	i32 187, ; 330
	i32 56, ; 331
	i32 158, ; 332
	i32 141, ; 333
	i32 154, ; 334
	i32 148, ; 335
	i32 160, ; 336
	i32 27, ; 337
	i32 140, ; 338
	i32 146, ; 339
	i32 68, ; 340
	i32 54, ; 341
	i32 95, ; 342
	i32 85, ; 343
	i32 56, ; 344
	i32 48, ; 345
	i32 6, ; 346
	i32 83, ; 347
	i32 58, ; 348
	i32 129, ; 349
	i32 14, ; 350
	i32 184, ; 351
	i32 156, ; 352
	i32 103, ; 353
	i32 202, ; 354
	i32 199, ; 355
	i32 14, ; 356
	i32 1, ; 357
	i32 22, ; 358
	i32 15, ; 359
	i32 192, ; 360
	i32 180, ; 361
	i32 193, ; 362
	i32 151, ; 363
	i32 202, ; 364
	i32 154, ; 365
	i32 28, ; 366
	i32 63, ; 367
	i32 186, ; 368
	i32 151, ; 369
	i32 2, ; 370
	i32 79, ; 371
	i32 108, ; 372
	i32 134, ; 373
	i32 130, ; 374
	i32 191, ; 375
	i32 35, ; 376
	i32 45, ; 377
	i32 106, ; 378
	i32 81, ; 379
	i32 123, ; 380
	i32 105, ; 381
	i32 126, ; 382
	i32 47, ; 383
	i32 42, ; 384
	i32 192, ; 385
	i32 73, ; 386
	i32 67, ; 387
	i32 182, ; 388
	i32 61, ; 389
	i32 163, ; 390
	i32 197, ; 391
	i32 130, ; 392
	i32 136, ; 393
	i32 20, ; 394
	i32 86, ; 395
	i32 35, ; 396
	i32 18, ; 397
	i32 87, ; 398
	i32 1, ; 399
	i32 30, ; 400
	i32 41, ; 401
	i32 104, ; 402
	i32 102, ; 403
	i32 169, ; 404
	i32 171, ; 405
	i32 70, ; 406
	i32 120, ; 407
	i32 196, ; 408
	i32 29, ; 409
	i32 105, ; 410
	i32 139, ; 411
	i32 195, ; 412
	i32 121, ; 413
	i32 107, ; 414
	i32 24 ; 415
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 45bb7f365f1587a7786d5bbbf0daec075d5aabea"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
