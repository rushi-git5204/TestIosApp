; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [208 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [416 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 151
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 150
	i32 42639949, ; 2: System.Threading.Thread => 0x28aa24d => 194
	i32 57725457, ; 3: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 3
	i32 57727992, ; 4: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 4
	i32 66541672, ; 5: System.Diagnostics.StackTrace => 0x3f75868 => 133
	i32 67008169, ; 6: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 43
	i32 68219467, ; 7: System.Security.Cryptography.Primitives => 0x410f24b => 183
	i32 72070932, ; 8: Microsoft.Maui.Graphics.dll => 0x44bb714 => 79
	i32 117431740, ; 9: System.Runtime.InteropServices => 0x6ffddbc => 169
	i32 122350210, ; 10: System.Threading.Channels.dll => 0x74aea82 => 192
	i32 139659294, ; 11: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 4
	i32 142721839, ; 12: System.Net.WebHeaderCollection => 0x881c32f => 158
	i32 149972175, ; 13: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 183
	i32 165246403, ; 14: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 93
	i32 166535111, ; 15: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 7
	i32 182336117, ; 16: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 111
	i32 195452805, ; 17: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 40
	i32 199333315, ; 18: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 41
	i32 205061960, ; 19: System.ComponentModel => 0xc38ff48 => 128
	i32 209399409, ; 20: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 91
	i32 230752869, ; 21: Microsoft.CSharp.dll => 0xdc10265 => 118
	i32 246610117, ; 22: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 166
	i32 254259026, ; 23: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 47
	i32 264223668, ; 24: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 8
	i32 280992041, ; 25: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 12
	i32 317674968, ; 26: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 40
	i32 318968648, ; 27: Xamarin.AndroidX.Activity.dll => 0x13031348 => 88
	i32 330147069, ; 28: Microsoft.SqlServer.Server => 0x13ada4fd => 80
	i32 336156722, ; 29: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 25
	i32 342366114, ; 30: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 100
	i32 356389973, ; 31: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 24
	i32 367780167, ; 32: System.IO.Pipes => 0x15ebe147 => 144
	i32 374914964, ; 33: System.Transactions.Local => 0x1658bf94 => 197
	i32 375677976, ; 34: System.Net.ServicePoint.dll => 0x16646418 => 155
	i32 379916513, ; 35: System.Threading.Thread.dll => 0x16a510e1 => 194
	i32 385762202, ; 36: System.Memory.dll => 0x16fe439a => 147
	i32 392610295, ; 37: System.Threading.ThreadPool.dll => 0x1766c1f7 => 195
	i32 395744057, ; 38: _Microsoft.Android.Resource.Designer => 0x17969339 => 44
	i32 435591531, ; 39: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 36
	i32 442565967, ; 40: System.Collections => 0x1a61054f => 125
	i32 450948140, ; 41: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 99
	i32 451504562, ; 42: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 184
	i32 459347974, ; 43: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 174
	i32 469710990, ; 44: System.dll => 0x1bff388e => 202
	i32 485463106, ; 45: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 68
	i32 498788369, ; 46: System.ObjectModel => 0x1dbae811 => 160
	i32 500358224, ; 47: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 23
	i32 503918385, ; 48: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 17
	i32 513247710, ; 49: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 65
	i32 539058512, ; 50: Microsoft.Extensions.Logging => 0x20216150 => 62
	i32 546455878, ; 51: System.Runtime.Serialization.Xml => 0x20924146 => 175
	i32 548916678, ; 52: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 51
	i32 571435654, ; 53: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 59
	i32 577335427, ; 54: System.Security.Cryptography.Cng => 0x22697083 => 180
	i32 592146354, ; 55: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 31
	i32 613668793, ; 56: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 179
	i32 627609679, ; 57: Xamarin.AndroidX.CustomView => 0x2568904f => 97
	i32 627931235, ; 58: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 29
	i32 662205335, ; 59: System.Text.Encodings.Web.dll => 0x27787397 => 189
	i32 672442732, ; 60: System.Collections.Concurrent => 0x2814a96c => 121
	i32 683518922, ; 61: System.Net.Security => 0x28bdabca => 154
	i32 688181140, ; 62: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 11
	i32 690569205, ; 63: System.Xml.Linq.dll => 0x29293ff5 => 198
	i32 706645707, ; 64: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 26
	i32 709557578, ; 65: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 14
	i32 722857257, ; 66: System.Runtime.Loader.dll => 0x2b15ed29 => 170
	i32 723796036, ; 67: System.ClientModel.dll => 0x2b244044 => 81
	i32 759454413, ; 68: System.Net.Requests => 0x2d445acd => 153
	i32 762598435, ; 69: System.IO.Pipes.dll => 0x2d745423 => 144
	i32 775507847, ; 70: System.IO.Compression => 0x2e394f87 => 141
	i32 777317022, ; 71: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 35
	i32 789151979, ; 72: Microsoft.Extensions.Options => 0x2f0980eb => 64
	i32 804008546, ; 73: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 50
	i32 804715423, ; 74: System.Data.Common => 0x2ff6fb9f => 130
	i32 823281589, ; 75: System.Private.Uri.dll => 0x311247b5 => 162
	i32 830298997, ; 76: System.IO.Compression.Brotli => 0x317d5b75 => 140
	i32 878954865, ; 77: System.Net.Http.Json => 0x3463c971 => 148
	i32 904024072, ; 78: System.ComponentModel.Primitives.dll => 0x35e25008 => 126
	i32 926902833, ; 79: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 38
	i32 967690846, ; 80: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 100
	i32 975236339, ; 81: System.Diagnostics.Tracing => 0x3a20ecf3 => 136
	i32 975874589, ; 82: System.Xml.XDocument => 0x3a2aaa1d => 200
	i32 986514023, ; 83: System.Private.DataContractSerialization.dll => 0x3acd0267 => 161
	i32 992768348, ; 84: System.Collections.dll => 0x3b2c715c => 125
	i32 999186168, ; 85: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 61
	i32 1012816738, ; 86: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 110
	i32 1019214401, ; 87: System.Drawing => 0x3cbffa41 => 138
	i32 1028951442, ; 88: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 56
	i32 1029334545, ; 89: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 13
	i32 1035644815, ; 90: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 89
	i32 1036536393, ; 91: System.Drawing.Primitives.dll => 0x3dc84a49 => 137
	i32 1044663988, ; 92: System.Linq.Expressions.dll => 0x3e444eb4 => 145
	i32 1048439329, ; 93: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 0
	i32 1052210849, ; 94: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 102
	i32 1062017875, ; 95: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 67
	i32 1082857460, ; 96: System.ComponentModel.TypeConverter => 0x408b17f4 => 127
	i32 1084122840, ; 97: Xamarin.Kotlin.StdLib => 0x409e66d8 => 115
	i32 1089913930, ; 98: System.Diagnostics.EventLog.dll => 0x40f6c44a => 83
	i32 1098259244, ; 99: System => 0x41761b2c => 202
	i32 1118262833, ; 100: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 26
	i32 1138436374, ; 101: Microsoft.Data.SqlClient.dll => 0x43db2916 => 52
	i32 1168523401, ; 102: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 32
	i32 1173126369, ; 103: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 57
	i32 1178241025, ; 104: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 107
	i32 1203215381, ; 105: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 30
	i32 1208641965, ; 106: System.Diagnostics.Process => 0x480a69ad => 132
	i32 1234928153, ; 107: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 28
	i32 1260983243, ; 108: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 12
	i32 1293217323, ; 109: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 98
	i32 1309188875, ; 110: System.Private.DataContractSerialization => 0x4e08a30b => 161
	i32 1324164729, ; 111: System.Linq => 0x4eed2679 => 146
	i32 1335329327, ; 112: System.Runtime.Serialization.Json.dll => 0x4f97822f => 173
	i32 1373134921, ; 113: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 42
	i32 1376866003, ; 114: Xamarin.AndroidX.SavedState => 0x52114ed3 => 110
	i32 1406073936, ; 115: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 94
	i32 1408764838, ; 116: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 172
	i32 1430672901, ; 117: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 10
	i32 1452070440, ; 118: System.Formats.Asn1.dll => 0x568cd628 => 139
	i32 1454105418, ; 119: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 58
	i32 1458022317, ; 120: System.Net.Security.dll => 0x56e7a7ad => 154
	i32 1460893475, ; 121: System.IdentityModel.Tokens.Jwt => 0x57137723 => 84
	i32 1461004990, ; 122: es\Microsoft.Maui.Controls.resources => 0x57152abe => 16
	i32 1461234159, ; 123: System.Collections.Immutable.dll => 0x5718a9ef => 122
	i32 1462112819, ; 124: System.IO.Compression.dll => 0x57261233 => 141
	i32 1469204771, ; 125: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 90
	i32 1470490898, ; 126: Microsoft.Extensions.Primitives => 0x57a5e912 => 65
	i32 1479771757, ; 127: System.Collections.Immutable => 0x5833866d => 122
	i32 1480492111, ; 128: System.IO.Compression.Brotli.dll => 0x583e844f => 140
	i32 1487239319, ; 129: Microsoft.Win32.Primitives => 0x58a57897 => 119
	i32 1493001747, ; 130: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 20
	i32 1498168481, ; 131: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 69
	i32 1514721132, ; 132: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 15
	i32 1521091094, ; 133: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 61
	i32 1536373174, ; 134: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 134
	i32 1543031311, ; 135: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 191
	i32 1546581739, ; 136: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 50
	i32 1551623176, ; 137: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 35
	i32 1565310744, ; 138: System.Runtime.Caching => 0x5d4cbf18 => 86
	i32 1573704789, ; 139: System.Runtime.Serialization.Json => 0x5dccd455 => 173
	i32 1582305585, ; 140: Azure.Identity => 0x5e501131 => 46
	i32 1596263029, ; 141: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 9
	i32 1604827217, ; 142: System.Net.WebClient => 0x5fa7b851 => 157
	i32 1622152042, ; 143: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 104
	i32 1624863272, ; 144: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 113
	i32 1628113371, ; 145: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 72
	i32 1636350590, ; 146: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 96
	i32 1639515021, ; 147: System.Net.Http.dll => 0x61b9038d => 149
	i32 1639986890, ; 148: System.Text.RegularExpressions => 0x61c036ca => 191
	i32 1654881142, ; 149: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 49
	i32 1657153582, ; 150: System.Runtime => 0x62c6282e => 176
	i32 1658251792, ; 151: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 114
	i32 1677501392, ; 152: System.Net.Primitives.dll => 0x63fca3d0 => 152
	i32 1679769178, ; 153: System.Security.Cryptography => 0x641f3e5a => 185
	i32 1696967625, ; 154: System.Security.Cryptography.Csp => 0x6525abc9 => 181
	i32 1729485958, ; 155: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 92
	i32 1736233607, ; 156: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 33
	i32 1743415430, ; 157: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 11
	i32 1744735666, ; 158: System.Transactions.Local.dll => 0x67fe8db2 => 197
	i32 1750313021, ; 159: Microsoft.Win32.Primitives.dll => 0x6853a83d => 119
	i32 1760259689, ; 160: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 48
	i32 1763938596, ; 161: System.Diagnostics.TraceSource.dll => 0x69239124 => 135
	i32 1766324549, ; 162: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 111
	i32 1770582343, ; 163: Microsoft.Extensions.Logging.dll => 0x6988f147 => 62
	i32 1780572499, ; 164: Mono.Android.Runtime.dll => 0x6a216153 => 206
	i32 1782862114, ; 165: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 27
	i32 1788241197, ; 166: Xamarin.AndroidX.Fragment => 0x6a96652d => 99
	i32 1793755602, ; 167: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 19
	i32 1794500907, ; 168: Microsoft.Identity.Client.dll => 0x6af5e92b => 66
	i32 1796167890, ; 169: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 51
	i32 1808609942, ; 170: Xamarin.AndroidX.Loader => 0x6bcd3296 => 104
	i32 1813058853, ; 171: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 115
	i32 1813201214, ; 172: Xamarin.Google.Android.Material => 0x6c13413e => 114
	i32 1818569960, ; 173: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 108
	i32 1824175904, ; 174: System.Text.Encoding.Extensions => 0x6cbab720 => 188
	i32 1824722060, ; 175: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 172
	i32 1828688058, ; 176: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 63
	i32 1842015223, ; 177: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 39
	i32 1853025655, ; 178: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 36
	i32 1858542181, ; 179: System.Linq.Expressions => 0x6ec71a65 => 145
	i32 1870277092, ; 180: System.Reflection.Primitives => 0x6f7a29e4 => 167
	i32 1871986876, ; 181: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 72
	i32 1875935024, ; 182: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 18
	i32 1910275211, ; 183: System.Collections.NonGeneric.dll => 0x71dc7c8b => 123
	i32 1939592360, ; 184: System.Private.Xml.Linq => 0x739bd4a8 => 163
	i32 1968388702, ; 185: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 53
	i32 1986222447, ; 186: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 73
	i32 2003115576, ; 187: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 15
	i32 2011961780, ; 188: System.Buffers.dll => 0x77ec19b4 => 120
	i32 2019465201, ; 189: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 102
	i32 2025202353, ; 190: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 10
	i32 2040764568, ; 191: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 67
	i32 2045470958, ; 192: System.Private.Xml => 0x79eb68ee => 164
	i32 2055257422, ; 193: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 101
	i32 2066184531, ; 194: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 14
	i32 2070888862, ; 195: System.Diagnostics.TraceSource => 0x7b6f419e => 135
	i32 2072397586, ; 196: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 60
	i32 2079903147, ; 197: System.Runtime.dll => 0x7bf8cdab => 176
	i32 2090596640, ; 198: System.Numerics.Vectors => 0x7c9bf920 => 159
	i32 2127167465, ; 199: System.Console => 0x7ec9ffe9 => 129
	i32 2142473426, ; 200: System.Collections.Specialized => 0x7fb38cd2 => 124
	i32 2143790110, ; 201: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 201
	i32 2159891885, ; 202: Microsoft.Maui => 0x80bd55ad => 77
	i32 2169148018, ; 203: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 22
	i32 2181898931, ; 204: Microsoft.Extensions.Options.dll => 0x820d22b3 => 64
	i32 2192057212, ; 205: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 63
	i32 2193016926, ; 206: System.ObjectModel.dll => 0x82b6c85e => 160
	i32 2201107256, ; 207: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 116
	i32 2201231467, ; 208: System.Net.Http => 0x8334206b => 149
	i32 2207618523, ; 209: it\Microsoft.Maui.Controls.resources => 0x839595db => 24
	i32 2228745826, ; 210: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 6
	i32 2253551641, ; 211: Microsoft.IdentityModel.Protocols => 0x86527819 => 71
	i32 2265110946, ; 212: System.Security.AccessControl.dll => 0x8702d9a2 => 177
	i32 2266799131, ; 213: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 54
	i32 2270573516, ; 214: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 18
	i32 2279755925, ; 215: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 109
	i32 2295906218, ; 216: System.Net.Sockets => 0x88d8bfaa => 156
	i32 2303942373, ; 217: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 28
	i32 2305521784, ; 218: System.Private.CoreLib.dll => 0x896b7878 => 204
	i32 2309278602, ; 219: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 5
	i32 2340441535, ; 220: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 168
	i32 2353062107, ; 221: System.Net.Primitives => 0x8c40e0db => 152
	i32 2368005991, ; 222: System.Xml.ReaderWriter.dll => 0x8d24e767 => 199
	i32 2369706906, ; 223: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 70
	i32 2371007202, ; 224: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 53
	i32 2378619854, ; 225: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 181
	i32 2383496789, ; 226: System.Security.Principal.Windows.dll => 0x8e114655 => 186
	i32 2395872292, ; 227: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 23
	i32 2411328690, ; 228: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 47
	i32 2427813419, ; 229: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 20
	i32 2435356389, ; 230: System.Console.dll => 0x912896e5 => 129
	i32 2442556106, ; 231: Microsoft.JSInterop.dll => 0x919672ca => 74
	i32 2458678730, ; 232: System.Net.Sockets.dll => 0x928c75ca => 156
	i32 2471841756, ; 233: netstandard.dll => 0x93554fdc => 203
	i32 2475788418, ; 234: Java.Interop.dll => 0x93918882 => 205
	i32 2480646305, ; 235: Microsoft.Maui.Controls => 0x93dba8a1 => 75
	i32 2484371297, ; 236: System.Net.ServicePoint => 0x94147f61 => 155
	i32 2509217888, ; 237: System.Diagnostics.EventLog => 0x958fa060 => 83
	i32 2538310050, ; 238: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 166
	i32 2550873716, ; 239: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 21
	i32 2562349572, ; 240: Microsoft.CSharp => 0x98ba5a04 => 118
	i32 2570120770, ; 241: System.Text.Encodings.Web => 0x9930ee42 => 189
	i32 2585220780, ; 242: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 188
	i32 2589602615, ; 243: System.Threading.ThreadPool => 0x9a5a3337 => 195
	i32 2592341985, ; 244: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 57
	i32 2593496499, ; 245: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 30
	i32 2605712449, ; 246: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 116
	i32 2617129537, ; 247: System.Private.Xml.dll => 0x9bfe3a41 => 164
	i32 2620871830, ; 248: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 96
	i32 2626831493, ; 249: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 25
	i32 2627185994, ; 250: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 134
	i32 2628210652, ; 251: System.Memory.Data => 0x9ca74fdc => 85
	i32 2640290731, ; 252: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 70
	i32 2640706905, ; 253: Azure.Core => 0x9d65fd59 => 45
	i32 2660759594, ; 254: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 87
	i32 2663698177, ; 255: System.Runtime.Loader => 0x9ec4cf01 => 170
	i32 2664396074, ; 256: System.Xml.XDocument.dll => 0x9ecf752a => 200
	i32 2665622720, ; 257: System.Drawing.Primitives => 0x9ee22cc0 => 137
	i32 2676780864, ; 258: System.Data.Common.dll => 0x9f8c6f40 => 130
	i32 2677098746, ; 259: Azure.Identity.dll => 0x9f9148fa => 46
	i32 2686887180, ; 260: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 175
	i32 2692077919, ; 261: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 49
	i32 2717744543, ; 262: System.Security.Claims => 0xa1fd7d9f => 178
	i32 2719963679, ; 263: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 180
	i32 2724373263, ; 264: System.Runtime.Numerics.dll => 0xa262a30f => 171
	i32 2732626843, ; 265: Xamarin.AndroidX.Activity => 0xa2e0939b => 88
	i32 2735172069, ; 266: System.Threading.Channels => 0xa30769e5 => 192
	i32 2737747696, ; 267: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 90
	i32 2740051746, ; 268: Microsoft.Identity.Client => 0xa351df22 => 66
	i32 2752995522, ; 269: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 31
	i32 2755098380, ; 270: Microsoft.SqlServer.Server.dll => 0xa437770c => 80
	i32 2758225723, ; 271: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 76
	i32 2764765095, ; 272: Microsoft.Maui.dll => 0xa4caf7a7 => 77
	i32 2765824710, ; 273: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 187
	i32 2778768386, ; 274: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 112
	i32 2785988530, ; 275: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 37
	i32 2801831435, ; 276: Microsoft.Maui.Graphics => 0xa7008e0b => 79
	i32 2804509662, ; 277: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 1
	i32 2806116107, ; 278: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 16
	i32 2810250172, ; 279: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 94
	i32 2831556043, ; 280: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 29
	i32 2834780998, ; 281: MauiBlazor => 0xa8f75346 => 117
	i32 2841937114, ; 282: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 3
	i32 2853208004, ; 283: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 112
	i32 2861189240, ; 284: Microsoft.Maui.Essentials => 0xaa8a4878 => 78
	i32 2867946736, ; 285: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 87
	i32 2876447248, ; 286: MauiBlazor.dll => 0xab731a10 => 117
	i32 2892341533, ; 287: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 48
	i32 2909740682, ; 288: System.Private.CoreLib => 0xad6f1e8a => 204
	i32 2911054922, ; 289: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 60
	i32 2916838712, ; 290: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 113
	i32 2919462931, ; 291: System.Numerics.Vectors.dll => 0xae037813 => 159
	i32 2940926066, ; 292: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 133
	i32 2944313911, ; 293: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 82
	i32 2959614098, ; 294: System.ComponentModel.dll => 0xb0682092 => 128
	i32 2968338931, ; 295: System.Security.Principal.Windows => 0xb0ed41f3 => 186
	i32 2972252294, ; 296: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 179
	i32 2978675010, ; 297: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 98
	i32 3012788804, ; 298: System.Configuration.ConfigurationManager => 0xb3938244 => 82
	i32 3023511517, ; 299: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 7
	i32 3033605958, ; 300: System.Memory.Data.dll => 0xb4d12746 => 85
	i32 3038032645, ; 301: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 44
	i32 3057625584, ; 302: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 105
	i32 3059408633, ; 303: Mono.Android.Runtime => 0xb65adef9 => 206
	i32 3059793426, ; 304: System.ComponentModel.Primitives => 0xb660be12 => 126
	i32 3077302341, ; 305: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 22
	i32 3084678329, ; 306: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 73
	i32 3090735792, ; 307: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 184
	i32 3099732863, ; 308: System.Security.Claims.dll => 0xb8c22b7f => 178
	i32 3103600923, ; 309: System.Formats.Asn1 => 0xb8fd311b => 139
	i32 3121463068, ; 310: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 142
	i32 3124832203, ; 311: System.Threading.Tasks.Extensions => 0xba4127cb => 193
	i32 3132293585, ; 312: System.Security.AccessControl => 0xbab301d1 => 177
	i32 3147165239, ; 313: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 136
	i32 3158628304, ; 314: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 9
	i32 3159123045, ; 315: System.Reflection.Primitives.dll => 0xbc4c6465 => 167
	i32 3178803400, ; 316: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 106
	i32 3220365878, ; 317: System.Threading => 0xbff2e236 => 196
	i32 3258312781, ; 318: Xamarin.AndroidX.CardView => 0xc235e84d => 92
	i32 3265893370, ; 319: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 193
	i32 3268887220, ; 320: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 2
	i32 3276600297, ; 321: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 6
	i32 3290767353, ; 322: System.Security.Cryptography.Encoding => 0xc4251ff9 => 182
	i32 3305363605, ; 323: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 17
	i32 3312457198, ; 324: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 69
	i32 3316684772, ; 325: System.Net.Requests.dll => 0xc5b097e4 => 153
	i32 3317135071, ; 326: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 97
	i32 3343947874, ; 327: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 2
	i32 3346324047, ; 328: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 107
	i32 3357674450, ; 329: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 34
	i32 3358260929, ; 330: System.Text.Json => 0xc82afec1 => 190
	i32 3362522851, ; 331: Xamarin.AndroidX.Core => 0xc86c06e3 => 95
	i32 3366347497, ; 332: Java.Interop => 0xc8a662e9 => 205
	i32 3374879918, ; 333: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 71
	i32 3374999561, ; 334: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 109
	i32 3381016424, ; 335: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 13
	i32 3406629867, ; 336: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 58
	i32 3428513518, ; 337: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 55
	i32 3430777524, ; 338: netstandard => 0xcc7d82b4 => 203
	i32 3463511458, ; 339: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 21
	i32 3471940407, ; 340: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 127
	i32 3476120550, ; 341: Mono.Android => 0xcf3163e6 => 207
	i32 3479583265, ; 342: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 34
	i32 3484440000, ; 343: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 33
	i32 3485117614, ; 344: System.Text.Json.dll => 0xcfbaacae => 190
	i32 3500000672, ; 345: Microsoft.JSInterop => 0xd09dc5a0 => 74
	i32 3509114376, ; 346: System.Xml.Linq => 0xd128d608 => 198
	i32 3545306353, ; 347: Microsoft.Data.SqlClient => 0xd35114f1 => 52
	i32 3555084973, ; 348: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 0
	i32 3558648585, ; 349: System.ClientModel => 0xd41cab09 => 81
	i32 3561949811, ; 350: Azure.Core.dll => 0xd44f0a73 => 45
	i32 3570554715, ; 351: System.IO.FileSystem.AccessControl => 0xd4d2575b => 142
	i32 3570608287, ; 352: System.Runtime.Caching.dll => 0xd4d3289f => 86
	i32 3580758918, ; 353: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 41
	i32 3608519521, ; 354: System.Linq.dll => 0xd715a361 => 146
	i32 3624195450, ; 355: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 168
	i32 3641597786, ; 356: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 101
	i32 3643446276, ; 357: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 38
	i32 3643854240, ; 358: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 106
	i32 3657292374, ; 359: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 54
	i32 3660523487, ; 360: System.Net.NetworkInformation => 0xda2f27df => 151
	i32 3672681054, ; 361: Mono.Android.dll => 0xdae8aa5e => 207
	i32 3682565725, ; 362: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 91
	i32 3697841164, ; 363: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 43
	i32 3700591436, ; 364: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 68
	i32 3724971120, ; 365: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 105
	i32 3732100267, ; 366: System.Net.NameResolution => 0xde7354ab => 150
	i32 3737834244, ; 367: System.Net.Http.Json.dll => 0xdecad304 => 148
	i32 3748608112, ; 368: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 131
	i32 3786282454, ; 369: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 93
	i32 3792276235, ; 370: System.Collections.NonGeneric => 0xe2098b0b => 123
	i32 3802395368, ; 371: System.Collections.Specialized.dll => 0xe2a3f2e8 => 124
	i32 3803019198, ; 372: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 8
	i32 3823082795, ; 373: System.Security.Cryptography.dll => 0xe3df9d2b => 185
	i32 3841636137, ; 374: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 56
	i32 3848348906, ; 375: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 1
	i32 3849253459, ; 376: System.Runtime.InteropServices.dll => 0xe56ef253 => 169
	i32 3875112723, ; 377: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 182
	i32 3885497537, ; 378: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 158
	i32 3889960447, ; 379: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 42
	i32 3896106733, ; 380: System.Collections.Concurrent.dll => 0xe839deed => 121
	i32 3896760992, ; 381: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 95
	i32 3928044579, ; 382: System.Xml.ReaderWriter => 0xea213423 => 199
	i32 3931092270, ; 383: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 108
	i32 3953953790, ; 384: System.Text.Encoding.CodePages => 0xebac8bfe => 187
	i32 3955647286, ; 385: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 89
	i32 3980434154, ; 386: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 37
	i32 3987592930, ; 387: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 19
	i32 4003436829, ; 388: System.Diagnostics.Process.dll => 0xee9f991d => 132
	i32 4025784931, ; 389: System.Memory => 0xeff49a63 => 147
	i32 4046471985, ; 390: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 76
	i32 4054681211, ; 391: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 165
	i32 4068434129, ; 392: System.Private.Xml.Linq.dll => 0xf27f60d1 => 163
	i32 4073602200, ; 393: System.Threading.dll => 0xf2ce3c98 => 196
	i32 4094352644, ; 394: Microsoft.Maui.Essentials.dll => 0xf40add04 => 78
	i32 4099507663, ; 395: System.Drawing.dll => 0xf45985cf => 138
	i32 4100113165, ; 396: System.Private.Uri => 0xf462c30d => 162
	i32 4102112229, ; 397: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 32
	i32 4125707920, ; 398: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 27
	i32 4126470640, ; 399: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 55
	i32 4127667938, ; 400: System.IO.FileSystem.Watcher => 0xf60736e2 => 143
	i32 4147896353, ; 401: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 165
	i32 4150914736, ; 402: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 39
	i32 4159265925, ; 403: System.Xml.XmlSerializer => 0xf7e95c85 => 201
	i32 4164802419, ; 404: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 143
	i32 4181436372, ; 405: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 174
	i32 4182413190, ; 406: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 103
	i32 4196529839, ; 407: System.Net.WebClient.dll => 0xfa21f6af => 157
	i32 4213026141, ; 408: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 131
	i32 4257443520, ; 409: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 5
	i32 4260525087, ; 410: System.Buffers => 0xfdf2741f => 120
	i32 4263231520, ; 411: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 84
	i32 4271975918, ; 412: Microsoft.Maui.Controls.dll => 0xfea12dee => 75
	i32 4274976490, ; 413: System.Runtime.Numerics => 0xfecef6ea => 171
	i32 4292120959, ; 414: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 103
	i32 4294648842 ; 415: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 59
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [416 x i32] [
	i32 151, ; 0
	i32 150, ; 1
	i32 194, ; 2
	i32 3, ; 3
	i32 4, ; 4
	i32 133, ; 5
	i32 43, ; 6
	i32 183, ; 7
	i32 79, ; 8
	i32 169, ; 9
	i32 192, ; 10
	i32 4, ; 11
	i32 158, ; 12
	i32 183, ; 13
	i32 93, ; 14
	i32 7, ; 15
	i32 111, ; 16
	i32 40, ; 17
	i32 41, ; 18
	i32 128, ; 19
	i32 91, ; 20
	i32 118, ; 21
	i32 166, ; 22
	i32 47, ; 23
	i32 8, ; 24
	i32 12, ; 25
	i32 40, ; 26
	i32 88, ; 27
	i32 80, ; 28
	i32 25, ; 29
	i32 100, ; 30
	i32 24, ; 31
	i32 144, ; 32
	i32 197, ; 33
	i32 155, ; 34
	i32 194, ; 35
	i32 147, ; 36
	i32 195, ; 37
	i32 44, ; 38
	i32 36, ; 39
	i32 125, ; 40
	i32 99, ; 41
	i32 184, ; 42
	i32 174, ; 43
	i32 202, ; 44
	i32 68, ; 45
	i32 160, ; 46
	i32 23, ; 47
	i32 17, ; 48
	i32 65, ; 49
	i32 62, ; 50
	i32 175, ; 51
	i32 51, ; 52
	i32 59, ; 53
	i32 180, ; 54
	i32 31, ; 55
	i32 179, ; 56
	i32 97, ; 57
	i32 29, ; 58
	i32 189, ; 59
	i32 121, ; 60
	i32 154, ; 61
	i32 11, ; 62
	i32 198, ; 63
	i32 26, ; 64
	i32 14, ; 65
	i32 170, ; 66
	i32 81, ; 67
	i32 153, ; 68
	i32 144, ; 69
	i32 141, ; 70
	i32 35, ; 71
	i32 64, ; 72
	i32 50, ; 73
	i32 130, ; 74
	i32 162, ; 75
	i32 140, ; 76
	i32 148, ; 77
	i32 126, ; 78
	i32 38, ; 79
	i32 100, ; 80
	i32 136, ; 81
	i32 200, ; 82
	i32 161, ; 83
	i32 125, ; 84
	i32 61, ; 85
	i32 110, ; 86
	i32 138, ; 87
	i32 56, ; 88
	i32 13, ; 89
	i32 89, ; 90
	i32 137, ; 91
	i32 145, ; 92
	i32 0, ; 93
	i32 102, ; 94
	i32 67, ; 95
	i32 127, ; 96
	i32 115, ; 97
	i32 83, ; 98
	i32 202, ; 99
	i32 26, ; 100
	i32 52, ; 101
	i32 32, ; 102
	i32 57, ; 103
	i32 107, ; 104
	i32 30, ; 105
	i32 132, ; 106
	i32 28, ; 107
	i32 12, ; 108
	i32 98, ; 109
	i32 161, ; 110
	i32 146, ; 111
	i32 173, ; 112
	i32 42, ; 113
	i32 110, ; 114
	i32 94, ; 115
	i32 172, ; 116
	i32 10, ; 117
	i32 139, ; 118
	i32 58, ; 119
	i32 154, ; 120
	i32 84, ; 121
	i32 16, ; 122
	i32 122, ; 123
	i32 141, ; 124
	i32 90, ; 125
	i32 65, ; 126
	i32 122, ; 127
	i32 140, ; 128
	i32 119, ; 129
	i32 20, ; 130
	i32 69, ; 131
	i32 15, ; 132
	i32 61, ; 133
	i32 134, ; 134
	i32 191, ; 135
	i32 50, ; 136
	i32 35, ; 137
	i32 86, ; 138
	i32 173, ; 139
	i32 46, ; 140
	i32 9, ; 141
	i32 157, ; 142
	i32 104, ; 143
	i32 113, ; 144
	i32 72, ; 145
	i32 96, ; 146
	i32 149, ; 147
	i32 191, ; 148
	i32 49, ; 149
	i32 176, ; 150
	i32 114, ; 151
	i32 152, ; 152
	i32 185, ; 153
	i32 181, ; 154
	i32 92, ; 155
	i32 33, ; 156
	i32 11, ; 157
	i32 197, ; 158
	i32 119, ; 159
	i32 48, ; 160
	i32 135, ; 161
	i32 111, ; 162
	i32 62, ; 163
	i32 206, ; 164
	i32 27, ; 165
	i32 99, ; 166
	i32 19, ; 167
	i32 66, ; 168
	i32 51, ; 169
	i32 104, ; 170
	i32 115, ; 171
	i32 114, ; 172
	i32 108, ; 173
	i32 188, ; 174
	i32 172, ; 175
	i32 63, ; 176
	i32 39, ; 177
	i32 36, ; 178
	i32 145, ; 179
	i32 167, ; 180
	i32 72, ; 181
	i32 18, ; 182
	i32 123, ; 183
	i32 163, ; 184
	i32 53, ; 185
	i32 73, ; 186
	i32 15, ; 187
	i32 120, ; 188
	i32 102, ; 189
	i32 10, ; 190
	i32 67, ; 191
	i32 164, ; 192
	i32 101, ; 193
	i32 14, ; 194
	i32 135, ; 195
	i32 60, ; 196
	i32 176, ; 197
	i32 159, ; 198
	i32 129, ; 199
	i32 124, ; 200
	i32 201, ; 201
	i32 77, ; 202
	i32 22, ; 203
	i32 64, ; 204
	i32 63, ; 205
	i32 160, ; 206
	i32 116, ; 207
	i32 149, ; 208
	i32 24, ; 209
	i32 6, ; 210
	i32 71, ; 211
	i32 177, ; 212
	i32 54, ; 213
	i32 18, ; 214
	i32 109, ; 215
	i32 156, ; 216
	i32 28, ; 217
	i32 204, ; 218
	i32 5, ; 219
	i32 168, ; 220
	i32 152, ; 221
	i32 199, ; 222
	i32 70, ; 223
	i32 53, ; 224
	i32 181, ; 225
	i32 186, ; 226
	i32 23, ; 227
	i32 47, ; 228
	i32 20, ; 229
	i32 129, ; 230
	i32 74, ; 231
	i32 156, ; 232
	i32 203, ; 233
	i32 205, ; 234
	i32 75, ; 235
	i32 155, ; 236
	i32 83, ; 237
	i32 166, ; 238
	i32 21, ; 239
	i32 118, ; 240
	i32 189, ; 241
	i32 188, ; 242
	i32 195, ; 243
	i32 57, ; 244
	i32 30, ; 245
	i32 116, ; 246
	i32 164, ; 247
	i32 96, ; 248
	i32 25, ; 249
	i32 134, ; 250
	i32 85, ; 251
	i32 70, ; 252
	i32 45, ; 253
	i32 87, ; 254
	i32 170, ; 255
	i32 200, ; 256
	i32 137, ; 257
	i32 130, ; 258
	i32 46, ; 259
	i32 175, ; 260
	i32 49, ; 261
	i32 178, ; 262
	i32 180, ; 263
	i32 171, ; 264
	i32 88, ; 265
	i32 192, ; 266
	i32 90, ; 267
	i32 66, ; 268
	i32 31, ; 269
	i32 80, ; 270
	i32 76, ; 271
	i32 77, ; 272
	i32 187, ; 273
	i32 112, ; 274
	i32 37, ; 275
	i32 79, ; 276
	i32 1, ; 277
	i32 16, ; 278
	i32 94, ; 279
	i32 29, ; 280
	i32 117, ; 281
	i32 3, ; 282
	i32 112, ; 283
	i32 78, ; 284
	i32 87, ; 285
	i32 117, ; 286
	i32 48, ; 287
	i32 204, ; 288
	i32 60, ; 289
	i32 113, ; 290
	i32 159, ; 291
	i32 133, ; 292
	i32 82, ; 293
	i32 128, ; 294
	i32 186, ; 295
	i32 179, ; 296
	i32 98, ; 297
	i32 82, ; 298
	i32 7, ; 299
	i32 85, ; 300
	i32 44, ; 301
	i32 105, ; 302
	i32 206, ; 303
	i32 126, ; 304
	i32 22, ; 305
	i32 73, ; 306
	i32 184, ; 307
	i32 178, ; 308
	i32 139, ; 309
	i32 142, ; 310
	i32 193, ; 311
	i32 177, ; 312
	i32 136, ; 313
	i32 9, ; 314
	i32 167, ; 315
	i32 106, ; 316
	i32 196, ; 317
	i32 92, ; 318
	i32 193, ; 319
	i32 2, ; 320
	i32 6, ; 321
	i32 182, ; 322
	i32 17, ; 323
	i32 69, ; 324
	i32 153, ; 325
	i32 97, ; 326
	i32 2, ; 327
	i32 107, ; 328
	i32 34, ; 329
	i32 190, ; 330
	i32 95, ; 331
	i32 205, ; 332
	i32 71, ; 333
	i32 109, ; 334
	i32 13, ; 335
	i32 58, ; 336
	i32 55, ; 337
	i32 203, ; 338
	i32 21, ; 339
	i32 127, ; 340
	i32 207, ; 341
	i32 34, ; 342
	i32 33, ; 343
	i32 190, ; 344
	i32 74, ; 345
	i32 198, ; 346
	i32 52, ; 347
	i32 0, ; 348
	i32 81, ; 349
	i32 45, ; 350
	i32 142, ; 351
	i32 86, ; 352
	i32 41, ; 353
	i32 146, ; 354
	i32 168, ; 355
	i32 101, ; 356
	i32 38, ; 357
	i32 106, ; 358
	i32 54, ; 359
	i32 151, ; 360
	i32 207, ; 361
	i32 91, ; 362
	i32 43, ; 363
	i32 68, ; 364
	i32 105, ; 365
	i32 150, ; 366
	i32 148, ; 367
	i32 131, ; 368
	i32 93, ; 369
	i32 123, ; 370
	i32 124, ; 371
	i32 8, ; 372
	i32 185, ; 373
	i32 56, ; 374
	i32 1, ; 375
	i32 169, ; 376
	i32 182, ; 377
	i32 158, ; 378
	i32 42, ; 379
	i32 121, ; 380
	i32 95, ; 381
	i32 199, ; 382
	i32 108, ; 383
	i32 187, ; 384
	i32 89, ; 385
	i32 37, ; 386
	i32 19, ; 387
	i32 132, ; 388
	i32 147, ; 389
	i32 76, ; 390
	i32 165, ; 391
	i32 163, ; 392
	i32 196, ; 393
	i32 78, ; 394
	i32 138, ; 395
	i32 162, ; 396
	i32 32, ; 397
	i32 27, ; 398
	i32 55, ; 399
	i32 143, ; 400
	i32 165, ; 401
	i32 39, ; 402
	i32 201, ; 403
	i32 143, ; 404
	i32 174, ; 405
	i32 103, ; 406
	i32 157, ; 407
	i32 131, ; 408
	i32 5, ; 409
	i32 120, ; 410
	i32 84, ; 411
	i32 75, ; 412
	i32 171, ; 413
	i32 103, ; 414
	i32 59 ; 415
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 45bb7f365f1587a7786d5bbbf0daec075d5aabea"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
